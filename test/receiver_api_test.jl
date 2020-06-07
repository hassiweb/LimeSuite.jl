using LimeSuite

# Parameters
const rx_channel = UInt64(0)  # Channel index

## A parameter used in LMS_SetLOFrequency()
const fc = Float64(800e6)  # Desired RF center frequency in Hz

## Parameters used in LMS_SetSampleRate()
const sampling_rate = Float64(30.72e6)  # sampling rate in Hz to set
const oversampling_ratio = UInt64(1)  # 1 for no oversampling
    # RF oversampling ratio
    # Valid oversampling values are 1, 2, 4, 8, 16, 32 or 0 (use device default oversampling value).

## Stream related parameters
const is_tx = false  # Indicates whether stream is TX (true) or RX (false)
const fifo_size = 1024*1024  # FIFO size (in samples) used by stream
const throughput_vs_latency = 1.0  # Optimize for max throughput
    # Parameter for controlling configuration bias toward low latency or high data throughput range [0,1.0]. 
    # 0 - lowest latency, usually results in lower throughput 1 - higher throughput, usually results in higher latency
const sample_data_format = LimeSuite.LMS_FMT_F32  # Data output format

## Parameters used in LMS_RecvStream()
const sample_count = Csize_t(5000)
const timeout_ms = UInt32(1000)


# Start 
## Obtain a list of LMS devices attached to the system
dev_list = Array{LimeSuite.lms_info_str_t}(undef,1)
num_dev = LimeSuite.LMS_GetDeviceList(dev_list)

if num_dev > 0
    println("Found $num_dev device(s):")
    for dev_idx = 1:num_dev
        println("  [$dev_idx]: ", String(collect(dev_list[dev_idx])))
    end
else
    println(stderr, "No devices found")
end
sleep(0.5)

## Opens device specified by the provided lms_info_str_t string.
## This function should be used to open a device based upon the results of LMS_GetDeviceList()
device = Ref{Ptr{LimeSuite.lms_device_t}}()
args = C_NULL
if LimeSuite.LMS_Open(device, dev_list[1], args) != 0
    println(stderr, "Failed to open the device")
end
sleep(0.5)

## Configure LMS chip with settings that make it ready for operation.
if LimeSuite.LMS_Init(device[]) != 0
    println(stderr, "Failed to initialize the device.  Going to shutdown the device...")
    LimeSuite.LMS_Close(device[])
end
sleep(0.5)

## Enable or disable specified RX channel.
if LimeSuite.LMS_EnableChannel(device[], LimeSuite.LMS_CH_RX, rx_channel, true) != 0
    println(stderr, "Failed to enable RX channel.  Going to shutdown the device...")
    LimeSuite.LMS_Close(device[])
end  
sleep(0.5)

## Set RF center frequency in Hz.
if LimeSuite.LMS_SetLOFrequency(device[], LimeSuite.LMS_CH_RX, rx_channel, fc) != 0
    println(stderr, "Failed to set Rx center frequency.  Going to shutdown the device...")
    LimeSuite.LMS_Close(device[])
end
sleep(0.5)

## Set sampling rate for all RX/TX channels. Sample rate is in complex samples (1 sample = I + Q). 
## The function sets sampling rate that is used for data exchange with the host. 
## It also allows to specify higher sampling rate to be used in RF by setting oversampling ratio. 
if LimeSuite.LMS_SetSampleRate(device[], sampling_rate, oversampling_ratio) != 0
    println(stderr, "Failed to set the sampling rate.  Going to shutdown the device...")
    LimeSuite.LMS_Close(device[])
end    
sleep(0.5)

## Create new stream based on parameters passed in configuration structure. 
## The structure is initialized with stream handle.
stream = LimeSuite.lms_stream_t()
stream.isTx = is_tx
stream.channel = rx_channel
stream.fifoSize = fifo_size
stream.throughputVsLatency = throughput_vs_latency
stream.dataFmt = sample_data_format
if LimeSuite.LMS_SetupStream(device[], Ref(stream)) != 0
    println(stderr, "Failed to set the sampling rate.  Going to shutdown the device...")
    LimeSuite.LMS_Close(device[])
end    
sleep(0.5)

## Start stream, and read samples from the FIFO of the specified stream. 
## Sample buffer must be big enough to hold requested number of samples.
meta = LimeSuite.lms_stream_meta_t(0, false, false)
buffer = zeros(LimeSuite.lms_data_format_list[sample_data_format+1], sample_count*2)
LimeSuite.LMS_StartStream(Ref(stream))

start_time = time()
while time() - start_time < 0.5  # loop for 0.5 second
    num_samples = LimeSuite.LMS_RecvStream(Ref(stream), buffer, sample_count, Ref(meta), timeout_ms)
    println("Received $num_samples samples")
end

## Stop stream
LimeSuite.LMS_StopStream(Ref(stream))

## Deallocate memory used by stream.
LimeSuite.LMS_DestroyStream(device[], Ref(stream))

## Close device
LimeSuite.LMS_Close(device[])

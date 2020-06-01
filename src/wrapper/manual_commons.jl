const libLimeSuite = "libLimeSuite"

## convenience constant for good return code
const LMS_SUCCESS = 0

const LMS_CH_TX = true  # <Convenience constants for TX selection
const LMS_CH_RX = false # <Convenience constants for RX selection

## Stream structure
@cenum lms_data_format_t::UInt32 begin
    LMS_FMT_F32=0     # <32-bit floating point
    LMS_FMT_I16      # <16-bit integers
    LMS_FMT_I12       # <12-bit integers stored in 16-bit variables    
end
struct lms_stream_t
    handle::Csize_t
    isTx::Bool
    channel::UInt32
    fifoSize::UInt32
    throughputVsLatency::float_type
    dataFmt::lms_data_format_t
end

## Enumeration of RF ports
const LMS_PATH_NONE = 0 # <No active path (RX or TX)
const LMS_PATH_LNAH = 1 # <RX LNA_H port
const LMS_PATH_LNAL = 2 # <RX LNA_L port
const LMS_PATH_LNAW = 3 # <RX LNA_W port
const LMS_PATH_TX1 = 1 # <TX port 1
const LMS_PATH_TX2 = 2 # <TX port 2

## Number of NCO frequency/phase offset values
const LMS_NCO_VAL_COUNT = 16
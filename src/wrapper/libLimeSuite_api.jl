# Julia wrapper for header: ADCUnits.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ADF4002.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ConnectionHandle.h
# Automatically generated using Clang.jl

# Julia wrapper for header: ConnectionRegistry.h
# Automatically generated using Clang.jl

# Julia wrapper for header: FPGA_common.h
# Automatically generated using Clang.jl

# Julia wrapper for header: IConnection.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LMS64CCommands.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LMS64CProtocol.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LMS7002M.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LMS7002M_RegistersMap.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LMS7002M_parameters.h
# Automatically generated using Clang.jl


function LMS7ParameterCompare(a::LMS7Parameter, b::LMS7Parameter)
    ccall((:LMS7ParameterCompare, libLimeSuite), Cint, (LMS7Parameter, LMS7Parameter), a, b)
end
# Julia wrapper for header: LMSBoards.h
# Automatically generated using Clang.jl

# Julia wrapper for header: LimeSuite.h
# Automatically generated using Clang.jl


function LMS_GetDeviceList(dev_list)
    ccall((:LMS_GetDeviceList, libLimeSuite), Cint, (Ptr{lms_info_str_t},), dev_list)
end

function LMS_Open(device, info::lms_info_str_t, args)
    ccall((:LMS_Open, libLimeSuite), Cint, (Ptr{Ptr{lms_device_t}}, lms_info_str_t, Ptr{Cvoid}), device, info, args)
end

function LMS_Close(device)
    ccall((:LMS_Close, libLimeSuite), Cint, (Ptr{lms_device_t},), device)
end

function LMS_Init(device)
    ccall((:LMS_Init, libLimeSuite), Cint, (Ptr{lms_device_t},), device)
end

function LMS_GetNumChannels(device, dir_tx::Bool)
    ccall((:LMS_GetNumChannels, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool), device, dir_tx)
end

function LMS_EnableChannel(device, dir_tx::Bool, chan::Csize_t, enabled::Bool)
    ccall((:LMS_EnableChannel, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Bool), device, dir_tx, chan, enabled)
end

function LMS_SetSampleRate(device, rate::float_type, oversample::Csize_t)
    ccall((:LMS_SetSampleRate, libLimeSuite), Cint, (Ptr{lms_device_t}, float_type, Csize_t), device, rate, oversample)
end

function LMS_GetSampleRate(device, dir_tx::Bool, chan::Csize_t, host_Hz, rf_Hz)
    ccall((:LMS_GetSampleRate, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}, Ptr{float_type}), device, dir_tx, chan, host_Hz, rf_Hz)
end

function LMS_GetSampleRateRange(device, dir_tx::Bool, range)
    ccall((:LMS_GetSampleRateRange, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Ptr{lms_range_t}), device, dir_tx, range)
end

function LMS_SetLOFrequency(device, dir_tx::Bool, chan::Csize_t, frequency::float_type)
    ccall((:LMS_SetLOFrequency, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, float_type), device, dir_tx, chan, frequency)
end

function LMS_GetLOFrequency(device, dir_tx::Bool, chan::Csize_t, frequency)
    ccall((:LMS_GetLOFrequency, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}), device, dir_tx, chan, frequency)
end

function LMS_GetLOFrequencyRange(device, dir_tx::Bool, range)
    ccall((:LMS_GetLOFrequencyRange, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Ptr{lms_range_t}), device, dir_tx, range)
end

function LMS_GetAntennaList(dev, dir_tx::Bool, chan::Csize_t, list)
    ccall((:LMS_GetAntennaList, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{lms_name_t}), dev, dir_tx, chan, list)
end

function LMS_SetAntenna(dev, dir_tx::Bool, chan::Csize_t, index::Csize_t)
    ccall((:LMS_SetAntenna, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Csize_t), dev, dir_tx, chan, index)
end

function LMS_GetAntenna(dev, dir_tx::Bool, chan::Csize_t)
    ccall((:LMS_GetAntenna, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t), dev, dir_tx, chan)
end

function LMS_GetAntennaBW(dev, dir_tx::Bool, chan::Csize_t, index::Csize_t, range)
    ccall((:LMS_GetAntennaBW, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Csize_t, Ptr{lms_range_t}), dev, dir_tx, chan, index, range)
end

function LMS_SetNormalizedGain(device, dir_tx::Bool, chan::Csize_t, gain::float_type)
    ccall((:LMS_SetNormalizedGain, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, float_type), device, dir_tx, chan, gain)
end

function LMS_SetGaindB(device, dir_tx::Bool, chan::Csize_t, gain::UInt32)
    ccall((:LMS_SetGaindB, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, UInt32), device, dir_tx, chan, gain)
end

function LMS_GetNormalizedGain(device, dir_tx::Bool, chan::Csize_t, gain)
    ccall((:LMS_GetNormalizedGain, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}), device, dir_tx, chan, gain)
end

function LMS_GetGaindB(device, dir_tx::Bool, chan::Csize_t, gain)
    ccall((:LMS_GetGaindB, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{UInt32}), device, dir_tx, chan, gain)
end

function LMS_SetLPFBW(device, dir_tx::Bool, chan::Csize_t, bandwidth::float_type)
    ccall((:LMS_SetLPFBW, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, float_type), device, dir_tx, chan, bandwidth)
end

function LMS_GetLPFBW(device, dir_tx::Bool, chan::Csize_t, bandwidth)
    ccall((:LMS_GetLPFBW, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}), device, dir_tx, chan, bandwidth)
end

function LMS_GetLPFBWRange(device, dir_tx::Bool, range)
    ccall((:LMS_GetLPFBWRange, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Ptr{lms_range_t}), device, dir_tx, range)
end

function LMS_SetLPF(device, dir_tx::Bool, chan::Csize_t, enable::Bool)
    ccall((:LMS_SetLPF, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Bool), device, dir_tx, chan, enable)
end

function LMS_SetGFIRLPF(device, dir_tx::Bool, chan::Csize_t, enabled::Bool, bandwidth::float_type)
    ccall((:LMS_SetGFIRLPF, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Bool, float_type), device, dir_tx, chan, enabled, bandwidth)
end

function LMS_Calibrate(device, dir_tx::Bool, chan::Csize_t, bw::Cdouble, flags::UInt32)
    ccall((:LMS_Calibrate, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Cdouble, UInt32), device, dir_tx, chan, bw, flags)
end

function LMS_LoadConfig(device, filename)
    ccall((:LMS_LoadConfig, libLimeSuite), Cint, (Ptr{lms_device_t}, Cstring), device, filename)
end

function LMS_SaveConfig(device, filename)
    ccall((:LMS_SaveConfig, libLimeSuite), Cint, (Ptr{lms_device_t}, Cstring), device, filename)
end

function LMS_SetTestSignal(device, dir_tx::Bool, chan::Csize_t, sig::lms_testsig_t, dc_i::Int16, dc_q::Int16)
    ccall((:LMS_SetTestSignal, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, lms_testsig_t, Int16, Int16), device, dir_tx, chan, sig, dc_i, dc_q)
end

function LMS_GetTestSignal(device, dir_tx::Bool, chan::Csize_t, sig)
    ccall((:LMS_GetTestSignal, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{lms_testsig_t}), device, dir_tx, chan, sig)
end

function LMS_GetChipTemperature(dev, ind::Csize_t, temp)
    ccall((:LMS_GetChipTemperature, libLimeSuite), Cint, (Ptr{lms_device_t}, Csize_t, Ptr{float_type}), dev, ind, temp)
end

function LMS_SetSampleRateDir(device, dir_tx::Bool, rate::float_type, oversample::Csize_t)
    ccall((:LMS_SetSampleRateDir, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, float_type, Csize_t), device, dir_tx, rate, oversample)
end

function LMS_SetNCOFrequency(device, dir_tx::Bool, chan::Csize_t, freq, pho::float_type)
    ccall((:LMS_SetNCOFrequency, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}, float_type), device, dir_tx, chan, freq, pho)
end

function LMS_GetNCOFrequency(device, dir_tx::Bool, chan::Csize_t, freq, pho)
    ccall((:LMS_GetNCOFrequency, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}, Ptr{float_type}), device, dir_tx, chan, freq, pho)
end

function LMS_SetNCOPhase(device, dir_tx::Bool, chan::Csize_t, phases, fcw::float_type)
    ccall((:LMS_SetNCOPhase, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}, float_type), device, dir_tx, chan, phases, fcw)
end

function LMS_GetNCOPhase(device, dir_tx::Bool, chan::Csize_t, phases, fcw)
    ccall((:LMS_GetNCOPhase, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Ptr{float_type}, Ptr{float_type}), device, dir_tx, chan, phases, fcw)
end

function LMS_SetNCOIndex(device, dir_tx::Bool, chan::Csize_t, index::Cint, downconv::Bool)
    ccall((:LMS_SetNCOIndex, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, Cint, Bool), device, dir_tx, chan, index, downconv)
end

function LMS_GetNCOIndex(device, dir_tx::Bool, chan::Csize_t)
    ccall((:LMS_GetNCOIndex, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t), device, dir_tx, chan)
end

function LMS_SetGFIRCoeff(device, dir_tx::Bool, chan::Csize_t, filt::lms_gfir_t, coef, count::Csize_t)
    ccall((:LMS_SetGFIRCoeff, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, lms_gfir_t, Ptr{float_type}, Csize_t), device, dir_tx, chan, filt, coef, count)
end

function LMS_GetGFIRCoeff(device, dir_tx::Bool, chan::Csize_t, filt::lms_gfir_t, coef)
    ccall((:LMS_GetGFIRCoeff, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, lms_gfir_t, Ptr{float_type}), device, dir_tx, chan, filt, coef)
end

function LMS_SetGFIR(device, dir_tx::Bool, chan::Csize_t, filt::lms_gfir_t, enabled::Bool)
    ccall((:LMS_SetGFIR, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool, Csize_t, lms_gfir_t, Bool), device, dir_tx, chan, filt, enabled)
end

function LMS_EnableCache(dev, enable::Bool)
    ccall((:LMS_EnableCache, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool), dev, enable)
end

function LMS_Reset(device)
    ccall((:LMS_Reset, libLimeSuite), Cint, (Ptr{lms_device_t},), device)
end

function LMS_ReadLMSReg(device, address::UInt32, val)
    ccall((:LMS_ReadLMSReg, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt32, Ptr{UInt16}), device, address, val)
end

function LMS_WriteLMSReg(device, address::UInt32, val::UInt16)
    ccall((:LMS_WriteLMSReg, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt32, UInt16), device, address, val)
end

function LMS_ReadParam(device, param::LMS7Parameter, val)
    ccall((:LMS_ReadParam, libLimeSuite), Cint, (Ptr{lms_device_t}, LMS7Parameter, Ptr{UInt16}), device, param, val)
end

function LMS_WriteParam(device, param::LMS7Parameter, val::UInt16)
    ccall((:LMS_WriteParam, libLimeSuite), Cint, (Ptr{lms_device_t}, LMS7Parameter, UInt16), device, param, val)
end

function LMS_ReadFPGAReg(device, address::UInt32, val)
    ccall((:LMS_ReadFPGAReg, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt32, Ptr{UInt16}), device, address, val)
end

function LMS_WriteFPGAReg(device, address::UInt32, val::UInt16)
    ccall((:LMS_WriteFPGAReg, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt32, UInt16), device, address, val)
end

function LMS_ReadCustomBoardParam(device, id::UInt8, val, units::lms_name_t)
    ccall((:LMS_ReadCustomBoardParam, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt8, Ptr{float_type}, lms_name_t), device, id, val, units)
end

function LMS_WriteCustomBoardParam(device, id::UInt8, val::float_type, units::lms_name_t)
    ccall((:LMS_WriteCustomBoardParam, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt8, float_type, lms_name_t), device, id, val, units)
end

function LMS_GetClockFreq(dev, clk_id::Csize_t, freq)
    ccall((:LMS_GetClockFreq, libLimeSuite), Cint, (Ptr{lms_device_t}, Csize_t, Ptr{float_type}), dev, clk_id, freq)
end

function LMS_SetClockFreq(dev, clk_id::Csize_t, freq::float_type)
    ccall((:LMS_SetClockFreq, libLimeSuite), Cint, (Ptr{lms_device_t}, Csize_t, float_type), dev, clk_id, freq)
end

function LMS_VCTCXOWrite(dev, val::UInt16)
    ccall((:LMS_VCTCXOWrite, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt16), dev, val)
end

function LMS_VCTCXORead(dev, val)
    ccall((:LMS_VCTCXORead, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{UInt16}), dev, val)
end

function LMS_Synchronize(dev, toChip::Bool)
    ccall((:LMS_Synchronize, libLimeSuite), Cint, (Ptr{lms_device_t}, Bool), dev, toChip)
end

function LMS_GPIORead(dev, buffer, len::Csize_t)
    ccall((:LMS_GPIORead, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{UInt8}, Csize_t), dev, buffer, len)
end

function LMS_GPIOWrite(dev, buffer, len::Csize_t)
    ccall((:LMS_GPIOWrite, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{UInt8}, Csize_t), dev, buffer, len)
end

function LMS_GPIODirRead(dev, buffer, len::Csize_t)
    ccall((:LMS_GPIODirRead, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{UInt8}, Csize_t), dev, buffer, len)
end

function LMS_GPIODirWrite(dev, buffer, len::Csize_t)
    ccall((:LMS_GPIODirWrite, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{UInt8}, Csize_t), dev, buffer, len)
end

function LMS_SetupStream(device, stream)
    ccall((:LMS_SetupStream, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{lms_stream_t}), device, stream)
end

function LMS_DestroyStream(dev, stream)
    ccall((:LMS_DestroyStream, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{lms_stream_t}), dev, stream)
end

function LMS_StartStream(stream)
    ccall((:LMS_StartStream, libLimeSuite), Cint, (Ptr{lms_stream_t},), stream)
end

function LMS_StopStream(stream)
    ccall((:LMS_StopStream, libLimeSuite), Cint, (Ptr{lms_stream_t},), stream)
end

function LMS_RecvStream(stream, samples, sample_count::Csize_t, meta, timeout_ms::UInt32)
    ccall((:LMS_RecvStream, libLimeSuite), Cint, (Ptr{lms_stream_t}, Ptr{Cvoid}, Csize_t, Ptr{lms_stream_meta_t}, UInt32), stream, samples, sample_count, meta, timeout_ms)
end

function LMS_GetStreamStatus(stream, status)
    ccall((:LMS_GetStreamStatus, libLimeSuite), Cint, (Ptr{lms_stream_t}, Ptr{lms_stream_status_t}), stream, status)
end

function LMS_SendStream(stream, samples, sample_count::Csize_t, meta, timeout_ms::UInt32)
    ccall((:LMS_SendStream, libLimeSuite), Cint, (Ptr{lms_stream_t}, Ptr{Cvoid}, Csize_t, Ptr{lms_stream_meta_t}, UInt32), stream, samples, sample_count, meta, timeout_ms)
end

function LMS_UploadWFM(device, samples, chCount::UInt8, sample_count::Csize_t, format::Cint)
    ccall((:LMS_UploadWFM, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{Ptr{Cvoid}}, UInt8, Csize_t, Cint), device, samples, chCount, sample_count, format)
end

function LMS_EnableTxWFM(device, chan::UInt32, active::Bool)
    ccall((:LMS_EnableTxWFM, libLimeSuite), Cint, (Ptr{lms_device_t}, UInt32, Bool), device, chan, active)
end

function LMS_GetProgramModes(device, list)
    ccall((:LMS_GetProgramModes, libLimeSuite), Cint, (Ptr{lms_device_t}, Ptr{lms_name_t}), device, list)
end

function LMS_Program(device, data, size::Csize_t, mode::lms_name_t, callback::lms_prog_callback_t)
    ccall((:LMS_Program, libLimeSuite), Cint, (Ptr{lms_device_t}, Cstring, Csize_t, lms_name_t, lms_prog_callback_t), device, data, size, mode, callback)
end

function LMS_GetDeviceInfo(device)
    ccall((:LMS_GetDeviceInfo, libLimeSuite), Ptr{lms_dev_info_t}, (Ptr{lms_device_t},), device)
end

function LMS_GetLibraryVersion()
    ccall((:LMS_GetLibraryVersion, libLimeSuite), Cstring, ())
end

function LMS_GetLastErrorMessage()
    ccall((:LMS_GetLastErrorMessage, libLimeSuite), Cstring, ())
end

function LMS_RegisterLogHandler(handler::LMS_LogHandler)
    ccall((:LMS_RegisterLogHandler, libLimeSuite), Cvoid, (LMS_LogHandler,), handler)
end
# Julia wrapper for header: LimeSuiteConfig.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Logger.h
# Automatically generated using Clang.jl

# Julia wrapper for header: MCU_BD.h
# Automatically generated using Clang.jl

# Julia wrapper for header: MCU_File.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Si5351C.h
# Automatically generated using Clang.jl

# Julia wrapper for header: Streamer.h
# Automatically generated using Clang.jl

# Julia wrapper for header: SystemResources.h
# Automatically generated using Clang.jl

# Julia wrapper for header: VersionInfo.h
# Automatically generated using Clang.jl

# Julia wrapper for header: dataTypes.h
# Automatically generated using Clang.jl

# Julia wrapper for header: fifo.h
# Automatically generated using Clang.jl

# Julia wrapper for header: limeRFE.h
# Automatically generated using Clang.jl


function RFE_Open(serialport, dev)
    ccall((:RFE_Open, libLimeSuite), Ptr{rfe_dev_t}, (Cstring, Ptr{lms_device_t}), serialport, dev)
end

function RFE_Close(rfe)
    ccall((:RFE_Close, libLimeSuite), Cvoid, (Ptr{rfe_dev_t},), rfe)
end

function RFE_GetInfo(rfe, cinfo)
    ccall((:RFE_GetInfo, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Ptr{Cuchar}), rfe, cinfo)
end

function RFE_LoadConfig(rfe, filename)
    ccall((:RFE_LoadConfig, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cstring), rfe, filename)
end

function RFE_Reset(rfe)
    ccall((:RFE_Reset, libLimeSuite), Cint, (Ptr{rfe_dev_t},), rfe)
end

function RFE_Configure(rfe, channelIDRX::UInt8, channelIDTX::UInt8, portRX::UInt8, portTX::UInt8, mode::UInt8, notch::UInt8, attenuation::UInt8, enableSWR::UInt8, sourceSWR::UInt8)
    ccall((:RFE_Configure, libLimeSuite), Cint, (Ptr{rfe_dev_t}, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), rfe, channelIDRX, channelIDTX, portRX, portTX, mode, notch, attenuation, enableSWR, sourceSWR)
end

function RFE_ConfigureState(rfe, state::rfe_boardState)
    ccall((:RFE_ConfigureState, libLimeSuite), Cint, (Ptr{rfe_dev_t}, rfe_boardState), rfe, state)
end

function RFE_GetState(rfe, state)
    ccall((:RFE_GetState, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Ptr{rfe_boardState}), rfe, state)
end

function RFE_Mode(rfe, mode::Cint)
    ccall((:RFE_Mode, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint), rfe, mode)
end

function RFE_ReadADC(rfe, adcID::Cint, value)
    ccall((:RFE_ReadADC, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Ptr{Cint}), rfe, adcID, value)
end

function RFE_ConfGPIO(rfe, gpioNum::Cint, direction::Cint)
    ccall((:RFE_ConfGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, gpioNum, direction)
end

function RFE_SetGPIO(rfe, gpioNum::Cint, val::Cint)
    ccall((:RFE_SetGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, gpioNum, val)
end

function RFE_GetGPIO(rfe, gpioNum::Cint, val)
    ccall((:RFE_GetGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Ptr{Cint}), rfe, gpioNum, val)
end

function RFE_AssignSDRChannels(rfe, rxChan::Cint, txChan::Cint)
    ccall((:RFE_AssignSDRChannels, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, rxChan, txChan)
end

function RFE_Fan(rfe, enable::Cint)
    ccall((:RFE_Fan, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint), rfe, enable)
end
# Julia wrapper for header: lms7_device.h
# Automatically generated using Clang.jl


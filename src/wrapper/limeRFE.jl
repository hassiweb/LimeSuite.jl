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

function RFE_Configure(rfe, channelIDRX, channelIDTX, portRX, portTX, mode, notch, attenuation, enableSWR, sourceSWR)
    ccall((:RFE_Configure, libLimeSuite), Cint, (Ptr{rfe_dev_t}, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8), rfe, channelIDRX, channelIDTX, portRX, portTX, mode, notch, attenuation, enableSWR, sourceSWR)
end

function RFE_ConfigureState(rfe, state)
    ccall((:RFE_ConfigureState, libLimeSuite), Cint, (Ptr{rfe_dev_t}, rfe_boardState), rfe, state)
end

function RFE_GetState(rfe, state)
    ccall((:RFE_GetState, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Ptr{rfe_boardState}), rfe, state)
end

function RFE_Mode(rfe, mode)
    ccall((:RFE_Mode, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint), rfe, mode)
end

function RFE_ReadADC(rfe, adcID, value)
    ccall((:RFE_ReadADC, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Ptr{Cint}), rfe, adcID, value)
end

function RFE_ConfGPIO(rfe, gpioNum, direction)
    ccall((:RFE_ConfGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, gpioNum, direction)
end

function RFE_SetGPIO(rfe, gpioNum, val)
    ccall((:RFE_SetGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, gpioNum, val)
end

function RFE_GetGPIO(rfe, gpioNum, val)
    ccall((:RFE_GetGPIO, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Ptr{Cint}), rfe, gpioNum, val)
end

function RFE_AssignSDRChannels(rfe, rxChan, txChan)
    ccall((:RFE_AssignSDRChannels, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint, Cint), rfe, rxChan, txChan)
end

function RFE_Fan(rfe, enable)
    ccall((:RFE_Fan, libLimeSuite), Cint, (Ptr{rfe_dev_t}, Cint), rfe, enable)
end

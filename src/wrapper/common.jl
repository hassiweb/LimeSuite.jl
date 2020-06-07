# Automatically generated using Clang.jl


mutable struct LMS7Parameter
    address::UInt16
    msb::UInt8
    lsb::UInt8
    defaultValue::UInt16
    name::Cstring
    tooltip::Cstring
end

# Skipping MacroDefinition: LMS7param ( id ) LMS7_ ## id
# Skipping MacroDefinition: API_EXPORT __attribute__ ( ( visibility ( "default" ) ) )

const BOARD_PARAM_DAC = 0
const BOARD_PARAM_TEMP = 1
const LMS_CLOCK_REF = 0x0000
const LMS_CLOCK_SXR = 0x0001
const LMS_CLOCK_SXT = 0x0002
const LMS_CLOCK_CGEN = 0x0003
const LMS_CLOCK_RXTSP = 0x0004
const LMS_CLOCK_TXTSP = 0x0005
const LMS_CLOCK_EXTREF = 0x0006
const LMS_ALIGN_CH_PHASE = 1 << 16
const LMS_LOG_CRITICAL = 0
const LMS_LOG_ERROR = 1
const LMS_LOG_WARNING = 2
const LMS_LOG_INFO = 3
const LMS_LOG_DEBUG = 4
const float_type = Cdouble
const lms_device_t = Cvoid
const lms_info_str_t = NTuple{256, UInt8}
const lms_name_t = NTuple{16, UInt8}

mutable struct lms_range_t
    min::float_type
    max::float_type
    step::float_type
end

@cenum lms_testsig_t::UInt32 begin
    LMS_TESTSIG_NONE = 0
    LMS_TESTSIG_NCODIV8 = 1
    LMS_TESTSIG_NCODIV4 = 2
    LMS_TESTSIG_NCODIV8F = 3
    LMS_TESTSIG_NCODIV4F = 4
    LMS_TESTSIG_DC = 5
end

@cenum lms_gfir_t::UInt32 begin
    LMS_GFIR1 = 0
    LMS_GFIR2 = 1
    LMS_GFIR3 = 2
end


mutable struct lms_stream_meta_t
    timestamp::UInt64
    waitForTimestamp::Bool
    flushPartialPacket::Bool
end

mutable struct lms_stream_status_t
    active::Bool
    fifoFilledCount::UInt32
    fifoSize::UInt32
    underrun::UInt32
    overrun::UInt32
    droppedPackets::UInt32
    sampleRate::float_type
    linkRate::float_type
    timestamp::UInt64
end

const lms_prog_callback_t = Ptr{Cvoid}

mutable struct lms_dev_info_t
    deviceName::NTuple{32, UInt8}
    expansionName::NTuple{32, UInt8}
    firmwareVersion::NTuple{16, UInt8}
    hardwareVersion::NTuple{16, UInt8}
    protocolVersion::NTuple{16, UInt8}
    boardSerialNumber::UInt64
    gatewareVersion::NTuple{16, UInt8}
    gatewareTargetBoard::NTuple{32, UInt8}
end

const LMS_LogHandler = Ptr{Cvoid}

# Skipping MacroDefinition: LIME_HELPER_DLL_IMPORT __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: LIME_HELPER_DLL_EXPORT __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: LIME_HELPER_DLL_LOCAL __attribute__ ( ( visibility ( "hidden" ) ) )

const LIME_SUITE_API_VERSION = 0x20200100
const RFE_I2C_ADDRESS = 0x51
const RFE_CID_WB_1000 = 1
const RFE_CID_WB_4000 = 2
const RFE_CID_HAM_0030 = 3
const RFE_CID_HAM_0070 = 4
const RFE_CID_HAM_0145 = 5
const RFE_CID_HAM_0220 = 6
const RFE_CID_HAM_0435 = 7
const RFE_CID_HAM_0920 = 8
const RFE_CID_HAM_1280 = 9
const RFE_CID_HAM_2400 = 10
const RFE_CID_HAM_3500 = 11
const RFE_CID_CELL_BAND01 = 12
const RFE_CID_CELL_BAND02 = 13
const RFE_CID_CELL_BAND03 = 14
const RFE_CID_CELL_BAND07 = 15
const RFE_CID_CELL_BAND38 = 16
const RFE_CID_AUTO = -2
const RFE_CID_NOT_SELECTED = 100
const RFE_PORT_1 = 1
const RFE_PORT_2 = 2
const RFE_PORT_3 = 3
const RFE_NOTCH_OFF = 0
const RFE_NOTCH_ON = 1
const RFE_MODE_RX = 0
const RFE_MODE_TX = 1
const RFE_MODE_NONE = 2
const RFE_MODE_TXRX = 3
const RFE_ADC1 = 0
const RFE_ADC2 = 1
const RFE_ADC_VREF = 5.0
const RFE_ADC_BITS = 10
const RFE_SUCCESS = 0
const RFE_ERROR_COMM_SYNC = -4
const RFE_ERROR_GPIO_PIN = -3
const RFE_ERROR_CONF_FILE = -2
const RFE_ERROR_COMM = -1
const RFE_ERROR_TX_CONN = 1
const RFE_ERROR_RX_CONN = 2
const RFE_ERROR_RXTX_SAME_CONN = 3
const RFE_ERROR_CELL_WRONG_MODE = 4
const RFE_ERROR_CELL_TX_NOT_EQUAL_RX = 5
const RFE_ERROR_WRONG_CHANNEL_CODE = 6
const RFE_GPIO4 = 4
const RFE_GPIO5 = 5
const RFE_GPIO_DIR_OUT = 0
const RFE_GPIO_DIR_IN = 1
const RFE_SWR_DISABLE = 0
const RFE_SWR_ENABLE = 1
const RFE_SWR_SRC_EXT = 0
const RFE_SWR_SRC_CELL = 1

mutable struct rfe_boardState
    channelIDRX::UInt8
    channelIDTX::UInt8
    selPortRX::UInt8
    selPortTX::UInt8
    mode::UInt8
    notchOnOff::UInt8
    attValue::UInt8
    enableSWR::UInt8
    sourceSWR::UInt8
end

const rfe_dev_t = Cvoid

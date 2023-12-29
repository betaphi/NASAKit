//
//  KnownTypes.swift
//
//
//  Created by Bastian Rössler on 04.12.23.
//

import Foundation

extension Array where Element == Message
{
    public func getENUM_AD_MULTI_TENANT_NO() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x25}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getVAR_ad_error_code1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x202}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_ad_install_number_indoor() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x207}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_ad_install_number_mcu() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x211}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_ADDRESS_MAIN() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x401}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_address_rmc() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x402}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_ADDRESS_SETUP() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x408}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_all() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x409}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_operation_power() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40A}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_operation_mode() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40B}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_fan_mode() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40C}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_fan_direction() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40D}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_temp_target() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40E}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_keep_individual_control() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x40F}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_operation_mode_only() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x410}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_INSTALL_LEVEL_COOL_MODE_UPPER() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x411}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_INSTALL_LEVEL_COOL_MODE_LOWER() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x412}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_INSTALL_LEVEL_HEAT_MODE_UPPER() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x413}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_INSTALL_LEVEL_HEAT_MODE_LOWER() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x414}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_contact_control() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x415}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_ad_install_level_key_operation_input() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x416}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_AD_MCU_PORT_SETUP() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x448}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_option_basic() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x600}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_option_install() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x601}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_option_install_2() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x602}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_option_cycle() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x603}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_info_equip_position() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x605}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_id_serial_number() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x607}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_dbcode_micom_main() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x608}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_ad_dbcode_eeprom() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x60C}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_AD_PRODUCT_MODEL_NAME() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x61A}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_AD_PRODUCT_MAC_ADDRESS() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x61C}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_AD_ID_MODEL_NAME() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x61F}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getENUM_NM_network_positinon_layer() -> ENUM_NM_network_positinon_layer?
    {
        guard let item = self.first(where: {$0.key == 0x200F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_NM_network_positinon_layer: UInt8
    {
        case Control_Layer = 0x00
        case Set_Layer = 0x01
    }

    public func getENUM_NM_network_tracking_state() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x2010}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_in_operation_power() -> ENUM_in_operation_power?
    {
        guard let item = self.first(where: {$0.key == 0x4000}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_in_operation_power: UInt8
    {
        case off = 0x00
        case on = 0x01
        case onAlternate = 0x02
    }

    public func getENUM_in_operation_mode() -> ENUM_in_operation_mode?
    {
        guard let item = self.first(where: {$0.key == 0x4001}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_in_operation_mode: UInt8
    {
        case Auto = 0x00
        case Cool = 0x01
        case Dry = 0x02
        case Fan = 0x03
        case Heat = 0x04
        case Cool_Storage = 0x15
        case Hot_Water = 0x18
    }

    public func getENUM_in_operation_mode_real() -> ENUM_in_operation_mode_real?
    {
        guard let item = self.first(where: {$0.key == 0x4002}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_in_operation_mode_real: UInt8
    {
        case Unknown = 0x00
        case Cool = 0x01
        case Dry = 0x02
        case Fan = 0x03
        case Heat = 0x04
        case Auto_Cool = 0x0B
        case Auto_Dry = 0x0C
        case Auto_Fan = 0x0D
        case Auto_Heat = 0x0E
        case Cool_Storage = 0x15
        case Hot_Water = 0x18
        case NullMode = 0xFF
    }

    public func getENUM_IN_OPERATION_VENT_POWER() -> ENUM_IN_OPERATION_VENT_POWER?
    {
        guard let item = self.first(where: {$0.key == 0x4003}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_OPERATION_VENT_POWER: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_OPERATION_VENT_MODE() -> ENUM_IN_OPERATION_VENT_MODE?
    {
        guard let item = self.first(where: {$0.key == 0x4004}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_OPERATION_VENT_MODE: UInt8
    {
        case Normal = 0x00
        case HeatEx = 0x01
        case Bypass = 0x02
        case Normal_Purify = 0x03
        case HeatEx_Purify = 0x04
        case Purify = 0x05
        case Sleep = 0x06
        case Bypass_Purify = 0x07
    }

    public func getENUM_in_fan_mode_real() -> ENUM_in_fan_mode_real?
    {
        guard let item = self.first(where: {$0.key == 0x4007}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_in_fan_mode_real: UInt8
    {
        case Low = 0x01
        case Mid = 0x02
        case High = 0x03
        case Turbo = 0x04
        case AutoLow = 0x0A
        case AutoMid = 0x0B
        case AutoHigh = 0x0C
        case UL = 0x0D
        case LL = 0x0E
        case HH = 0x0F
        case Speed = 0x10
        case NaturalLow = 0x11
        case NaturalMid = 0x12
        case NaturalHigh = 0x13
        case Off = 0xFE
    }

    public func getENUM_IN_FAN_VENT_MODE() -> ENUM_IN_FAN_VENT_MODE?
    {
        guard let item = self.first(where: {$0.key == 0x4008}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FAN_VENT_MODE: UInt8
    {
        case Auto = 0x00
        case Low = 0x01
        case Mid = 0x02
        case High = 0x03
        case Turbo = 0x04
    }

    public func getENUM_IN_LOUVER_HL_SWING() -> ENUM_IN_LOUVER_HL_SWING?
    {
        guard let item = self.first(where: {$0.key == 0x4011}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_LOUVER_HL_SWING: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_in_louver_hl_part_swing() -> ENUM_in_louver_hl_part_swing?
    {
        guard let item = self.first(where: {$0.key == 0x4012}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_in_louver_hl_part_swing: UInt8
    {
        case Sing_Off = 0x00
        case LOUVER_1 = 0x01
        case LOUVER_2 = 0x02
        case LOUVER_1_2 = 0x03
        case LOUVER_3 = 0x04
        case LOUVER_1_3 = 0x05
        case LOUVER_2_3 = 0x06
        case LOUVER_1_2_3 = 0x07
        case LOUVER_4 = 0x08
        case LOUVER_1_4 = 0x09
        case LOUVER_2_4 = 0x0A
        case LOUVER_1_2_4 = 0x0B
        case LOUVER_3_4 = 0x0C
        case LOUVER_1_3_4 = 0x0D
        case LOUVER_2_3_4 = 0x0E
        case Swing_On = 0x0F
        case H_H_H = 0x40
        case M_H_H = 0x41
        case V_H_H = 0x42
        case H_M_H = 0x44
        case M_M_H = 0x45
        case V_M_H = 0x46
        case H_V_H = 0x48
        case M_V_H = 0x49
        case V_V_H = 0x4A
        case H_H_M = 0x50
        case M_H_M = 0x51
        case V_H_M = 0x52
        case H_M_M = 0x54
        case M_M_M = 0x55
        case V_M_M = 0x56
        case H_V_M = 0x58
        case M_V_M = 0x59
        case V_V_M = 0x5A
        case H_H_V = 0x60
        case M_H_V = 0x61
        case V_H_V = 0x62
        case H_M_V = 0x64
        case M_M_V = 0x65
        case V_M_V = 0x66
        case H_V_V = 0x68
        case M_V_V = 0x69
        case V_V_V = 0x6A
    }

    public func getENUM_IN_STATE_THERMO() -> ENUM_IN_STATE_THERMO?
    {
        guard let item = self.first(where: {$0.key == 0x4028}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_STATE_THERMO: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_in_state_defrost_mode() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x402E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_MTFC() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x402F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_STATE_HUMIDITY_PERCENT() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4038}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_SILENCE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4046}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_ALTERNATIVE_MODE() -> ENUM_IN_ALTERNATIVE_MODE?
    {
        guard let item = self.first(where: {$0.key == 0x4060}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_ALTERNATIVE_MODE: UInt8
    {
        case OFF = 0x00
        case ON = 0x09
    }

    public func getENUM_IN_WATER_HEATER_POWER() -> ENUM_IN_WATER_HEATER_POWER?
    {
        guard let item = self.first(where: {$0.key == 0x4065}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_WATER_HEATER_POWER: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_WATER_HEATER_MODE() -> ENUM_IN_WATER_HEATER_MODE?
    {
        guard let item = self.first(where: {$0.key == 0x4066}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_WATER_HEATER_MODE: UInt8
    {
        case Eco = 0x00
        case Standard = 0x01
        case Power = 0x02
        case Force = 0x03
    }

    public func getENUM_IN_3WAY_VALVE() -> ENUM_IN_3WAY_VALVE?
    {
        guard let item = self.first(where: {$0.key == 0x4067}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_3WAY_VALVE: UInt8
    {
        case Room = 0x00
        case Tank = 0x01
    }

    public func getENUM_IN_SOLAR_PUMP() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4068}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_THERMOSTAT1() -> ENUM_IN_THERMOSTAT1?
    {
        guard let item = self.first(where: {$0.key == 0x4069}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_THERMOSTAT1: UInt8
    {
        case Off = 0x00
        case Cool = 0x01
        case Heat = 0x02
    }

    public func getENUM_IN_THERMOSTAT2() -> ENUM_IN_THERMOSTAT2?
    {
        guard let item = self.first(where: {$0.key == 0x406A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_THERMOSTAT2: UInt8
    {
        case Off = 0x00
        case Cool = 0x01
        case Heat = 0x02
    }

    public func getENUM_IN_BACKUP_HEATER() -> ENUM_IN_BACKUP_HEATER?
    {
        guard let item = self.first(where: {$0.key == 0x406C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_BACKUP_HEATER: UInt8
    {
        case OFF = 0x00
        case STEP_1 = 0x01
        case STEP_2 = 0x02
    }

    public func getENUM_IN_OUTING_MODE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x406D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_QUIET_MODE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x406E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_REFERENCE_EHS_TEMP() -> ENUM_IN_REFERENCE_EHS_TEMP?
    {
        guard let item = self.first(where: {$0.key == 0x406F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_REFERENCE_EHS_TEMP: UInt8
    {
        case Room = 0x00
        case Water_Out = 0x01
    }

    public func getENUM_IN_DISCHAGE_TEMP_CONTROL() -> ENUM_IN_DISCHAGE_TEMP_CONTROL?
    {
        guard let item = self.first(where: {$0.key == 0x4070}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_DISCHAGE_TEMP_CONTROL: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_ROOM_TEMP_SENSOR() -> ENUM_IN_ROOM_TEMP_SENSOR?
    {
        guard let item = self.first(where: {$0.key == 0x4076}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_ROOM_TEMP_SENSOR: UInt8
    {
        case Idiom_IndoorUnit = 0x00
        case Idiom_WiredRemocon = 0x01
    }

    public func getENUM_IN_LOUVER_LR_SWING() -> ENUM_IN_LOUVER_LR_SWING?
    {
        guard let item = self.first(where: {$0.key == 0x407E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_LOUVER_LR_SWING: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_BOOSTER_HEATER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4087}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_STATE_WATER_PUMP() -> ENUM_IN_STATE_WATER_PUMP?
    {
        guard let item = self.first(where: {$0.key == 0x4089}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_STATE_WATER_PUMP: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_2WAY_VALVE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x408A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_2041() -> ENUM_IN_FSV_2041?
    {
        guard let item = self.first(where: {$0.key == 0x4093}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2041: UInt8
    {
        case floor = 0x01
        case fcu = 0x02
    }

    public func getENUM_IN_FSV_2081() -> ENUM_IN_FSV_2081?
    {
        guard let item = self.first(where: {$0.key == 0x4094}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2081: UInt8
    {
        case floor = 0x01
        case fcu = 0x02
    }

    public func getENUM_IN_FSV_2091() -> ENUM_IN_FSV_2091?
    {
        guard let item = self.first(where: {$0.key == 0x4095}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2091: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
        case three = 0x03
        case four = 0x04
    }

    public func getENUM_IN_FSV_2092() -> ENUM_IN_FSV_2092?
    {
        guard let item = self.first(where: {$0.key == 0x4096}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2092: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
        case three = 0x03
        case four = 0x04
    }

    public func getENUM_IN_FSV_3011() -> ENUM_IN_FSV_3011?
    {
        guard let item = self.first(where: {$0.key == 0x4097}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3011: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
    }

    public func getENUM_IN_FSV_3031() -> ENUM_IN_FSV_3031?
    {
        guard let item = self.first(where: {$0.key == 0x4098}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3031: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_3041() -> ENUM_IN_FSV_3041?
    {
        guard let item = self.first(where: {$0.key == 0x4099}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3041: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_3042() -> ENUM_IN_FSV_3042?
    {
        guard let item = self.first(where: {$0.key == 0x409A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3042: UInt8
    {
        case Sunday = 0x00
        case Monday = 0x01
        case Tuesday = 0x02
        case Wednesday = 0x03
        case Thursday = 0x04
        case Friday = 0x05
        case Saturday = 0x06
        case Everyday = 0x07
    }

    public func getENUM_IN_FSV_3051() -> ENUM_IN_FSV_3051?
    {
        guard let item = self.first(where: {$0.key == 0x409B}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3051: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_3061() -> ENUM_IN_FSV_3061?
    {
        guard let item = self.first(where: {$0.key == 0x409C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3061: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
        case three = 0x03
    }

    public func getENUM_IN_FSV_3071() -> ENUM_IN_FSV_3071?
    {
        guard let item = self.first(where: {$0.key == 0x409D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_3071: UInt8
    {
        case Room = 0x00
        case Tank = 0x01
    }

    public func getENUM_IN_FSV_4011() -> ENUM_IN_FSV_4011?
    {
        guard let item = self.first(where: {$0.key == 0x409E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4011: UInt8
    {
        case DHW = 0x00
        case Heating = 0x01
    }

    public func getENUM_IN_FSV_4021() -> ENUM_IN_FSV_4021?
    {
        guard let item = self.first(where: {$0.key == 0x409F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4021: UInt8
    {
        case zero = 0x00
        case one = 0x01
        case two = 0x02
    }

    public func getENUM_IN_FSV_4022() -> ENUM_IN_FSV_4022?
    {
        guard let item = self.first(where: {$0.key == 0x40A0}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4022: UInt8
    {
        case BUH_BSH_Both = 0x00
        case BUH = 0x01
        case BSH = 0x02
    }

    public func getENUM_IN_FSV_4023() -> ENUM_IN_FSV_4023?
    {
        guard let item = self.first(where: {$0.key == 0x40A1}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4023: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_4031() -> ENUM_IN_FSV_4031?
    {
        guard let item = self.first(where: {$0.key == 0x40A2}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4031: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_4032() -> ENUM_IN_FSV_4032?
    {
        guard let item = self.first(where: {$0.key == 0x40A3}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4032: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_5041() -> ENUM_IN_FSV_5041?
    {
        guard let item = self.first(where: {$0.key == 0x40A4}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5041: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_5042() -> ENUM_IN_FSV_5042?
    {
        guard let item = self.first(where: {$0.key == 0x40A5}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5042: UInt8
    {
        case All = 0x00
        case one = 0x01
        case two = 0x02
        case three = 0x03
    }

    public func getENUM_IN_FSV_5043() -> ENUM_IN_FSV_5043?
    {
        guard let item = self.first(where: {$0.key == 0x40A6}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5043: UInt8
    {
        case Low = 0x00
        case High = 0x01
    }

    public func getENUM_IN_FSV_5051() -> ENUM_IN_FSV_5051?
    {
        guard let item = self.first(where: {$0.key == 0x40A7}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5051: UInt8
    {
        case No = 0x00
        case Yes = 0x01
    }

    public func getENUM_IN_FSV_5061() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40B4}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_STATE_AUTO_STATIC_PRESSURE_RUNNING() -> ENUM_IN_STATE_AUTO_STATIC_PRESSURE_RUNNING?
    {
        guard let item = self.first(where: {$0.key == 0x40BB}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_STATE_AUTO_STATIC_PRESSURE_RUNNING: UInt8
    {
        case OFF = 0x00
        case Complete = 0x01
        case Running = 0x02
    }

    public func getENUM_IN_STATE_KEY_TAG() -> ENUM_IN_STATE_KEY_TAG?
    {
        guard let item = self.first(where: {$0.key == 0x40BC}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_STATE_KEY_TAG: UInt8
    {
        case UNOCCUPIED = 0x00
        case OCCUPIED = 0x01
    }

    public func getENUM_IN_EMPTY_ROOM_CONTROL_USED() -> ENUM_IN_EMPTY_ROOM_CONTROL_USED?
    {
        guard let item = self.first(where: {$0.key == 0x40BD}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_EMPTY_ROOM_CONTROL_USED: UInt8
    {
        case Disable = 0x00
        case Enable = 0x01
    }

    public func getENUM_IN_FSV_4041() -> ENUM_IN_FSV_4041?
    {
        guard let item = self.first(where: {$0.key == 0x40C0}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4041: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
    }

    public func getENUM_IN_FSV_4044() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40C1}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_4051() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40C2}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_4053() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40C3}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    /// PWM value in percent
    /// Even thogh it is marked as ENUM, the values are actually UInt8 percentage values.
    public func getENUM_IN_WATERPUMP_PWM_VALUE() -> UInt8?
    {
        guard let item = self.first(where: {$0.key == 0x40C4}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase
    }

    public func getENUM_IN_THERMOSTAT_WATER_HEATER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40C5}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_ENTER_ROOM_CONTROL_USED() -> ENUM_IN_ENTER_ROOM_CONTROL_USED?
    {
        guard let item = self.first(where: {$0.key == 0x40D5}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_ENTER_ROOM_CONTROL_USED: UInt8
    {
        case Disable = 0x00
        case Enable = 0x01
    }

    public func getENUM_IN_ERROR_HISTORY_CLEAR_FOR_HASS() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x40D6}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_CHILLER_WATERLAW_SENSOR() -> ENUM_IN_CHILLER_WATERLAW_SENSOR?
    {
        guard let item = self.first(where: {$0.key == 0x40E7}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_CHILLER_WATERLAW_SENSOR: UInt8
    {
        case Outdoor = 0x00
        case Room = 0x01
    }

    public func getENUM_IN_CHILLER_WATERLAW_ON_OFF() -> ENUM_IN_CHILLER_WATERLAW_ON_OFF?
    {
        guard let item = self.first(where: {$0.key == 0x40F7}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_CHILLER_WATERLAW_ON_OFF: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_CHILLLER_SETTING_SILENT_LEVEL() -> ENUM_IN_CHILLLER_SETTING_SILENT_LEVEL?
    {
        guard let item = self.first(where: {$0.key == 0x40FB}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_CHILLLER_SETTING_SILENT_LEVEL: UInt8
    {
        case None = 0x00
        case Level1 = 0x01
        case Level2 = 0x02
        case Level3 = 0x03
    }

    public func getENUM_IN_CHILLER_SETTING_DEMAND_LEVEL() -> ENUM_IN_CHILLER_SETTING_DEMAND_LEVEL?
    {
        guard let item = self.first(where: {$0.key == 0x40FC}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_CHILLER_SETTING_DEMAND_LEVEL: UInt8
    {
        case oneHundredPercent = 0x00
        case ninetyFivePercent = 0x01
        case nintyPercent = 0x02
        case eightyFivePercent = 0x03
        case eightyPercent = 0x04
        case seventyFivePercent = 0x05
        case seventyPercent = 0x06
        case sixtyFivePercent = 0x07
        case sixtyPercent = 0x08
        case fiftyFivePercent = 0x09
        case fiftyPercent = 0x0A
        case notApply = 0x0B
    }

    public func getENUM_IN_CHILLER_EXT_WATER_OUT_INPUT() -> ENUM_IN_CHILLER_EXT_WATER_OUT_INPUT?
    {
        guard let item = self.first(where: {$0.key == 0x4101}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_CHILLER_EXT_WATER_OUT_INPUT: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_STATE_FLOW_CHECK() -> ENUM_IN_STATE_FLOW_CHECK?
    {
        guard let item = self.first(where: {$0.key == 0x4102}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_STATE_FLOW_CHECK: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_WATER_VALVE_1_ON_OFF() -> ENUM_IN_WATER_VALVE_1_ON_OFF?
    {
        guard let item = self.first(where: {$0.key == 0x4103}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_WATER_VALVE_1_ON_OFF: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_WATER_VALVE_2_ON_OFF() -> ENUM_IN_WATER_VALVE_2_ON_OFF?
    {
        guard let item = self.first(where: {$0.key == 0x4104}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_WATER_VALVE_2_ON_OFF: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getENUM_IN_ENTHALPY_CONTROL_STATE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4105}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_5033() -> ENUM_IN_FSV_5033?
    {
        guard let item = self.first(where: {$0.key == 0x4107}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5033: UInt8
    {
        case A2A = 0x00
        case DHW = 0x01
    }

    public func getENUM_IN_TDM_INDOOR_TYPE() -> ENUM_IN_TDM_INDOOR_TYPE?
    {
        guard let item = self.first(where: {$0.key == 0x4108}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_TDM_INDOOR_TYPE: UInt8
    {
        case A2A = 0x00
        case A2W = 0x01
    }

    public func getENUM_IN_FREE_COOLING_STATE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x410D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_3WAY_VALVE_2() -> ENUM_IN_3WAY_VALVE_2?
    {
        guard let item = self.first(where: {$0.key == 0x4113}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_3WAY_VALVE_2: UInt8
    {
        case Room = 0x00
        case Tank = 0x01
    }

    public func getENUM_IN_OPERATION_POWER_ZONE1() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4119}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_4061() -> ENUM_IN_FSV_4061?
    {
        guard let item = self.first(where: {$0.key == 0x411A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_4061: UInt8
    {
        case zero = 0x00
        case one = 0x01
    }

    public func getENUM_IN_FSV_5081() -> ENUM_IN_FSV_5081?
    {
        guard let item = self.first(where: {$0.key == 0x411B}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5081: UInt8
    {
        case zero = 0x00
        case one = 0x01
    }

    public func getENUM_IN_FSV_5091() -> ENUM_IN_FSV_5091?
    {
        guard let item = self.first(where: {$0.key == 0x411C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5091: UInt8
    {
        case zero = 0x00
        case one = 0x01
    }

    public func getENUM_IN_FSV_5094() -> ENUM_IN_FSV_5094?
    {
        guard let item = self.first(where: {$0.key == 0x411D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5094: UInt8
    {
        case zero = 0x00
        case one = 0x01
    }

    public func getENUM_IN_OPERATION_POWER_ZONE2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x411E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_PV_CONTACT_STATE() -> ENUM_IN_PV_CONTACT_STATE?
    {
        guard let item = self.first(where: {$0.key == 0x4123}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_PV_CONTACT_STATE: UInt8
    {
        case Disable = 0x00
        case Enable = 0x01
    }

    public func getENUM_IN_SG_READY_MODE_STATE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4124}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_LOAD_SAVE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4125}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_FSV_2093() -> ENUM_IN_FSV_2093?
    {
        guard let item = self.first(where: {$0.key == 0x4127}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2093: UInt8
    {
        case one = 0x01
        case two = 0x02
        case three = 0x03
        case four = 0x04
    }

    public func getENUM_IN_FSV_5022() -> ENUM_IN_FSV_5022?
    {
        guard let item = self.first(where: {$0.key == 0x4128}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_5022: UInt8
    {
        case zero = 0x00
        case one = 0x01
    }

    public func getENUM_IN_FSV_2094() -> ENUM_IN_FSV_2094?
    {
        guard let item = self.first(where: {$0.key == 0x412A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_FSV_2094: UInt8
    {
        case No = 0x00
        case one = 0x01
        case two = 0x02
        case three = 0x03
        case four = 0x04
    }

    public func getENUM_IN_FSV_LOAD_SAVE_ALTERNATE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x412D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_GAS_LEVEL() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x4147}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_IN_DIFFUSER_OPERATION_POWER() -> ENUM_IN_DIFFUSER_OPERATION_POWER?
    {
        guard let item = self.first(where: {$0.key == 0x4149}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_IN_DIFFUSER_OPERATION_POWER: UInt8
    {
        case Off = 0x00
        case On = 0x01
    }

    public func getVAR_in_temp_target_f() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4201}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_in_temp_room_f() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4203}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_in_temp_eva_in_f() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4205}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_in_temp_eva_out_f() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4206}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_ELECTRIC_HEATER_F() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x4207}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_in_temp_discharge() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x420B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_in_capacity_request() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4211}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 8.600000
    }

    public func getVAR_in_capacity_absolute() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4212}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 8.600000
    }

    public func getVAR_in_eev_value_real_1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4217}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_in_eev_value_real_2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4218}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_SENSOR_CO2_PPM() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x421B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_DISCHARGE_COOL_TARGET_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x422A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_DISCHARGE_HEAT_TARGET_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x422B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_HEATER_TARGET_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4235}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_IN_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4236}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_TANK_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4237}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUT_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4238}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUT2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4239}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUTLET_TARGET_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4247}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_LAW_TARGET_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4248}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1011() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1012() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1021() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1022() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1031() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1032() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x424F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1041() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4250}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1042() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4251}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1051() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4252}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_1052() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4253}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2011() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4254}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2012() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4255}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2021() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4256}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2022() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4257}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2031() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4258}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2032() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4259}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2051() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2052() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2061() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2062() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2071() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_2072() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x425F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3021() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4260}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3022() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4261}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3023() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4262}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3024() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4263}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_3025() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4264}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_3026() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4265}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_3032() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4266}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_3033() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4267}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3043() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4269}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_3044() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x426A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3045() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x426B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_IN_FSV_3052() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x426C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 0.100000
    }

    public func getVAR_IN_FSV_4012() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x426D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4013() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x426E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4024() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4270}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4025() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4271}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4033() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4272}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5011() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4273}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5012() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4274}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5013() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4275}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5014() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4276}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5015() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4277}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5016() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4278}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5017() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4279}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5018() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x427A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5019() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x427B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5021() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x427C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5031() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x427D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_5032() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x427E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_WATER_LAW_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x427F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4042() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4286}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4043() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4287}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_4045() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x4288}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FSV_4046() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4289}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 0.100000
    }

    public func getVAR_IN_FSV_4052() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x428A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_MIXING_VALVE_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x428C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_AHU_PANEL_SA_TEMP() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x4297}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_AHU_PANEL_SA_HUMIDITY() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x4298}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_IN_FAN_CURRENT_RPM_SUCTION1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x429F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FAN_CURRENT_RPM_SUCTION2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42A1}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_FAN_CURRENT_RPM_SUCTION3() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42A3}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_PANEL_AIR_COOL1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42A5}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_AIR_COOL2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42A6}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_ROOM_COOL1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42A7}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_ROOM_COOL2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42A8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_TARGET_COOL1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42A9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_TARGET_COOL2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AA}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_AIR_HEAT1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AB}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_AIR_HEAT2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_ROOM_HEAT1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AD}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_ROOM_HEAT2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_TARGET_HEAT1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42AF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_PANEL_TARGET_HEAT2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42B0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_MCC_GROUP_MODULE_ADDRESS() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42B1}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_MCC_GROUP_MAIN() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42B2}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_MCC_MODULE_MAIN() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42B3}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_EVA2_IN_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42C2}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_EVA2_OUT_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42C3}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_CHILLER_PHE_IN_P() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42C4}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 100.000000
    }

    public func getVAR_IN_CHILLER_PHE_OUT_P() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42C5}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 100.000000
    }

    public func getVAR_IN_CHILLER_EXTERNAL_TEMPERATURE() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42C9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_MODULATING_VALVE_1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42CA}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_MODULATING_VALVE_2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42CB}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_MODULATING_FAN() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42CC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_WATER_IN2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42CD}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3046() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42CE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_ENTHALPY_SENSOR_OUTPUT() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42CF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_EXT_VARIABLE_DAMPER_OUTPUT() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42D0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_DUST_SENSOR_PM10_0_VALUE() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42D1}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_DUST_SENSOR_PM2_5_VALUE() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42D2}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_DUST_SENSOR_PM1_0_VALUE() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x42D3}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_IN_TEMP_ZONE2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42D4}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_TARGET_ZONE2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42D6}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUTLET_TARGET_ZONE2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42D7}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUTLET_ZONE1_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42D8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_TEMP_WATER_OUTLET_ZONE2_F() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42D9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5082() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42DB}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5083() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42DC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5092() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42DD}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_5093() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42DE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FLOW_SENSOR_VOLTAGE() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42E8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_IN_FLOW_SENSOR_CALC() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42E9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_FSV_3081() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x42ED}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_IN_FSV_3082() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x42EE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_IN_FSV_3083() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x42EF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_IN_FSV_5023() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x42F0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_IN_CAPACITY_VENTILATION_REQUEST() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x4302}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 8.600000
    }

    public func getLVAR_In_Device_staus_Heatpump_Boiler() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x440A}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_IN_AUTO_STATIC_PRESSURE() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x4415}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_IN_EMPTY_ROOM_CONTROL_DATA() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x4418}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_IN_ENTER_ROOM_CONTROL_DATA() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x441B}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_IN_ETO_COOL_CONTROL_DATA() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x441F}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_IN_ETO_HEAT_CONTROL_DATA() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x4420}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_IN_INSTALL_INDOOR_SETUP_INFO() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x4604}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_IN_ERROR_HISTORY_FOR_HASS() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x461E}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getENUM_OUT_OPERATION_SERVICE_OP() -> ENUM_OUT_OPERATION_SERVICE_OP?
    {
        guard let item = self.first(where: {$0.key == 0x8000}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_OUT_OPERATION_SERVICE_OP: UInt8
    {
        case 난방_시운전 = 0x02
        case Pump_Out = 0x03
        case 냉방_시운전 = 0x0D
        case Pump_Down = 0x0E
    }

    public func getENUM_out_operation_odu_mode() -> ENUM_out_operation_odu_mode?
    {
        guard let item = self.first(where: {$0.key == 0x8001}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_out_operation_odu_mode: UInt8
    {
        case OP_STOP = 0x00
        case OP_SAFETY = 0x01
        case OP_NORMAL = 0x02
        case OP_BALANCE = 0x03
        case OP_RECOVERY = 0x04
        case OP_DEICE = 0x05
        case OP_COMPDOWN = 0x06
        case OP_PROHIBIT = 0x07
        case OP_LINEJIG = 0x08
        case OP_PCBJIG = 0x09
        case OP_TEST = 0x0A
        case OP_CHARGE = 0x0B
        case OP_PUMPDOWN = 0x0C
        case OP_PUMPOUT = 0x0D
        case OP_VACCUM = 0x0E
        case OP_CALORYJIG = 0x0F
        case OP_PUMPDOWNSTOP = 0x10
        case OP_SUBSTOP = 0x11
        case OP_CHECKPIPE = 0x12
        case OP_CHECKREF = 0x13
        case OP_FPTJIG = 0x14
        case OP_NONSTOP_HEAT_COOL_CHANGE = 0x15
        case OP_AUTO_INSPECT = 0x16
        case OP_ELECTRIC_DISCHARGE = 0x17
        case OP_SPLIT_DEICE = 0x18
        case OP_INVETER_CHECK = 0x19
        case OP_NONSTOP_DEICE = 0x1A
        case OP_REM_TEST = 0x1B
        case OP_RATING = 0x1C
        case OP_PC_TEST = 0x1D
        case OP_PUMPDOWN_THERMOOFF = 0x1E
        case OP_3PHASE_TEST = 0x1F
        case OP_SMARTINSTALL_TEST = 0x20
        case OP_DEICE_PERFORMANCE_TEST = 0x21
        case OP_INVERTER_FAN_PBA_CHECK = 0x22
        case OP_AUTO_PIPE_PAIRING = 0x23
        case OP_AUTO_CHARGE = 0x24
    }

    public func getENUM_out_operation_heatcool() -> ENUM_out_operation_heatcool?
    {
        guard let item = self.first(where: {$0.key == 0x8003}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_out_operation_heatcool: UInt8
    {
        case Undefined = 0x00
        case Cool = 0x01
        case Heat = 0x02
        case CoolMain = 0x03
        case HeatMain = 0x04
    }

    public func getENUM_out_load_comp1() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8010}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_comp2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8011}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_comp3() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8012}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_cch1() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8013}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_cch2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8014}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_hotgas() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8017}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_hotgas2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8018}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_LIQUID() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8019}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_4way() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x801A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_maincool() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x801F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_outeev() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8020}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_evi_bypass() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8021}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_evi_sol1() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8022}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_evi_sol2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8023}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_gascharge() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8025}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_water() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8026}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_pumpout() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8027}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_4WAY2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x802A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_liquidtube() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8034}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_accreturn() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8037}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_load_flow_switch() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x803B}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_operation_auto_inspect_step() -> ENUM_out_operation_auto_inspect_step?
    {
        guard let item = self.first(where: {$0.key == 0x803C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_out_operation_auto_inspect_step: UInt8
    {
        case 제어_없음 = 0x00
        case 기동_판단 = 0x01
        case 안정_판단 = 0x02
        case 안정_판단_10분_시간_종료 = 0x03
        case 안정_판단_종료_대기 = 0x04
        case 기능판단_실외기_1 = 0x05
        case 기능판단_실외기_2 = 0x06
        case 기능판단_실외기_3 = 0x07
        case 기능판단_실외기_4 = 0x08
        case 기능_판단_종료_대기_개별_ = 0x09
        case 기능_판단_실외기_전체 = 0x0A
        case 기능_판단_종료_대기_전체_ = 0x0B
        case 실내기_판단 = 0x0C
        case 자동_점검_종료 = 0x0D
    }

    public func getENUM_out_op_test_op_complete() -> ENUM_out_op_test_op_complete?
    {
        guard let item = self.first(where: {$0.key == 0x8046}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_out_op_test_op_complete: UInt8
    {
        case Not_Completed = 0x00
        case Completed = 0x01
    }

    public func getENUM_out_mcu_load_cool_a() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8049}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_a() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_cool_b() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804B}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_b() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_cool_c() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_c() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_cool_d() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x804F}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_d() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8050}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_cool_e() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8051}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_e() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8052}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_cool_f() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8053}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_heat_f() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8054}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_load_liquid() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8055}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port0_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8058}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port1_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8059}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port2_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x805A}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port3_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x805B}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port4_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x805C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_out_mcu_port5_indoor_addr() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x805D}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_DEICE_STEP_INDOOR() -> ENUM_OUT_DEICE_STEP_INDOOR?
    {
        guard let item = self.first(where: {$0.key == 0x8061}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_OUT_DEICE_STEP_INDOOR: UInt8
    {
        case defrostStage1 = 0x01
        case defrostStage2 = 0x02
        case defrostStage3 = 0x03
        case defrostStage4 = 0x04
        case defrostFinalStage = 0x07
        case noDefrostOperation = 0xFF
    }

    public func getENUM_OUT_OP_CHECK_REF_STEP() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x808E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_INSTALL_ODU_COUNT() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8092}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_CONTROL_FAN_NUM() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x8099}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_CHECK_REF_RESULT() -> ENUM_OUT_CHECK_REF_RESULT?
    {
        guard let item = self.first(where: {$0.key == 0x809C}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_OUT_CHECK_REF_RESULT: UInt8
    {
        case RefResult_NotInspect = 0x00
        case 정상완료 = 0x01
        case RefResult_NotJudgment = 0x02
        case 과냉도_확보불가 = 0x03
        case RefResult_Normal = 0x04
        case RefResult_Insufficient = 0x05
        case 판단불가 = 0x06
        case 온도범위_초과 = 0x07
    }

    public func getENUM_OUT_LOAD_CBOX_COOLING_FAN() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x809E}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_STATE_BACKUP_OPER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80A5}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_STATE_COMP_PROTECT_OPER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80A6}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_BASEHEATER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80AF}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_STATE_ACCUM_VALVE_ONOFF() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80B4}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_OIL_BYPASS1() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80B8}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_OIL_BYPASS2() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80B9}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_OP_A2_CURRENTMODE() -> ENUM_OUT_OP_A2_CURRENTMODE?
    {
        guard let item = self.first(where: {$0.key == 0x80BE}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_OUT_OP_A2_CURRENTMODE: UInt8
    {
        case Null = 0x00
        case A2W = 0x01
        case A2A = 0x02
    }

    public func getENUM_OUT_LOAD_A2A_VALVE() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80C1}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_LOAD_PHEHEATER() -> Bool?
    {
        guard let item = self.first(where: {$0.key == 0x80D7}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return nil }
        return rawCase == 0 ? false : true
    }

    public func getENUM_OUT_EHS_WATEROUT_TYPE() -> ENUM_OUT_EHS_WATEROUT_TYPE?
    {
        guard let item = self.first(where: {$0.key == 0x80D8}) else { return nil }
        guard case .enumeration(let rawCase) = item.payload else { return  nil }
        return .init(rawValue: rawCase)
    }

    public enum ENUM_OUT_EHS_WATEROUT_TYPE: UInt8
    {
        case Default = 0x00
        case seventyDegreesCelcius = 0x01
    }

    public func getVAR_out_install_Comp_Num() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8202}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_sensor_airout() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8204}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_highpress() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8206}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_lowpress() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8208}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_discharge1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x820A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_discharge2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x820C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_discharge3() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x820E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_ct1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8217}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_out_sensor_condout() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8218}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_suction() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x821A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_doubletube() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x821C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_outcd__sensor_eviin() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x821E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_eviout() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8220}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_control_target_discharge() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8223}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_load_fanstep1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8226}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_load_outeev1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8229}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_load_outeev2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x822A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_LOAD_OUTEEV3() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x822B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_LOAD_OUTEEV4() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x822C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_LOAD_OUTEEV5() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x822D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_load_evieev() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x822E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_error_code() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8235}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_order_cfreq_comp1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8236}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_target_cfreq_comp1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8237}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_cfreq_comp1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8238}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_sensor_dclink_voltage() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x823B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_load_fanrpm1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x823D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_load_fanrpm2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x823E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_refrigerants_volume() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x824F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_out_sensor_IPM1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8254}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_IPM2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8255}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_temp_water() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x825E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEIN1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x825F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEIN2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8260}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEIN3() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8261}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEIN4() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8262}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEIN5() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8263}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEOUT1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8264}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEOUT2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8265}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEOUT3() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8266}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEOUT4() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8267}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_PIPEOUT5() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8268}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_mcu_sensor_subcooler_in() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x826B}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_mcu_sensor_subcooler_out() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x826C}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_mcu_subcooler_eev() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x826D}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev1() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x826E}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x826F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev3() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8270}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev4() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8271}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev5() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8272}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_mcu_change_over_eev6() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8273}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_order_cfreq_comp2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8274}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_target_cfreq_comp2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8275}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_control_cfreq_comp2() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8276}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_sensor_ct2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8277}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_OCT1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8278}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_out_control_dsh1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x827A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_top1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8280}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_top2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8281}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_install_capa() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x8287}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_sensor_suction2_1sec() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x829A}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_sat_temp_high_pressure() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x829F}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_sat_temp_low_pressure() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82A0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_control_idu_total_abscapa() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x82A8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_OUT_INSTALL_COND_SIZE() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82AF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_out_sensor_midpress() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82B8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_PROJECT_CODE() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x82BC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getVAR_OUT_LOAD_FLUX_VARIABLE_VALVE() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82BD}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_CONTROL_BOX() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82BE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_out_sensor_condout2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82BF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_ACCUM_TEMP() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82C8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_ENGINE_WATER_TEMP() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82C9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_OIL_BYPASS_VALVE() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82CA}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_SUCTION_OVER_HEAT() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82CB}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_SUB_COND_OVER_HEAT() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82CC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_OVER_COOL() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82CD}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_COND_OVER_COOL() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82CE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_ENGINE_RPM() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82CF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_APPEARANCE_RPM() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82D0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_SUB_COND_EEV_STEP() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82D2}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_PHASE_CURRENT() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82DB}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_SENSOR_EVAIN() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82DE}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_TW1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82DF}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_TW2() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82E0}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_PRODUCT_OPTION_CAPA() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82E3}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 10.000000
    }

    public func getVAR_OUT_SENSOR_TOTAL_SUCTION() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82E7}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_LOAD_MCU_HR_BYPASS_EEV() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82E8}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_SENSOR_PFCM1() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82E9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_HIGH_OVERLOAD_DETECT() -> UInt16?
    {
        guard let item = self.first(where: {$0.key == 0x82F5}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getVAR_OUT_SENSOR_SUCTION3_1SEC() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x82F9}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        let int16 = Int16(bitPattern: rawValue)
        let double = Double(int16)
        return double / 10.000000
    }

    public func getVAR_OUT_LOAD_EVI_SOL_EEV() -> Int16?
    {
        guard let item = self.first(where: {$0.key == 0x82FC}) else { return nil }
        guard case .variable(let rawValue) = item.payload else { return nil }
        return Int16(bitPattern: rawValue)
    }

    public func getLVAR_out_load_comp1_running_time() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x8405}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_OUT_AUTO_INSPECT_RESULT0() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x840B}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_OUT_AUTO_INSPECT_RESULT1() -> UInt32?
    {
        guard let item = self.first(where: {$0.key == 0x840C}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getLVAR_OUT_CONTROL_WATTMETER_1W_1MIN_SUM() -> Double?
    {
        guard let item = self.first(where: {$0.key == 0x8413}) else { return nil }
        guard case .longVariable(let rawValue) = item.payload else { return nil }
        let double = Double(rawValue)
        return double / 1000.000000
    }

    public func getSTR_out_install_inverter_and_bootloader_info() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x8601}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_out_Base_Option() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x860A}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_OUT_INSTALL_MODEL_INFO() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x860D}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_OUT_INSTALL_OUTDOOR_SETUP_INFO() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x860F}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

    public func getSTR_OUT_REF_CHECK_INFO() -> Data?
    {
        guard let item = self.first(where: {$0.key == 0x8613}) else { return nil }
        guard case .structure(let rawValue) = item.payload else { return nil }
        return rawValue
    }

}

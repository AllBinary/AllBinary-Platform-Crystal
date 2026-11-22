#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# package org.allbinary.logic.system.hardware.linux

class LinuxHardware < JObject
    include HardwareInterface
    

    def jinit_LinuxHardware : self
        self
    end
    

    def getMultimedia(index : Int) : MediaInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getBridge(index : Int) : BridgeInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getCpu(index : Int) : CpuInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getEthernet(index : Int) : EthernetInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getFireWire(index : Int) : FireWireInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getHardDriveController(index : Int) : HardDriveControllerInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getHardDrive(index : Int) : HardDriveInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getMachineAccessControlAddress(index : Int) : MachineAccessControlAddressInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getMonitor(index : Int) : MonitorInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getUsb(index : Int) : UsbInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getVideo(index : Int) : VideoInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getComponent(index : Int) : HardwareComponentInterface?
        index = index.to_i32!
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def toString : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def compareTo(hardwareInterface : HardwareInterface?) : Bool
        return true
    end
    

    def difference(hardwareInterface : HardwareInterface?) : ABHashtable?
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
    

    def isNextHardware(nextLine : String) : Bool
        return false
    end
end


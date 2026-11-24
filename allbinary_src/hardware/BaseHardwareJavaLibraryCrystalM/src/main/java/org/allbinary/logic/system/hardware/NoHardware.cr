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
# package org.allbinary.logic.system.hardware

class NoHardware < JObject
    include HardwareInterface

    @@jst_instance : HardwareInterface? = nil

    def self.jst_instance : HardwareInterface?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HardwareInterface?) : HardwareInterface?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoHardware.new.jinit_NoHardware()
    end
    

    def self.getInstance : HardwareInterface?
        return JR.cast(NoHardware.jst_instance, HardwareInterface)
    end

    def jinit_NoHardware : self
        self
    end
    

    def getComponent(index : Int) : HardwareComponentInterface?
        index = index.to_i32!
        return JR.cast(NoHardwareComponent.getInstance(), HardwareComponentInterface)
    end
    

    def toString : String
        return "No Hardware"
    end
    

    def compareTo(hardwareInterface : HardwareInterface?) : Bool
        return true
    end
    

    def difference(hardwareInterface : HardwareInterface?) : ABHashtable?
        return StdUtil.getInstance().not_nil!.jf_NULL_TABLE
    end
end


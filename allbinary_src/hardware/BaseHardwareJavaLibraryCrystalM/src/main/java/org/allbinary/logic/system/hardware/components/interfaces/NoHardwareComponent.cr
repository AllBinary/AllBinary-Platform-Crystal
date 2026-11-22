# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.system.hardware.components.interfaces

class NoHardwareComponent < JObject
    include HardwareComponentInterface

    @@jst_instance : NoHardwareComponent? = nil

    def self.jst_instance : NoHardwareComponent?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoHardwareComponent?) : NoHardwareComponent?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoHardwareComponent.new.jinit_NoHardwareComponent()
    end
    

    def self.getInstance : NoHardwareComponent?
        return NoHardwareComponent.jst_instance
    end

    def jinit_NoHardwareComponent : self
        self
    end
    

    def compareTo(componentInterface : HardwareComponentInterface?) : Bool
        if self == componentInterface
            return true
        end
        return false
    end
    

    def toString : String
        return StringUtil.getInstance().not_nil!.jf_NULL_STRING
    end
end


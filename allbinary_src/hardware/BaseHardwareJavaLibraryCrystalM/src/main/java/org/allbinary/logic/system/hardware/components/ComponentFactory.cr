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
# package org.allbinary.logic.system.hardware.components

class ComponentFactory < JObject
    @j_VGA : Component? = nil

    def jf_VGA : Component?
        @j_VGA
    end

    def jf_VGA=(value : Component?) : Component?
        @j_VGA = value
    end
    @j_IDE : Component? = nil

    def jf_IDE : Component?
        @j_IDE
    end

    def jf_IDE=(value : Component?) : Component?
        @j_IDE = value
    end
    @j_SCSI : Component? = nil

    def jf_SCSI : Component?
        @j_SCSI
    end

    def jf_SCSI=(value : Component?) : Component?
        @j_SCSI = value
    end
    @j_BRIDGE : Component? = nil

    def jf_BRIDGE : Component?
        @j_BRIDGE
    end

    def jf_BRIDGE=(value : Component?) : Component?
        @j_BRIDGE = value
    end
    @j_ETHERNET : Component? = nil

    def jf_ETHERNET : Component?
        @j_ETHERNET
    end

    def jf_ETHERNET=(value : Component?) : Component?
        @j_ETHERNET = value
    end
    @j_USB : Component? = nil

    def jf_USB : Component?
        @j_USB
    end

    def jf_USB=(value : Component?) : Component?
        @j_USB = value
    end
    @j_MULTIMEDIA : Component? = nil

    def jf_MULTIMEDIA : Component?
        @j_MULTIMEDIA
    end

    def jf_MULTIMEDIA=(value : Component?) : Component?
        @j_MULTIMEDIA = value
    end
    @j_PCI : Component? = nil

    def jf_PCI : Component?
        @j_PCI
    end

    def jf_PCI=(value : Component?) : Component?
        @j_PCI = value
    end
    @j_RAID : Component? = nil

    def jf_RAID : Component?
        @j_RAID
    end

    def jf_RAID=(value : Component?) : Component?
        @j_RAID = value
    end
    @j_SMBUS : Component? = nil

    def jf_SMBUS : Component?
        @j_SMBUS
    end

    def jf_SMBUS=(value : Component?) : Component?
        @j_SMBUS = value
    end
    @j_PIC : Component? = nil

    def jf_PIC : Component?
        @j_PIC
    end

    def jf_PIC=(value : Component?) : Component?
        @j_PIC = value
    end
    @j_Class : Component? = nil

    def jf_Class : Component?
        @j_Class
    end

    def jf_Class=(value : Component?) : Component?
        @j_Class = value
    end
    @j_UNKNOWN : Component? = nil

    def jf_UNKNOWN : Component?
        @j_UNKNOWN
    end

    def jf_UNKNOWN=(value : Component?) : Component?
        @j_UNKNOWN = value
    end

    @@jst_instance : ComponentFactory? = nil

    def self.jst_instance : ComponentFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ComponentFactory?) : ComponentFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ComponentFactory.new.jinit_ComponentFactory()
    end
    

    def self.getInstance : ComponentFactory?
        return ComponentFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ComponentFactory : Nil
    @j_VGA = Component.new.jinit_Component("VGA")
    @j_IDE = Component.new.jinit_Component("IDE")
    @j_SCSI = Component.new.jinit_Component("SCSI")
    @j_BRIDGE = Component.new.jinit_Component("bridge")
    @j_ETHERNET = Component.new.jinit_Component("Ethernet")
    @j_USB = Component.new.jinit_Component("USB")
    @j_MULTIMEDIA = Component.new.jinit_Component("Multimedia")
    @j_PCI = Component.new.jinit_Component("PCI")
    @j_RAID = Component.new.jinit_Component("RAID")
    @j_SMBUS = Component.new.jinit_Component("SMBus")
    @j_PIC = Component.new.jinit_Component("PIC")
    @j_Class = Component.new.jinit_Component("Class")
    @j_UNKNOWN = Component.new.jinit_Component(CommonStrings.getInstance().not_nil!.jf_UNKNOWN)
    end

    def jinit_ComponentFactory : self
        jfields_ComponentFactory()
        self
    end
end


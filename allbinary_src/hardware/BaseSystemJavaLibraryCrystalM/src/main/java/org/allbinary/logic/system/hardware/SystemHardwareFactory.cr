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

class SystemHardwareFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @hardwareInterface : HardwareInterface? = nil

    def jf_hardwareInterface : HardwareInterface?
        @hardwareInterface
    end

    def jf_hardwareInterface=(value : HardwareInterface?) : HardwareInterface?
        @hardwareInterface = value
    end

    @@jst_instance : SystemHardwareFactory? = nil

    def self.jst_instance : SystemHardwareFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SystemHardwareFactory?) : SystemHardwareFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SystemHardwareFactory.new.jinit_SystemHardwareFactory()
    end
    

    def self.getInstance : SystemHardwareFactory?
        return SystemHardwareFactory.jst_instance
    end
    

    def self.static_toString : String
        systemHardwareFactory : SystemHardwareFactory? = SystemHardwareFactory.getInstance()
        osBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        osBuffer.not_nil!.append("Hardware Info: \n")
        if !(systemHardwareFactory.not_nil!.jf_hardwareInterface).nil?
            osBuffer.not_nil!.append(systemHardwareFactory.not_nil!.jf_hardwareInterface.not_nil!.toString())
        else
            osBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
        end
        return osBuffer.not_nil!.toString()
    end

    # Java field initializers run after the super constructor
    def jfields_SystemHardwareFactory : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @hardwareInterface = NoHardware.getInstance()
    end
    

    def jinit_SystemHardwareFactory : self
        jfields_SystemHardwareFactory()
        self
    end
    

    def getInstance(operatingSystemInterface : GenericOperatingSystem?) : HardwareInterface?
        begin
            if @hardwareInterface == NoHardware.getInstance()
                @hardwareInterface = HardwareFactory.getInstance().not_nil!.getInstance(operatingSystemInterface)
            end
            @logUtil.not_nil!.putF("Found Hardware", self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
        return @hardwareInterface
    end
end


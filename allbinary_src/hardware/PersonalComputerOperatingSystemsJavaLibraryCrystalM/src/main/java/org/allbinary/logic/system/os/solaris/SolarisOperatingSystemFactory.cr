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
# package org.allbinary.logic.system.os.solaris

class SolarisOperatingSystemFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : SolarisOperatingSystemFactory? = nil

    def self.jst_instance : SolarisOperatingSystemFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SolarisOperatingSystemFactory?) : SolarisOperatingSystemFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SolarisOperatingSystemFactory.new.jinit_SolarisOperatingSystemFactory()
    end
    

    def self.getInstance : SolarisOperatingSystemFactory?
        return SolarisOperatingSystemFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SolarisOperatingSystemFactory : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_SolarisOperatingSystemFactory : self
        jfields_SolarisOperatingSystemFactory()
        self
    end
    

    def getOperatingSystemInstance : GenericOperatingSystem?
        begin
            operatingSystems : OperatingSystems? = OperatingSystems.getInstance()
            osName : String = SystemProperties.getInstance().not_nil!.getName()
            operatingSystemInterface : GenericOperatingSystem? = nil
            if osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_SOLARIS) == 0
                operatingSystemInterface = SolarisOS.new.jinit_SolarisOS()
            else
                if operatingSystems.not_nil!.isUnknownSpecificOSAllowed()
                    operatingSystemInterface = SolarisOS.new.jinit_SolarisOS()
                else
                    raise (JException.new.jinit_JException("Specific Solaris OS Not Supported: " + osName)).not_nil!
                end
            end
            return operatingSystemInterface
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            if LogConfigTypes.jst_LOGGING.not_nil!.contains(LogConfigTypeFactory.getInstance().not_nil!.jf_FACTORYERROR)
                commonStrings : CommonStrings? = CommonStrings.getInstance()
                @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            end
            return NoOperatingSystem.jst_NO_OPERATING_SYSTEM
            else
                raise jex1
            end
        end
        return nil
    end
end


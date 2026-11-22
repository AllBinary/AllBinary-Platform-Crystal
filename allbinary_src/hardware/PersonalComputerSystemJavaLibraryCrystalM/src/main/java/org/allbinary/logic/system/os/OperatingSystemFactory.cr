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
# package org.allbinary.logic.system.os

class OperatingSystemFactory < JObject
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
    @genericOperatingSystem : GenericOperatingSystem? = nil

    def jf_genericOperatingSystem : GenericOperatingSystem?
        @genericOperatingSystem
    end

    def jf_genericOperatingSystem=(value : GenericOperatingSystem?) : GenericOperatingSystem?
        @genericOperatingSystem = value
    end
    @hasDetected : Bool = false

    def jf_hasDetected : Bool
        @hasDetected
    end

    def jf_hasDetected=(value : Bool) : Bool
        @hasDetected = value
    end

    @@jst_instance : OperatingSystemFactory? = nil

    def self.jst_instance : OperatingSystemFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : OperatingSystemFactory?) : OperatingSystemFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = OperatingSystemFactory.new.jinit_OperatingSystemFactory()
    end
    

    def self.getInstance : OperatingSystemFactory?
        return OperatingSystemFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_OperatingSystemFactory : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @genericOperatingSystem = NoOperatingSystem.jst_NO_OPERATING_SYSTEM
    @hasDetected = false
    end
    

    def jinit_OperatingSystemFactory : self
        jfields_OperatingSystemFactory()
        self
    end
    

    def getOperatingSystemInstance : GenericOperatingSystem?
        begin
            operatingSystems : OperatingSystems? = OperatingSystems.getInstance()
            systemProperties : SystemProperties? = SystemProperties.getInstance()
            osName : String = systemProperties.not_nil!.getName()
            osArch : String = systemProperties.not_nil!.getArch()
            osVersion : String = systemProperties.not_nil!.getVersion()
            if !@hasDetected
                @logUtil.not_nil!.putF("osName: " + osName, self, @commonStrings.not_nil!.jf_GET_INSTANCE)
                @hasDetected = true
                if osName.not_nil!.indexOf(operatingSystems.not_nil!.jf_LINUX) >= 0
                    if LogConfigTypes.jst_LOGGING.not_nil!.contains(LogConfigTypeFactory.getInstance().not_nil!.jf_FACTORYERROR)
                        @logUtil.not_nil!.putF("Found a Linux OS", self, @commonStrings.not_nil!.jf_GET_INSTANCE)
                    end
                    @genericOperatingSystem = LinuxOperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
                elsif osName.not_nil!.indexOf(operatingSystems.not_nil!.jf_WINDOWS) >= 0
                    if LogConfigTypes.jst_LOGGING.not_nil!.contains(LogConfigTypeFactory.getInstance().not_nil!.jf_FACTORYERROR)
                        @logUtil.not_nil!.putF("Found a Windows OS", self, @commonStrings.not_nil!.jf_GET_INSTANCE)
                    end
                    @genericOperatingSystem = WindowsOperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
                elsif osName.not_nil!.indexOf(operatingSystems.not_nil!.jf_SOLARIS) >= 0
                    if LogConfigTypes.jst_LOGGING.not_nil!.contains(LogConfigTypeFactory.getInstance().not_nil!.jf_FACTORYERROR)
                        @logUtil.not_nil!.putF("Found a Solaris OS", self, @commonStrings.not_nil!.jf_GET_INSTANCE)
                    end
                    @genericOperatingSystem = SolarisOperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
                else
                    raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("OS Not Supported: ").not_nil!.append(osName).not_nil!.toString())).not_nil!
                end
                log : Log? = LogFactory.getInstanceF(StringMaker.new.jinit_StringMaker().not_nil!.append("OperatingSystem Info: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(@genericOperatingSystem)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_GET_INSTANCE)
                JSystem.out_println(log.not_nil!.toString())
                @logUtil.not_nil!.putL(log)
            end
            return @genericOperatingSystem
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            if LogConfigTypes.jst_LOGGING.not_nil!.contains(LogConfigTypeFactory.getInstance().not_nil!.jf_FACTORYERROR)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_GET_INSTANCE, e)
            end
            return NoOperatingSystem.jst_NO_OPERATING_SYSTEM
            else
                raise jex1
            end
        end
        return nil
    end
end


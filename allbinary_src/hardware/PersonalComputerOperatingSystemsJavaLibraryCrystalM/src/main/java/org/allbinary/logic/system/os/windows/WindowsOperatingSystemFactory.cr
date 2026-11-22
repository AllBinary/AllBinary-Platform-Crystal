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
# package org.allbinary.logic.system.os.windows

class WindowsOperatingSystemFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : WindowsOperatingSystemFactory? = nil

    def self.jst_instance : WindowsOperatingSystemFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : WindowsOperatingSystemFactory?) : WindowsOperatingSystemFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = WindowsOperatingSystemFactory.new.jinit_WindowsOperatingSystemFactory()
    end
    

    def self.getInstance : WindowsOperatingSystemFactory?
        return WindowsOperatingSystemFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_WindowsOperatingSystemFactory : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_WindowsOperatingSystemFactory : self
        jfields_WindowsOperatingSystemFactory()
        self
    end
    

    def getOperatingSystemInstance : GenericOperatingSystem?
        begin
            operatingSystems : OperatingSystems? = OperatingSystems.getInstance()
            osName : String = SystemProperties.getInstance().not_nil!.getName()
            operatingSystemInterface : GenericOperatingSystem? = nil
            if osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS_NT) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            elsif osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS_10) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            elsif osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS_11) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            elsif osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS2000) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            elsif osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS_XP) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            elsif osName.not_nil!.compareTo(operatingSystems.not_nil!.jf_WINDOWS_VISTA) == 0
                operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
            else
                if operatingSystems.not_nil!.isUnknownSpecificOSAllowed()
                    operatingSystemInterface = WindowsOS.new.jinit_WindowsOS()
                else
                    raise (JException.new.jinit_JException("Specific Windows OS Not Supported: " + osName)).not_nil!
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


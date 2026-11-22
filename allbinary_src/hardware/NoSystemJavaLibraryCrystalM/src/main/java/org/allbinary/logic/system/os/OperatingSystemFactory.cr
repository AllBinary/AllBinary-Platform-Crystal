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
    @genericOperatingSystem : GenericOperatingSystem? = nil

    def jf_genericOperatingSystem : GenericOperatingSystem?
        @genericOperatingSystem
    end

    def jf_genericOperatingSystem=(value : GenericOperatingSystem?) : GenericOperatingSystem?
        @genericOperatingSystem = value
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
    @genericOperatingSystem = NoOperatingSystem.jst_NO_OPERATING_SYSTEM
    end
    

    def jinit_OperatingSystemFactory : self
        jfields_OperatingSystemFactory()
        self
    end
    

    def getOperatingSystemInstance : GenericOperatingSystem?
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        begin
            osString : String = StringMaker.new.jinit_StringMaker().not_nil!.append("OperatingSystem Info: ").not_nil!.append(@genericOperatingSystem.not_nil!.toString()).not_nil!.toString()
            JSystem.out_println(osString)
            @logUtil.not_nil!.putF(osString, self, commonStrings.not_nil!.jf_GET_INSTANCE)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            else
                raise jex1
            end
        end
        return @genericOperatingSystem
    end
end


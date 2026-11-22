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
# package org.allbinary.logic.system.security.licensing

class AbeClientInformation < ClientInformation
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_AbeClientInformation : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_AbeClientInformation(name : String, version : String, specialName : String, shortName : String) : self
        jinit_ClientInformation(name, version, specialName, shortName)
        jfields_AbeClientInformation()
        self
    end
    

    def init : Nil
        begin
            self.setOperatingSystemInterface(OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance())
            licenseInitInfo : LicenseInitInfo? = LicenseInitInfoUtil.getInstance().not_nil!.read()
            self.setLicenseId(licenseInitInfo.not_nil!.getLicenseId())
            self.setLicenseServers(licenseInitInfo.not_nil!.getServerList())
            stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
            if stringValidationUtil.not_nil!.isEmpty(self.getLicenseId())
                j_NONE : String = "No License Id"
                self.setLicenseId(j_NONE)
            end
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Special Name: ").not_nil!.append(self.getSpecialName()).not_nil!.toString(), self, commonStrings.not_nil!.jf_CONSTRUCTOR)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            logUtil : LogUtil? = LogUtil.getInstance()
            commonStrings = (CommonStrings.getInstance()).as(CommonStrings?)
            logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_CONSTRUCTOR, e)
            else
                raise jex1
            end
        end
    end
end


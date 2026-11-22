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

class PartnerIdentifierFileUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_FILE_NAME : String = ""

    def jf_FILE_NAME : String
        @j_FILE_NAME
    end

    def jf_FILE_NAME=(value : String) : String
        @j_FILE_NAME = value
    end

    @@jst_instance : PartnerIdentifierFileUtil? = nil

    def self.jst_instance : PartnerIdentifierFileUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PartnerIdentifierFileUtil?) : PartnerIdentifierFileUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PartnerIdentifierFileUtil.new.jinit_PartnerIdentifierFileUtil()
    end
    

    def self.getInstance : PartnerIdentifierFileUtil?
        return PartnerIdentifierFileUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PartnerIdentifierFileUtil : Nil
    @logUtil = LogUtil.getInstance()
    @j_FILE_NAME = "partner.txt"
    end

    def jinit_PartnerIdentifierFileUtil : self
        jfields_PartnerIdentifierFileUtil()
        self
    end
    

    def get : String
        begin
            resourceUtil : ResourceUtil? = ResourceUtil.getInstance()
            inputStream : JInputStream? = resourceUtil.not_nil!.getResourceAsStream(@j_FILE_NAME)
            inputStreamReader : JInputStreamReader? = JInputStreamReader.new.jinit_JInputStreamReader(inputStream)
            chars : Array(UInt16)? = Array(UInt16).new(30, 0_u16)
            size : Int32 = inputStreamReader.not_nil!.read(chars)
            partnerString : String = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            if size > 0
                partnerString = JR.newString(chars, 0, size)
            end
            inputStreamReader.not_nil!.close()
            return partnerString
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET, e)
            return StringUtil.getInstance().not_nil!.jf_NULL_STRING
            else
                raise jex1
            end
        end
        return ""
    end
end


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
# package org.allbinary.init.crypt.jcehelper

class BasicCryptUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @j_XML_START : String = ""

    def jf_XML_START : String
        @j_XML_START
    end

    def jf_XML_START=(value : String) : String
        @j_XML_START = value
    end

    @@jst_instance : BasicCryptUtil? = nil

    def self.jst_instance : BasicCryptUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicCryptUtil?) : BasicCryptUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicCryptUtil.new.jinit_BasicCryptUtil()
    end
    

    def self.getInstance : BasicCryptUtil?
        return BasicCryptUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicCryptUtil : Nil
    @logUtil = LogUtil.getInstance()
    @tsUtil = TsUtil.getInstance()
    @j_XML_START = "<?xml"
    end

    def jinit_BasicCryptUtil : self
        jfields_BasicCryptUtil()
        self
    end
    

    def getDecryptedInputStream(inputStream : JInputStream?, cryptInterface : CryptInterface?) : JInputStream?
        buffer : JByteArrayOutputStream? = JByteArrayOutputStream.new.jinit_JByteArrayOutputStream()
        ch : Int32 = 0
        while true
            ch = inputStream.not_nil!.read()
            if ch == -1
                break
            end
            buffer.not_nil!.write(ch)
        end
        decrypted : Array(Int8)? = cryptInterface.not_nil!.decrypt(buffer.not_nil!.toByteArray())
        decryptedString : String = JR.newString(decrypted)
        index : Int32 = decryptedString.not_nil!.indexOf(@j_XML_START)
        if index > 0
            decryptedString = decryptedString.not_nil!.substring(index)
        end
        return JByteArrayInputStream.new.jinit_JByteArrayInputStream(@tsUtil.not_nil!.getByteArray(decryptedString))
    end
end


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
# package org.allbinary.logic.system.security.crypt.jcehelper

class BasicCrypt < JObject
    include CryptInterface
    @byteUtil : ByteUtil? = nil

    def jf_byteUtil : ByteUtil?
        @byteUtil
    end

    def jf_byteUtil=(value : ByteUtil?) : ByteUtil?
        @byteUtil = value
    end
    @key : Array(Int8)? = nil

    def jf_key : Array(Int8)?
        @key
    end

    def jf_key=(value : Array(Int8)?) : Array(Int8)?
        @key = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicCrypt : Nil
    @byteUtil = ByteUtil.getInstance()
    
    end
    

    def jinit_BasicCrypt(keyAsString : String) : self
        jfields_BasicCrypt()
        key : Array(Int8)? = NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
        begin
            key = TsUtil.getInstance().not_nil!.getByteArray(keyAsString)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, self, "AbCrypt(alg,key)", e)
            else
                raise jex1
            end
        end
        @key = key
        self
    end
    

    def encrypt(array : Array(Int8)?) : Array(Int8)?
        begin
            return self.mutilate(array)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
            else
                raise jex2
            end
        end
        return nil
    end
    

    def decrypt(array : Array(Int8)?) : Array(Int8)?
        begin
            return self.mutilate(array)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
            else
                raise jex3
            end
        end
        return nil
    end
    

    def mutilate(array : Array(Int8)?) : Array(Int8)?
        value : Int8 = 0_i8
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @key.not_nil!.size
            value = @key.not_nil![index]
            array = @byteUtil.not_nil!.xor(array, value)
        end
        return array
    end
end


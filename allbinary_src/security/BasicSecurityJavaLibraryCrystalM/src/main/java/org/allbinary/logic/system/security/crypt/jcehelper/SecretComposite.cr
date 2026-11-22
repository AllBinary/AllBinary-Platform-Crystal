# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class SecretComposite < BaseSecretComposite
    @byteUtil : ByteUtil? = nil

    def jf_byteUtil : ByteUtil?
        @byteUtil
    end

    def jf_byteUtil=(value : ByteUtil?) : ByteUtil?
        @byteUtil = value
    end
    @cipher : JCipher? = nil

    def jf_cipher : JCipher?
        @cipher
    end

    def jf_cipher=(value : JCipher?) : JCipher?
        @cipher = value
    end
    @secretKey : JSecretKey? = nil

    def jf_secretKey : JSecretKey?
        @secretKey
    end

    def jf_secretKey=(value : JSecretKey?) : JSecretKey?
        @secretKey = value
    end
    @key : Array(Int8)? = nil

    def jf_key : Array(Int8)?
        @key
    end

    def jf_key=(value : Array(Int8)?) : Array(Int8)?
        @key = value
    end

    # Java field initializers run after the super constructor
    def jfields_SecretComposite : Nil
    @byteUtil = ByteUtil.getInstance()
    
    
    
    end
    

    def jinit_SecretComposite(secretKey : JSecretKey?, cipher : JCipher?, key : Array(Int8)?) : self
        jinit_BaseSecretComposite()
        jfields_SecretComposite()
        @secretKey = secretKey
        @cipher = cipher
        @key = key
        self
    end
    

    def encrypt(array : Array(Int8)?) : Array(Int8)?
        array = self.mutilate(array)
        @cipher.not_nil!.init(JCipher.jst_ENCRYPT_MODE, @secretKey)
        return @cipher.not_nil!.doFinal(array)
    end
    

    def decrypt(array : Array(Int8)?) : Array(Int8)?
        @cipher.not_nil!.init(JCipher.jst_DECRYPT_MODE, @secretKey)
        return self.mutilate(@cipher.not_nil!.doFinal(array))
    end
    

    def mutilate(array : Array(Int8)?) : Array(Int8)?
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @key.not_nil!.size
            value : Int8 = @key.not_nil![index]
            if (value).to_i32! < 8 && (value).to_i32! > 0
                array = @byteUtil.not_nil!.xorByte(array, (value).to_i32!)
            end
        end
        return array
    end
end


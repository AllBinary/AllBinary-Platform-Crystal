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

class AbCrypt < JObject
    include CryptInterface
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @secretComposite : BaseSecretComposite? = nil

    def jf_secretComposite : BaseSecretComposite?
        @secretComposite
    end

    def jf_secretComposite=(value : BaseSecretComposite?) : BaseSecretComposite?
        @secretComposite = value
    end
    @algorithm : String = ""

    def jf_algorithm : String
        @algorithm
    end

    def jf_algorithm=(value : String) : String
        @algorithm = value
    end

    # Java field initializers run after the super constructor
    def jfields_AbCrypt : Nil
    @tsUtil = TsUtil.getInstance()
    @secretComposite = BaseSecretComposite.jst_NULL_SECRET_COMPOSITE
    
    end
    

    def jinit_AbCrypt(algorithm : String) : self
        jfields_AbCrypt()
        @algorithm = algorithm
        self
    end
    

    def init(keyAsString : String) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        begin
            begin
                JSecurity.addProvider(BouncyCastleProvider.new.jinit_BouncyCastleProvider())
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_INIT, e)
                else
                    raise jex2
                end
            end
            key : Array(Int8)? = @tsUtil.not_nil!.getByteArray(keyAsString)
            keySpec : JKeySpec? = KeySpecFactory.getInstance().not_nil!.getInstance(@algorithm, key)
            keyFactory : JSecretKeyFactory? = JSecretKeyFactory.getInstance(@algorithm)
            secretKey : JSecretKey? = keyFactory.not_nil!.generateSecret(keySpec)
            cipher : JCipher? = JCipher.getInstance(@algorithm)
            @secretComposite = SecretComposite.new.jinit_SecretComposite(secretKey, cipher, key)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putOE("init Failed", self, commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
    

    def encrypt(array : Array(Int8)?) : Array(Int8)?
        begin
            return @secretComposite.not_nil!.encrypt(array)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
            else
                raise jex3
            end
        end
        return nil
    end
    

    def decrypt(array : Array(Int8)?) : Array(Int8)?
        begin
            return @secretComposite.not_nil!.decrypt(array)
        rescue jexc4 : ::Exception
            jex4 = JR.jthrowable(jexc4)
            if jex4.is_a?(JException)
                e = jex4.as(JException)
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY
            else
                raise jex4
            end
        end
        return nil
    end
end


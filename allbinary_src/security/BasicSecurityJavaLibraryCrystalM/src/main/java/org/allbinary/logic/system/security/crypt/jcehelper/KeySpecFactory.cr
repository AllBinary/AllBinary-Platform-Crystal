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

class KeySpecFactory < JObject
    @j_DES : String = ""

    def jf_DES : String
        @j_DES
    end

    def jf_DES=(value : String) : String
        @j_DES = value
    end
    @j_DESEDE : String = ""

    def jf_DESEDE : String
        @j_DESEDE
    end

    def jf_DESEDE=(value : String) : String
        @j_DESEDE = value
    end
    @j_BLOWFISH : String = ""

    def jf_BLOWFISH : String
        @j_BLOWFISH
    end

    def jf_BLOWFISH=(value : String) : String
        @j_BLOWFISH = value
    end

    @@jst_instance : KeySpecFactory? = nil

    def self.jst_instance : KeySpecFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : KeySpecFactory?) : KeySpecFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = KeySpecFactory.new.jinit_KeySpecFactory()
    end
    

    def self.getInstance : KeySpecFactory?
        return KeySpecFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_KeySpecFactory : Nil
    @j_DES = "DES"
    @j_DESEDE = "DESede"
    @j_BLOWFISH = "Blowfish"
    end
    

    def jinit_KeySpecFactory : self
        jfields_KeySpecFactory()
        self
    end
    

    def getInstance(algorithm : String, keyData : Array(Int8)?) : JKeySpec?
        begin
            tsUtil : TsUtil? = TsUtil.getInstance()
            if tsUtil.not_nil!.compareTo(algorithm, @j_DES) == 0
                return JDESKeySpec.new.jinit_JDESKeySpec(keyData)
            elsif tsUtil.not_nil!.compareTo(algorithm, @j_DESEDE) == 0
                return JDESedeKeySpec.new.jinit_JDESedeKeySpec(keyData)
            else
                raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
end


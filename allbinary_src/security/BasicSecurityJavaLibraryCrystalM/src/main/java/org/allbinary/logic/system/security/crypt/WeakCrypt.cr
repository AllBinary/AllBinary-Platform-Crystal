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
# package org.allbinary.logic.system.security.crypt

class WeakCrypt < JObject
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @abCrypt : AbCrypt? = nil

    def jf_abCrypt : AbCrypt?
        @abCrypt
    end

    def jf_abCrypt=(value : AbCrypt?) : AbCrypt?
        @abCrypt = value
    end

    @@jst_keys : Array(String)? = nil

    def self.jst_keys : Array(String)?
        jclinit
        @@jst_keys
    end

    def self.jst_keys=(value : Array(String)?) : Array(String)?
        jclinit
        @@jst_keys = value
    end

    @@jst_KEYMAX : Int32 = 0

    def self.jst_KEYMAX : Int32
        jclinit
        @@jst_KEYMAX
    end

    def self.jst_KEYMAX=(value : Int32) : Int32
        jclinit
        @@jst_KEYMAX = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_keys = ["qwres6qewrupoi1132790jfahleavi89398", "143uk32lngf8675gt1tv9214uvt924ut9u9", "12kvjlvlkv11445v12951v512v9m51295v1", "gampipoiupg4g43y5u238tu2485u20u0932", "a93u5uu02s2d2g3259u4395u409u093u9vu", "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j", "2lk5fn5j23nr8f0233vq35n23jn58vhy843", "9q24334m598t092tkn2iv0982456n425j9g", "5m9uvmt9436243m5v34g09d43i52ki35g99", "n123lr1iubiu2br32lv32rbu23b32ub2rlb", "va0u0iovji2ojpvj2oij22poiu4ov2uv28v", "bkk80gn2v9uc902340ut209pcup0u09utc9", "mn32m32neee23c42fn32nf3mf2n3fn2m3fm", "zcxpozo3423voizupovsijevnv3n33o33n3", "v0345324thv93h03893893vh893v8h3vhzz", "v8na898v8wyef9ty39yv98yaw39yeeyf8ye", "45zd36d34jg09434hfshp8uj9sy8s7cyr78", "b098yy0908vdvh983b2lb327980a76s5e5e", "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh", "vblkzhhzp8yvzi8u4t9856456zy3rv8a388", "da7696023rgf28dssfa98asd879hg32hewe", "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf", "4gijvqo8vq984hv984hj5j3511h832hf833"] of String
        @@jst_KEYMAX = WeakCrypt.jst_keys.not_nil!.size
    end

    # Java field initializers run after the super constructor
    def jfields_WeakCrypt : Nil
    @tsUtil = TsUtil.getInstance()
    @abCrypt = AbCrypt.new.jinit_AbCrypt(KeySpecFactory.getInstance().not_nil!.jf_DES)
    end
    

    def jinit_WeakCrypt(key : Int) : self
        key = key.to_i32!
        jfields_WeakCrypt()
        begin
            @abCrypt.not_nil!.init(WeakCrypt.jst_keys.not_nil![key])
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.not_nil!.jf_EXCEPTION, self, "SuperCrypt(key)", e)
            else
                raise jex1
            end
        end
        self
    end
    

    def encrypt(value : String) : String
        begin
            crypted : Array(Int8)? = @abCrypt.not_nil!.encrypt(@tsUtil.not_nil!.getByteArray(value))
            return DatabaseEncoder.encode(crypted)
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            PreLogUtil.putOE("Encrypt Failed", self, "encrypt", e)
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            else
                raise jex2
            end
        end
        return ""
    end
    

    def decrypt(value : String) : String
        begin
            decrypted : Array(Int8)? = @abCrypt.not_nil!.decrypt(DatabaseEncoder.decode(value))
            return JR.newString(decrypted)
        rescue jexc3 : ::Exception
            jex3 = JR.jthrowable(jexc3)
            if jex3.is_a?(JException)
                e = jex3.as(JException)
            PreLogUtil.putOE("decrypt Failed", self, "decrypt", e)
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
            else
                raise jex3
            end
        end
        return ""
    end
end


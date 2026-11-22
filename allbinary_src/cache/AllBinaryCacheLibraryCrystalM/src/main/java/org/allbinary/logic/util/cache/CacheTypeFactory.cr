# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

class CacheTypeFactory < JObject
    @j_NO_CACHE : CacheType? = nil

    def jf_NO_CACHE : CacheType?
        @j_NO_CACHE
    end

    def jf_NO_CACHE=(value : CacheType?) : CacheType?
        @j_NO_CACHE = value
    end
    @j_CACHE : CacheType? = nil

    def jf_CACHE : CacheType?
        @j_CACHE
    end

    def jf_CACHE=(value : CacheType?) : CacheType?
        @j_CACHE = value
    end
    @j_SET : CacheType? = nil

    def jf_SET : CacheType?
        @j_SET
    end

    def jf_SET=(value : CacheType?) : CacheType?
        @j_SET = value
    end
    @j_CACHE_VECTOR : CacheType? = nil

    def jf_CACHE_VECTOR : CacheType?
        @j_CACHE_VECTOR
    end

    def jf_CACHE_VECTOR=(value : CacheType?) : CacheType?
        @j_CACHE_VECTOR = value
    end

    @@jst_instance : CacheTypeFactory? = nil

    def self.jst_instance : CacheTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CacheTypeFactory?) : CacheTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CacheTypeFactory.new.jinit_CacheTypeFactory()
    end
    

    def self.getInstance : CacheTypeFactory?
        return CacheTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CacheTypeFactory : Nil
    @j_NO_CACHE = CacheType.new.jinit_CacheType(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
    @j_CACHE = CacheType.new.jinit_CacheType(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
    @j_SET = CacheType.new.jinit_CacheType(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, "Set")
    @j_CACHE_VECTOR = CacheType.new.jinit_CacheType(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
    end

    def jinit_CacheTypeFactory : self
        jfields_CacheTypeFactory()
        self
    end
end


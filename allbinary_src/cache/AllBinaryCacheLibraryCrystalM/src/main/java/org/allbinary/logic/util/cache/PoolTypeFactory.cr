# Generated Code Do Not Modify
# package org.allbinary.logic.util.cache

class PoolTypeFactory < JObject
    @j_VECTOR_POOL : PoolType? = nil

    def jf_VECTOR_POOL : PoolType?
        @j_VECTOR_POOL
    end

    def jf_VECTOR_POOL=(value : PoolType?) : PoolType?
        @j_VECTOR_POOL = value
    end

    @@jst_instance : PoolTypeFactory? = nil

    def self.jst_instance : PoolTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PoolTypeFactory?) : PoolTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PoolTypeFactory.new.jinit_PoolTypeFactory()
    end
    

    def self.getInstance : PoolTypeFactory?
        return PoolTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PoolTypeFactory : Nil
    @j_VECTOR_POOL = PoolType.new.jinit_PoolType(CacheTypeFactory.getInstance().not_nil!.jf_NO_CACHE)
    end

    def jinit_PoolTypeFactory : self
        jfields_PoolTypeFactory()
        self
    end
end


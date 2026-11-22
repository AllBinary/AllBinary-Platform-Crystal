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
# package org.allbinary.logic.util.cache

class CachePolicyFactory < JObject
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end
    @j_MAX_TIME_THOUSAND_MAX : CachePolicy? = nil

    def jf_MAX_TIME_THOUSAND_MAX : CachePolicy?
        @j_MAX_TIME_THOUSAND_MAX
    end

    def jf_MAX_TIME_THOUSAND_MAX=(value : CachePolicy?) : CachePolicy?
        @j_MAX_TIME_THOUSAND_MAX = value
    end
    @j_THIRTY_MINUTES_TEN_THOUSAND_MAX : CachePolicy? = nil

    def jf_THIRTY_MINUTES_TEN_THOUSAND_MAX : CachePolicy?
        @j_THIRTY_MINUTES_TEN_THOUSAND_MAX
    end

    def jf_THIRTY_MINUTES_TEN_THOUSAND_MAX=(value : CachePolicy?) : CachePolicy?
        @j_THIRTY_MINUTES_TEN_THOUSAND_MAX = value
    end
    @j_THIRTY_MINUTES_FIFTY_THOUSAND_MAX : CachePolicy? = nil

    def jf_THIRTY_MINUTES_FIFTY_THOUSAND_MAX : CachePolicy?
        @j_THIRTY_MINUTES_FIFTY_THOUSAND_MAX
    end

    def jf_THIRTY_MINUTES_FIFTY_THOUSAND_MAX=(value : CachePolicy?) : CachePolicy?
        @j_THIRTY_MINUTES_FIFTY_THOUSAND_MAX = value
    end
    @j_ONE_MINUTE_FIVE_MAX : CachePolicy? = nil

    def jf_ONE_MINUTE_FIVE_MAX : CachePolicy?
        @j_ONE_MINUTE_FIVE_MAX
    end

    def jf_ONE_MINUTE_FIVE_MAX=(value : CachePolicy?) : CachePolicy?
        @j_ONE_MINUTE_FIVE_MAX = value
    end
    @j_ONE_MINUTE_TEN_MAX : CachePolicy? = nil

    def jf_ONE_MINUTE_TEN_MAX : CachePolicy?
        @j_ONE_MINUTE_TEN_MAX
    end

    def jf_ONE_MINUTE_TEN_MAX=(value : CachePolicy?) : CachePolicy?
        @j_ONE_MINUTE_TEN_MAX = value
    end
    @j_ONE_MINUTE_ONE_HUNDRED_MAX : CachePolicy? = nil

    def jf_ONE_MINUTE_ONE_HUNDRED_MAX : CachePolicy?
        @j_ONE_MINUTE_ONE_HUNDRED_MAX
    end

    def jf_ONE_MINUTE_ONE_HUNDRED_MAX=(value : CachePolicy?) : CachePolicy?
        @j_ONE_MINUTE_ONE_HUNDRED_MAX = value
    end

    @@jst_instance : CachePolicyFactory? = nil

    def self.jst_instance : CachePolicyFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CachePolicyFactory?) : CachePolicyFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CachePolicyFactory.new.jinit_CachePolicyFactory()
    end
    

    def self.getInstance : CachePolicyFactory?
        return CachePolicyFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CachePolicyFactory : Nil
    @j_NAME = "lru"
    @j_MAX_TIME_THOUSAND_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, JLong.jst_MAX_VALUE, 1000)
    @j_THIRTY_MINUTES_TEN_THOUSAND_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, 1000 &* 60 &* 30, 10000)
    @j_THIRTY_MINUTES_FIFTY_THOUSAND_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, 1000 &* 60 &* 30, 100000)
    @j_ONE_MINUTE_FIVE_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, 1000 &* 60 &* 1, 5)
    @j_ONE_MINUTE_TEN_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, 1000 &* 60 &* 1, 10)
    @j_ONE_MINUTE_ONE_HUNDRED_MAX = CachePolicy.new.jinit_CachePolicy(@j_NAME, 1000 &* 60 &* 1, 100)
    end

    def jinit_CachePolicyFactory : self
        jfields_CachePolicyFactory()
        self
    end
end


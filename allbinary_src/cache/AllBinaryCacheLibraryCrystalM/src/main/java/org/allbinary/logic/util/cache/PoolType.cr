# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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

class PoolType < JObject
    @cacheType : CacheType? = nil

    def jf_cacheType : CacheType?
        @cacheType
    end

    def jf_cacheType=(value : CacheType?) : CacheType?
        @cacheType = value
    end
    

    def jinit_PoolType(cacheType : CacheType?) : self
        @cacheType = cacheType
        self
    end
    

    def getCacheType : CacheType?
        return @cacheType
    end
    

    def toString : String
        j_POOL_TYPE : String = "PoolType: "
        return j_POOL_TYPE + self.getCacheType().not_nil!.toString()
    end
end


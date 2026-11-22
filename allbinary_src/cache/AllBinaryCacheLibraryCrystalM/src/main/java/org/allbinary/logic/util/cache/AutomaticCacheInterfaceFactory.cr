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

class AutomaticCacheInterfaceFactory < JObject
    

    def self.getInstance(cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?, cacheType : CacheType?, cachePolicy : CachePolicy?) : AutomaticCacheInterface?
        raise (JException.new.jinit_JException("No such " + cacheType.not_nil!.toString())).not_nil!
    end
    

    def jinit_AutomaticCacheInterfaceFactory : self
        self
    end
end


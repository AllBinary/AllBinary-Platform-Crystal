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

class AbstractArrayListPool < JObject
    include PoolInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @buffers : BasicArrayList? = nil

    def jf_buffers : BasicArrayList?
        @buffers
    end

    def jf_buffers=(value : BasicArrayList?) : BasicArrayList?
        @buffers = value
    end
    @cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface? = nil

    def jf_cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?
        @cacheableInterfaceFactoryInterface
    end

    def jf_cacheableInterfaceFactoryInterface=(value : CacheableInterfaceFactoryInterface?) : CacheableInterfaceFactoryInterface?
        @cacheableInterfaceFactoryInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_AbstractArrayListPool : Nil
    @commonStrings = CommonStrings.getInstance()
    @buffers = BasicArrayListD.new.jinit_BasicArrayListD()
    
    end
    

    def jinit_AbstractArrayListPool(cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?) : self
        jfields_AbstractArrayListPool()
        @cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
        self
    end
    

    def clear : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def remove(key : JAny) : CacheableInterface?
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def add(cacheableInterface : CacheableInterface?) : Nil
        @buffers.not_nil!.add(cacheableInterface)
    end
    

    def addArray(cacheableInterfaces : Array(CacheableInterface?)?) : Nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < cacheableInterfaces.not_nil!.size
            @buffers.not_nil!.add(cacheableInterfaces.not_nil![index])
        end
    end
end


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

class IndexedBasicArrayListCache < BaseBasicArrayListCache
    include CacheInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @size : Int32 = 0

    def jf_size : Int32
        @size
    end

    def jf_size=(value : Int32) : Int32
        @size = value
    end
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end
    

    def self.createCache(size : Int) : IndexedBasicArrayListCache?
        size = size.to_i32!
        indexedBasicArrayListCache : IndexedBasicArrayListCache? = IndexedBasicArrayListCache.new.jinit_IndexedBasicArrayListCache()
        indexedBasicArrayListCache.not_nil!.init(size)
        return indexedBasicArrayListCache
    end

    # Java field initializers run after the super constructor
    def jfields_IndexedBasicArrayListCache : Nil
    @commonStrings = CommonStrings.getInstance()
    @size = 0
    @index = 0
    end
    

    def jinit_IndexedBasicArrayListCache : self
        jinit_BaseBasicArrayListCache()
        jfields_IndexedBasicArrayListCache()
        self
    end
    

    def init(size : Int) : Nil
        size = size.to_i32!
        if @size < size
            @list.not_nil!.ensureCapacity(size)
            index : Int32 = size &- 1
            jfor1 = false
            while true
                if jfor1
                    index &-= 1
                end
                jfor1 = true
                break unless index >= @size
                self.addDefault()
            end
            @size = size
        end
    end
    

    def getAt(index : Int) : JAny
        index = index.to_i32!
        return @list.not_nil!.jf_objectArray.not_nil![index]
    end
    

    def addDefault : Nil
    end
    

    def addObject(anyType : JAny) : Nil
        @list.not_nil!.add(anyType)
    end
    

    def add(cacheableInterface : CacheableInterface?) : Nil
        @list.not_nil!.add(cacheableInterface)
    end
    

    def addArray(cacheableInterfaces : Array(CacheableInterface?)?) : Nil
        raise (JException.new.jinit_JException("No Imple")).not_nil!
    end
    

    def clear : Nil
        @index = 0
    end
end


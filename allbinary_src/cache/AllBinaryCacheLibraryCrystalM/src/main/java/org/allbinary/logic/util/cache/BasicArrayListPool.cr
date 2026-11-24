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

class BasicArrayListPool < AbstractArrayListPool
    

    def jinit_BasicArrayListPool(cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?) : self
        jinit_AbstractArrayListPool(cacheableInterfaceFactoryInterface)
        self
    end
    

    def clear : Nil
        @buffers.not_nil!.clear()
    end
    

    def remove(key : JAny) : CacheableInterface?
        size : Int32 = @buffers.not_nil!.size()
        if size > 0
            return JR.cast(JR.cast(@buffers.not_nil!.removeAt(size &- 1), CacheableInterface), CacheableInterface)
        else
            return JR.cast(@cacheableInterfaceFactoryInterface.not_nil!.getInstance(key), CacheableInterface)
        end
        return nil
    end
    

    def addAll(usedList : BasicArrayList?) : Nil
        index : Int32 = usedList.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            anyType : CacheableInterface? = JR.cast(usedList.not_nil!.jf_objectArray.not_nil![index], CacheableInterface)
            self.add(anyType)
        end
        usedList.not_nil!.clear()
    end
    

    def releaseUsedBackToPool(usedList : BasicArrayList?) : Nil
        index : Int32 = usedList.not_nil!.size()
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            list : BasicArrayListCacheable? = JR.cast(usedList.not_nil!.jf_objectArray.not_nil![index], BasicArrayListCacheable)
            if list.not_nil!.size() == 0
                usedList.not_nil!.removeAt(index)
                self.add(list)
            end
        end
    end
end


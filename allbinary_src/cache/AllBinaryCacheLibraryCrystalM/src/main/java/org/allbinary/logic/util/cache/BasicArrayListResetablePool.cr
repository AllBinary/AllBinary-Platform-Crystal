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

class BasicArrayListResetablePool < AbstractArrayListPool
    

    def jinit_BasicArrayListResetablePool(cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface?) : self
        jinit_AbstractArrayListPool(cacheableInterfaceFactoryInterface)
        self
    end
    

    def clear : Nil
    end
    

    def remove(key : JAny) : CacheableInterface?
        size : Int32 = @buffers.not_nil!.size()
        if size > 0
            return JR.cast(@buffers.not_nil!.removeAt(size &- 1), CacheableInterface)
        else
            return @cacheableInterfaceFactoryInterface.not_nil!.getInstance(key)
        end
        return nil
    end
end


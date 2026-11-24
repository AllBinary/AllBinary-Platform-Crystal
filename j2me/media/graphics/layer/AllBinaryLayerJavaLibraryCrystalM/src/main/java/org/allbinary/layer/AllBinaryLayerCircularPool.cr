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
# package org.allbinary.layer

class AllBinaryLayerCircularPool < BaseCircularPool
    

    def jinit_AllBinaryLayerCircularPool : self
        jinit_BaseCircularPool()
        self
    end
    

    def initAllBinaryLayerCircularPool(allbinaryLayerFactoryInterface : AllBinaryLayerFactoryInterface?, total : Int) : Nil
        total = total.to_i32!
        @circularIndexUtil = CircularIndexUtil.createInstance(total)
        @j_OBJECT_ARRAY = Array(JAny).new(total, nil)
        localIndex : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                localIndex &+= 1
            end
            jfor1 = true
            break unless localIndex < total
            @j_OBJECT_ARRAY.not_nil![localIndex] = JR.cast(allbinaryLayerFactoryInterface.not_nil!.getInstance(), AllBinaryLayer)
        end
    end
end


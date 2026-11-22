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
# package org.allbinary.logic.util.event

class AllBinaryEventCircularPool < BaseCircularPool
    

    def jinit_AllBinaryEventCircularPool(max : Int) : self
        max = max.to_i32!
        jinit_BaseCircularPool()
        @j_OBJECT_ARRAY = Array(JAny).new(max, nil)
        @circularIndexUtil = CircularIndexUtil.createInstance(max)
        self
    end
    

    def initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface : AllBinaryEventObjectFactoryInterface?) : Nil
        @circularIndexUtil.not_nil!.setIndex(0)
        size : Int32 = @circularIndexUtil.not_nil!.getSize()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @j_OBJECT_ARRAY.not_nil![index] = allBinaryEventObjectFactoryInterface.not_nil!.getInstance()
        end
    end
end


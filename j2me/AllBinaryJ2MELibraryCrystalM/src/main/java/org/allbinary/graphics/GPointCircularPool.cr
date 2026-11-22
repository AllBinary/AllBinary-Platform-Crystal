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
# package org.allbinary.graphics

class GPointCircularPool < BaseCircularPool
    

    def jinit_GPointCircularPool(size : Int) : self
        size = size.to_i32!
        jinit_BaseCircularPool()
        @circularIndexUtil = CircularIndexUtil.createInstance(size)
        @j_OBJECT_ARRAY = Array(JAny).new(size, nil)
        index : Int32 = size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @j_OBJECT_ARRAY.not_nil![index] = CustomGPoint.getInstance3(0, 0)
        end
        self
    end
end


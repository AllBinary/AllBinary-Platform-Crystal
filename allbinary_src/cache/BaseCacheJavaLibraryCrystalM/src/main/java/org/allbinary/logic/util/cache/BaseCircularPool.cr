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

class BaseCircularPool < JObject
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @j_OBJECT_ARRAY : Array(JAny)? = nil

    def jf_OBJECT_ARRAY : Array(JAny)?
        @j_OBJECT_ARRAY
    end

    def jf_OBJECT_ARRAY=(value : Array(JAny)?) : Array(JAny)?
        @j_OBJECT_ARRAY = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseCircularPool : Nil
    @circularIndexUtil = CircularIndexUtil.jst_NULL_CIRCULAR_INDEX_UTIL
    @j_OBJECT_ARRAY = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT_ARRAY
    end

    def jinit_BaseCircularPool : self
        jfields_BaseCircularPool()
        self
    end
    

    def getNextInstance : JAny
        anyType : JAny = @j_OBJECT_ARRAY.not_nil![@circularIndexUtil.not_nil!.getIndex()]
        @circularIndexUtil.not_nil!.next_()
        return anyType
    end
    

    def init(allBinaryObjectFactoryInterface : AllBinaryObjectFactoryInterface?) : Nil
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
            @j_OBJECT_ARRAY.not_nil![index] = allBinaryObjectFactoryInterface.not_nil!.getInstance()
        end
    end
    

    def getInstance(index : Int) : JAny
        index = index.to_i32!
        return @j_OBJECT_ARRAY.not_nil![index]
    end
end


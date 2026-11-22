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
# package org.allbinary.util

class CircularIndexUtil < JObject
    @index : Int32 = 0

    def jf_index : Int32
        @index
    end

    def jf_index=(value : Int32) : Int32
        @index = value
    end
    @lastIndex : Int32 = 0

    def jf_lastIndex : Int32
        @lastIndex
    end

    def jf_lastIndex=(value : Int32) : Int32
        @lastIndex = value
    end
    @size : Int32 = 0

    def jf_size : Int32
        @size
    end

    def jf_size=(value : Int32) : Int32
        @size = value
    end

    @@jst_NULL_CIRCULAR_INDEX_UTIL : CircularIndexUtil? = nil

    def self.jst_NULL_CIRCULAR_INDEX_UTIL : CircularIndexUtil?
        jclinit
        @@jst_NULL_CIRCULAR_INDEX_UTIL
    end

    def self.jst_NULL_CIRCULAR_INDEX_UTIL=(value : CircularIndexUtil?) : CircularIndexUtil?
        jclinit
        @@jst_NULL_CIRCULAR_INDEX_UTIL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CIRCULAR_INDEX_UTIL = CircularIndexUtil.new.jinit_CircularIndexUtil(0, 0)
    end
    

    def self.createInstance(max : Int) : CircularIndexUtil?
        max = max.to_i32!
        return CircularIndexUtil.new.jinit_CircularIndexUtil(0, max)
    end
    

    def self.createInstanceAt(index : Int, max : Int) : CircularIndexUtil?
        index = index.to_i32!
        max = max.to_i32!
        return CircularIndexUtil.new.jinit_CircularIndexUtil(index, max)
    end

    # Java field initializers run after the super constructor
    def jfields_CircularIndexUtil : Nil
    @index = 0
    @lastIndex = 0
    @size = 0
    end
    

    def jinit_CircularIndexUtil(index : Int, size : Int) : self
        index = index.to_i32!
        size = size.to_i32!
        jfields_CircularIndexUtil()
        self.setSize(size)
        self.setIndex(index)
        self
    end
    

    def next_ : Int32
        if @index >= @lastIndex
            @index = 0
        else
            @index &+= 1
        end
        return @index
    end
    

    def previous : Int32
        if @index < 1
            @index = @lastIndex
        else
            @index &-= 1
        end
        return @index
    end
    

    def setIndex(index : Int) : Nil
        index = index.to_i32!
        if index > @lastIndex
            return
        end
        @index = index
    end
    

    def getIndex : Int32
        return @index
    end
    

    def setSize(size : Int) : Nil
        size = size.to_i32!
        @size = size
        @lastIndex = size &- 1
        @index = 0
    end
    

    def getSize : Int32
        return @size
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_INDEX_LABEL).not_nil!.appendint(@index).not_nil!.append("lastIndex: ").not_nil!.appendint(@lastIndex).not_nil!.append("size: ").not_nil!.appendint(@size).not_nil!.toString()
    end
end


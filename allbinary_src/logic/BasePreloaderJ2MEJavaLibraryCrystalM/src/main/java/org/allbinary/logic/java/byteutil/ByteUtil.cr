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
# package org.allbinary.logic.java.byteutil

class ByteUtil < JObject

    @@jst_instance : ByteUtil? = nil

    def self.jst_instance : ByteUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ByteUtil?) : ByteUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ByteUtil.new.jinit_ByteUtil()
    end
    

    def self.getInstance : ByteUtil?
        return ByteUtil.jst_instance
    end
    

    def jinit_ByteUtil : self
        self
    end
    

    def xor(array : Array(Int8)?, mask : Int) : Array(Int8)?
        mask = mask.to_i8!
        bytes : Array(Int8)? = Array(Int8).new(array.not_nil!.size, 0_i8)
        size : Int32 = array.not_nil!.size
        index : Int32 = 0
        currentByte : Int8 = 0_i8
        while index < size
            currentByte = array.not_nil![index]
            bytes.not_nil![index] = (((currentByte).to_i32 ^ (mask).to_i32)).to_i8!
            index &+= 1
        end
        return bytes
    end
    

    def not(array : Array(Int8)?) : Array(Int8)?
        bytes : Array(Int8)? = Array(Int8).new(array.not_nil!.size, 0_i8)
        size : Int32 = array.not_nil!.size
        index : Int32 = 0
        while index < size
            bytes.not_nil![index] = (~(array.not_nil![index]).to_i32).to_i8!
            index &+= 1
        end
        return bytes
    end
    

    def xorByte(array : Array(Int8)?, index : Int) : Array(Int8)?
        index = index.to_i32!
        mask : Int8 = 0_i8
        if index == 0
            mask = 1_i8
        end
        if index == 1
            mask = 2_i8
        end
        if index == 2
            mask = 4_i8
        end
        if index == 3
            mask = 8_i8
        end
        if index == 4
            mask = 16_i8
        end
        if index == 5
            mask = 32_i8
        end
        if index == 6
            mask = 64_i8
        end
        if index == 7
            mask = (-127).to_i8!
        end
        return self.xor(array, mask)
    end
    

    def compare(newByteArray : Array(Int8)?, oldByteArray : Array(Int8)?) : Bool
        if newByteArray.not_nil!.size != oldByteArray.not_nil!.size
            return false
        else
        end
        size : Int32 = newByteArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            if newByteArray.not_nil![index] != oldByteArray.not_nil![index]
                return false
            end
        end
        return true
    end
    

    def compareWithStats(newByteArray : Array(Int8)?, newSize : Int, oldByteArray : Array(Int8)?, stats : Array(Int32)?) : Bool
        newSize = newSize.to_i32!
        if newSize != oldByteArray.not_nil!.size
            stats.not_nil![0] = -1
            stats.not_nil![2] = newSize
            stats.not_nil![3] = oldByteArray.not_nil!.size
            return false
        else
            stats.not_nil![0] = newSize
        end
        stats.not_nil![1] = 0
        size : Int32 = newSize
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            if newByteArray.not_nil![index] != oldByteArray.not_nil![index]
                return false
            end
            stats.not_nil![1] &+= 1
        end
        return true
    end
end


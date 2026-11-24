# Generated Code Do Not Modify
# package org.allbinary.logic.string

class StringMaker < JObject
    @charArray : Array(UInt16)? = nil

    def jf_charArray : Array(UInt16)?
        @charArray
    end

    def jf_charArray=(value : Array(UInt16)?) : Array(UInt16)?
        @charArray = value
    end
    @currentLength : Int32 = 0

    def jf_currentLength : Int32
        @currentLength
    end

    def jf_currentLength=(value : Int32) : Int32
        @currentLength = value
    end
    

    def jinit_StringMaker : self
        @charArray = Array(UInt16).new(20, 0_u16)
        self
    end
    

    def append(string : String) : StringMaker?
        stringLength : Int32 = string.not_nil!.length()
        self.ensureCapacity(@currentLength &+ stringLength)
        string.not_nil!.getChars(0, stringLength, @charArray, @currentLength)
        @currentLength &+= stringLength
        return self
    end
    

    def appendchar(c : Int) : StringMaker?
        c = c.to_u16!
        self.ensureCapacity(@currentLength &+ 1)
        @charArray.not_nil![((@currentLength &+= 1) &- 1)] = c
        return self
    end
    

    def appendCharArray(charArray : Array(UInt16)?, start : Int, end_ : Int) : StringMaker?
        start = start.to_i32!
        end_ = end_.to_i32!
        self.ensureCapacity(@currentLength &+ (end_ &- start))
        index : Int32 = start
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < end_
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = charArray.not_nil![index]
        end
        return self
    end
    

    def appendbyte(b : Int) : StringMaker?
        b = b.to_i8!
        self.append(JInteger.toString(b))
        return self
    end
    

    def appendshort(b : Int) : StringMaker?
        b = b.to_i16!
        self.append(JInteger.toString(b))
        return self
    end
    

    def appendint(i : Int) : StringMaker?
        i = i.to_i32!
        self.append(JInteger.toString(i))
        return self
    end
    

    def appendlong(l : Int) : StringMaker?
        l = l.to_i64!
        self.append(JLong.toString(l))
        return self
    end
    

    def appendfloat(f : Number) : StringMaker?
        f = f.to_f32
        self.append(JFloat.toString(f))
        return self
    end
    

    def appendboolean(bool : Bool) : StringMaker?
        if bool
            self.ensureCapacity(@currentLength &+ 4)
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 't'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'r'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'u'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'e'.ord.to_u16
        else
            self.ensureCapacity(@currentLength &+ 5)
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'f'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'a'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'l'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 's'.ord.to_u16
            @charArray.not_nil![((@currentLength &+= 1) &- 1)] = 'e'.ord.to_u16
        end
        return self
    end
    

    def ensureCapacity(minSize : Int) : Nil
        minSize = minSize.to_i32!
        oldCapacity : Int32 = @charArray.not_nil!.size
        if minSize > oldCapacity
            newCapacity : Int32 = oldCapacity &* 3
            if newCapacity < minSize
                newCapacity = minSize
            end
            copy : Array(UInt16)? = Array(UInt16).new(newCapacity, 0_u16)
            min : Int32 = self.min(@charArray.not_nil!.size, newCapacity)
            JSystem.arraycopy(@charArray, 0, copy, 0, min)
            @charArray = copy
        end
    end
    

    def min(value : Int, value2 : Int) : Int32
        value = value.to_i32!
        value2 = value2.to_i32!
        return (((value <= value2) ? value : value2)).to_i32!
    end
    

    def delete(start : Int, end_ : Int) : StringMaker?
        start = start.to_i32!
        end_ = end_.to_i32!
        @currentLength &-= (end_ &- start)
        return self
    end
    

    def length : Int32
        return @currentLength
    end
    

    def toString : String
        return JR.newString(@charArray, 0, @currentLength)
    end
end


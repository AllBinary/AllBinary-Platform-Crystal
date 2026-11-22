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
# package org.allbinary.game.rand

class MyRandomFactory < JObject
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end
    @rand : JRandom? = nil

    def jf_rand : JRandom?
        @rand
    end

    def jf_rand=(value : JRandom?) : JRandom?
        @rand = value
    end

    @@jst_instance : MyRandomFactory? = nil

    def self.jst_instance : MyRandomFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MyRandomFactory?) : MyRandomFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MyRandomFactory.new.jinit_MyRandomFactory()
    end
    

    def self.getInstance : MyRandomFactory?
        return MyRandomFactory.jst_instance
    end
    

    def self.main(args : Array(String)?) : Nil
        randomFactory : MyRandomFactory? = MyRandomFactory.getInstance()
        stringBuilder : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        size2 : Int32 = 100
        index = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < size2
            stringBuilder.not_nil!.appendint(randomFactory.not_nil!.getAbsoluteNextInt(3)).not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        end
        JSystem.out_println(stringBuilder.not_nil!.toString())
        stringBuilder.not_nil!.delete(0, stringBuilder.not_nil!.length())
        intArray : Array(Int32)? = Array(Int32).new(52, 0)
        intArray2 : Array(Int32)? = Array(Int32).new(52, 0)
        size : Int32 = intArray.not_nil!.size
        index = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            intArray.not_nil![index] = index
            intArray2.not_nil![index] = index
        end
        randomFactory.not_nil!.shuffle2(intArray, intArray2)
        index = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < size
            stringBuilder.not_nil!.appendint(intArray.not_nil![index]).not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        end
        JSystem.out_println(stringBuilder.not_nil!.toString())
        stringBuilder.not_nil!.delete(0, stringBuilder.not_nil!.length())
        index = 0
        jfor6 = false
        while true
            if jfor6
                index &+= 1
            end
            jfor6 = true
            break unless index < size
            stringBuilder.not_nil!.appendint(intArray2.not_nil![index]).not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        end
        JSystem.out_println(stringBuilder.not_nil!.toString())
        found : Bool = false
        index = 0
        jfor7 = false
        while true
            if jfor7
                index &+= 1
            end
            jfor7 = true
            break unless index < size
            found = false
            index2 : Int32 = 0
            jfor8 = false
            while true
                if jfor8
                    index2 &+= 1
                end
                jfor8 = true
                break unless index2 < size
                if intArray.not_nil![index2] == index
                    found = true
                end
            end
            if !found
                raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            end
        end
    end

    # Java field initializers run after the super constructor
    def jfields_MyRandomFactory : Nil
    @mathUtil = MathUtil.getInstance()
    
    end
    

    def jinit_MyRandomFactory : self
        jfields_MyRandomFactory()
        @rand = JRandom.new.jinit_JRandom(JSystem.currentTimeMillis())
        self
    end
    

    def setSeed(seed : Int) : Nil
        seed = seed.to_i64!
        @rand = JRandom.new.jinit_JRandom(seed)
    end
    

    def getNextInt(range : Int) : Int32
        range = range.to_i32!
        div : Int32 = (JInteger.jst_MAX_VALUE.tdiv(range)) &+ 1
        return (@rand.not_nil!.nextInt().tdiv(div))
    end
    

    def getAbsoluteNextInt(range : Int) : Int32
        range = range.to_i32!
        return @mathUtil.not_nil!.abs(self.getNextInt(range))
    end
    

    def getAbsoluteNextIntAllowZero(range : Int) : Int32
        range = range.to_i32!
        if range == 0
            return 0
        else
            return @mathUtil.not_nil!.abs(self.getNextInt(range))
        end
        return 0
    end
    

    def shuffle(intArray : Array(Int32)?) : Nil
        self.shuffleTotal(intArray, intArray.not_nil!.size &* 7)
    end
    

    def shuffleTotal(intArray : Array(Int32)?, shuffleTotal : Int) : Nil
        shuffleTotal = shuffleTotal.to_i32!
        size : Int32 = intArray.not_nil!.size
        randomIndex : Int32 = 0
        randomIndex2 : Int32 = 0
        value : Int32 = 0
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < shuffleTotal
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray.not_nil![randomIndex]
            intArray.not_nil![randomIndex] = intArray.not_nil![randomIndex2]
            intArray.not_nil![randomIndex2] = value
        end
    end
    

    def shuffle2(intArray : Array(Int32)?, intArray2 : Array(Int32)?) : Nil
        self.shuffle2Total(intArray, intArray2, intArray.not_nil!.size &* 7)
    end
    

    def shuffle2Total(intArray : Array(Int32)?, intArray2 : Array(Int32)?, shuffleTotal : Int) : Nil
        shuffleTotal = shuffleTotal.to_i32!
        size : Int32 = intArray.not_nil!.size
        randomIndex : Int32 = 0
        randomIndex2 : Int32 = 0
        value : Int32 = 0
        value2 : Int32 = 0
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < shuffleTotal
            randomIndex = self.getAbsoluteNextIntAllowZero(size)
            randomIndex2 = self.getAbsoluteNextIntAllowZero(size)
            value = intArray.not_nil![randomIndex]
            value2 = intArray2.not_nil![randomIndex]
            intArray.not_nil![randomIndex] = intArray.not_nil![randomIndex2]
            intArray.not_nil![randomIndex2] = value
            intArray2.not_nil![randomIndex] = intArray2.not_nil![randomIndex2]
            intArray2.not_nil![randomIndex2] = value2
        end
    end
end


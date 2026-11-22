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

class BasicArrayListUtil < JObject
    @j_NULL_ARRAY_OF_ARRAY : Array(Array(BasicArrayList?)?)? = nil

    def jf_NULL_ARRAY_OF_ARRAY : Array(Array(BasicArrayList?)?)?
        @j_NULL_ARRAY_OF_ARRAY
    end

    def jf_NULL_ARRAY_OF_ARRAY=(value : Array(Array(BasicArrayList?)?)?) : Array(Array(BasicArrayList?)?)?
        @j_NULL_ARRAY_OF_ARRAY = value
    end
    @myRandomFactory : MyRandomFactory? = nil

    def jf_myRandomFactory : MyRandomFactory?
        @myRandomFactory
    end

    def jf_myRandomFactory=(value : MyRandomFactory?) : MyRandomFactory?
        @myRandomFactory = value
    end
    @immutableInstance : BasicArrayList? = nil

    def jf_immutableInstance : BasicArrayList?
        @immutableInstance
    end

    def jf_immutableInstance=(value : BasicArrayList?) : BasicArrayList?
        @immutableInstance = value
    end

    @@jst_instance : BasicArrayListUtil? = nil

    def self.jst_instance : BasicArrayListUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicArrayListUtil.new.jinit_BasicArrayListUtil()
    end
    

    def self.getInstance : BasicArrayListUtil?
        return BasicArrayListUtil.jst_instance
    end
    

    def self.main(args : Array(String)?) : Nil
        commonPhoneStrings : CommonPhoneStrings? = CommonPhoneStrings.getInstance()
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_ONE)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_TWO)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_THREE)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_FOUR)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_FIVE)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_SIX)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_SEVEN)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_EIGHT)
        list.not_nil!.add(commonPhoneStrings.not_nil!.jf_NINE)
        BasicArrayListUtil.getInstance().not_nil!.reverse(list)
        JSystem.out_println(list.not_nil!.toString())
    end

    # Java field initializers run after the super constructor
    def jfields_BasicArrayListUtil : Nil
    @j_NULL_ARRAY_OF_ARRAY = Array(Array(BasicArrayList?)?).new(0) { Array(BasicArrayList?).new(0, nil).as(Array(BasicArrayList?)?) }
    @myRandomFactory = MyRandomFactory.getInstance()
    @immutableInstance = ImmutableBasicArrayList.new.jinit_ImmutableBasicArrayList("Immutable", 0)
    end

    def jinit_BasicArrayListUtil : self
        jfields_BasicArrayListUtil()
        self
    end
    

    def getRandom(list : BasicArrayList?) : JAny
        i_random : Int32 = self.getRandomIndex(list)
        return list.not_nil!.jf_objectArray.not_nil![i_random]
    end
    

    def getRandomIndex(list : BasicArrayList?) : Int32
        return @myRandomFactory.not_nil!.getAbsoluteNextInt(list.not_nil!.size())
    end
    

    def reverse(list : BasicArrayList?) : Nil
        lastMinusOneIndex : Int32 = list.not_nil!.size() &- 2
        temp : JAny = nil
        size : Int32 = lastMinusOneIndex.tdiv(2)
        secondSwapIndex : Int32 = 0
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index <= size
            secondSwapIndex = lastMinusOneIndex &- index
            temp = list.not_nil!.removeAt(index)
            list.not_nil!.addAt(index, list.not_nil!.removeAt(secondSwapIndex))
            list.not_nil!.addAt(secondSwapIndex &+ 1, temp)
        end
    end
    

    def log(list : BasicArrayList?) : String
        j_S_LABEL : String = " s: "
        size : Int32 = list.not_nil!.size()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_TOTAL_LABEL)
        stringBuffer.not_nil!.appendint(size)
        index : Int32 = size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            usedList : BasicArrayList? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], BasicArrayList)
            stringBuffer.not_nil!.append(j_S_LABEL)
            stringBuffer.not_nil!.appendint(usedList.not_nil!.size())
        end
        return stringBuffer.not_nil!.toString()
    end
    

    def getImmutableInstance : BasicArrayList?
        return @immutableInstance
    end
end


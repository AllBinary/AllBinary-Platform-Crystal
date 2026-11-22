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
# package org.allbinary.logic.java.bool

class BooleanUtil < JObject
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end

    @@jst_instance : BooleanUtil? = nil

    def self.jst_instance : BooleanUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BooleanUtil?) : BooleanUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BooleanUtil.new.jinit_BooleanUtil()
    end
    

    def self.getInstance : BooleanUtil?
        return BooleanUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BooleanUtil : Nil
    @tsUtil = TsUtil.getInstance()
    end
    

    def jinit_BooleanUtil : self
        jfields_BooleanUtil()
        self
    end
    

    def getFromString(booleanString : String) : Bool
        stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
        booleanFactory : BooleanFactory? = BooleanFactory.getInstance()
        if stringValidationUtil.not_nil!.isEmpty(booleanString)
            return false
        end
        booleanStringLowerCase : String = booleanString.not_nil!.toLowerCase()
        if @tsUtil.not_nil!.compareTo(booleanStringLowerCase, booleanFactory.not_nil!.jf_TRUE_STRING) == 0
            return true
        elsif @tsUtil.not_nil!.compareTo(booleanStringLowerCase, booleanFactory.not_nil!.jf_FALSE_STRING) == 0
            return false
        else
            raise (JException.new.jinit_JException("Invalid booleanString - Must be true or false")).not_nil!
        end
        return false
    end
    

    def isStringBoolean(booleanString : String) : Bool
        booleanFactory : BooleanFactory? = BooleanFactory.getInstance()
        booleanStringLowerCase : String = booleanString.not_nil!.toLowerCase()
        if booleanStringLowerCase.not_nil!.compareTo(booleanFactory.not_nil!.jf_TRUE_STRING) == 0 || booleanStringLowerCase.not_nil!.compareTo(booleanFactory.not_nil!.jf_FALSE_STRING) == 0
            return true
        end
        return false
    end
    

    def toStringFromBooleanArray(booleanArray : Array(Bool)?) : String
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        size : Int32 = booleanArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            stringMaker.not_nil!.appendboolean(booleanArray.not_nil![index])
        end
        return stringMaker.not_nil!.toString()
    end
end


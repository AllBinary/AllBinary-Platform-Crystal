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
# package org.allbinary.logic.string

class StringValidationUtil < JObject
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end

    @@jst_instance : StringValidationUtil? = nil

    def self.jst_instance : StringValidationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : StringValidationUtil?) : StringValidationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = StringValidationUtil.new.jinit_StringValidationUtil()
    end
    

    def self.getInstance : StringValidationUtil?
        return StringValidationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_StringValidationUtil : Nil
    @stringUtil = StringUtil.getInstance()
    @tsUtil = TsUtil.getInstance()
    end
    

    def jinit_StringValidationUtil : self
        jfields_StringValidationUtil()
        self
    end
    

    def containsSpaces(value : String) : Bool
        if value.not_nil!.indexOf(' '.ord.to_u16) >= 0
            return true
        end
        return false
    end
    

    def isNumber(value : String) : Bool
        numberOfDecimalPoints : Int32 = 0
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < value.not_nil!.length()
            digit : UInt16 = value.not_nil!.charAt(index)
            if !self.isNumberFromChar(digit) && digit != '.'.ord.to_u16
                return false
            end
            if digit == '.'.ord.to_u16
                numberOfDecimalPoints &+= 1
                if numberOfDecimalPoints > 1
                    return false
                end
            end
        end
        return true
    end
    

    def isNumberFromChar(digit : Int) : Bool
        digit = digit.to_u16!
        if digit != '0'.ord.to_u16 && digit != '1'.ord.to_u16 && digit != '2'.ord.to_u16 && digit != '3'.ord.to_u16 && digit != '4'.ord.to_u16 && digit != '5'.ord.to_u16 && digit != '6'.ord.to_u16 && digit != '7'.ord.to_u16 && digit != '8'.ord.to_u16 && digit != '9'.ord.to_u16
            return false
        end
        return true
    end
    

    def isValidRequired(value : String, min : Int, max : Int) : Bool
        min = min.to_i32!
        max = max.to_i32!
        if value.not_nil!.length() < min || value.not_nil!.length() > max
            return false
        end
        return true
    end
    

    def isValidRequiredNumber(value : String, min : Int, max : Int) : Bool
        min = min.to_i32!
        max = max.to_i32!
        if self.isEmpty(value) || value.not_nil!.length() < min || value.not_nil!.length() > max
            return false
        end
        if !self.isNumber(value)
            return false
        end
        return true
    end
    

    def isValidNotRequired(value : String, min : Int, max : Int) : Bool
        min = min.to_i32!
        max = max.to_i32!
        if value.not_nil!.length() > 0
            if value.not_nil!.length() < min || value.not_nil!.length() > max
                return false
            end
        end
        return true
    end
    

    def isValidNotRequiredNumber(value : String, min : Int, max : Int) : Bool
        min = min.to_i32!
        max = max.to_i32!
        if value.not_nil!.length() > 0
            if @tsUtil.not_nil!.compareTo(value, @stringUtil.not_nil!.jf_NULL_STRING) == 0 || value.not_nil!.length() < min || value.not_nil!.length() > max
                return false
            end
            if !self.isNumber(value)
                return false
            end
        end
        return true
    end
    

    def isEmpty(string : String) : Bool
        if @tsUtil.not_nil!.compareTo(string, @stringUtil.not_nil!.jf_NULL_STRING) != 0 && @tsUtil.not_nil!.compareTo(string, @stringUtil.not_nil!.jf_EMPTY_STRING) != 0
            return false
        else
            return true
        end
        return false
    end
end


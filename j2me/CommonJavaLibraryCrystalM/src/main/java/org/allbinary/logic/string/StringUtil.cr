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

class StringUtil < JObject
    @j_INIT_STRING : String = ""

    def jf_INIT_STRING : String
        @j_INIT_STRING
    end

    def jf_INIT_STRING=(value : String) : String
        @j_INIT_STRING = value
    end
    @j_NULL_STRING : String = ""

    def jf_NULL_STRING : String
        @j_NULL_STRING
    end

    def jf_NULL_STRING=(value : String) : String
        @j_NULL_STRING = value
    end
    @j_EMPTY_STRING : String = ""

    def jf_EMPTY_STRING : String
        @j_EMPTY_STRING
    end

    def jf_EMPTY_STRING=(value : String) : String
        @j_EMPTY_STRING = value
    end
    @j_ONE_EMPTY_STRING_ARRAY : Array(String)? = nil

    def jf_ONE_EMPTY_STRING_ARRAY : Array(String)?
        @j_ONE_EMPTY_STRING_ARRAY
    end

    def jf_ONE_EMPTY_STRING_ARRAY=(value : Array(String)?) : Array(String)?
        @j_ONE_EMPTY_STRING_ARRAY = value
    end
    @j_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS : Array(Array(String)?)? = nil

    def jf_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS : Array(Array(String)?)?
        @j_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    end

    def jf_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS=(value : Array(Array(String)?)?) : Array(Array(String)?)?
        @j_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = value
    end
    @stringArray : Array(String)? = nil

    def jf_stringArray : Array(String)?
        @stringArray
    end

    def jf_stringArray=(value : Array(String)?) : Array(String)?
        @stringArray = value
    end

    @@jst_instance : StringUtil? = nil

    def self.jst_instance : StringUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : StringUtil?) : StringUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = StringUtil.new.jinit_StringUtil()
    end
    

    def self.getInstance : StringUtil?
        return StringUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_StringUtil : Nil
    @j_INIT_STRING = JR.newString("")
    @j_NULL_STRING = "null"
    @j_EMPTY_STRING = ""
    @j_ONE_EMPTY_STRING_ARRAY = [@j_EMPTY_STRING] of String
    @j_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = Array(Array(String)?).new(0) { Array(String).new(0, "").as(Array(String)?) }
    @stringArray = Array(String).new(0, "")
    end
    

    def jinit_StringUtil : self
        jfields_StringUtil()
        self
    end
    

    def getNonNull(string : String) : String
        return string
    end
    

    def getArrayInstance : Array(String)?
        return @stringArray
    end
    

    def count(string : String, aChar : Int) : Int32
        aChar = aChar.to_u16!
        count : Int32 = 0
        size : Int32 = string.not_nil!.length()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            if string.not_nil!.charAt(index) == aChar
                count &+= 1
            end
        end
        return count
    end
    

    def toString(anyType : JAny) : String
        if !(anyType).nil?
            return anyType.not_nil!.toString()
        else
            return @j_NULL_STRING
        end
        return ""
    end
end


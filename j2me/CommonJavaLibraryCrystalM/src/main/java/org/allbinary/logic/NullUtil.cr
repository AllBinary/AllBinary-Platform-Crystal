# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic

class NullUtil < JObject
    @j_NULL_OBJECT : JAny = nil

    def jf_NULL_OBJECT : JAny
        @j_NULL_OBJECT
    end

    def jf_NULL_OBJECT=(value : JAny) : JAny
        @j_NULL_OBJECT = value
    end
    @j_NULL_CLASS : String = ""

    def jf_NULL_CLASS : String
        @j_NULL_CLASS
    end

    def jf_NULL_CLASS=(value : String) : String
        @j_NULL_CLASS = value
    end
    @j_NULL_OBJECT_ARRAY : Array(JAny)? = nil

    def jf_NULL_OBJECT_ARRAY : Array(JAny)?
        @j_NULL_OBJECT_ARRAY
    end

    def jf_NULL_OBJECT_ARRAY=(value : Array(JAny)?) : Array(JAny)?
        @j_NULL_OBJECT_ARRAY = value
    end
    @j_NULL_CHAR_ARRAY : Array(UInt16)? = nil

    def jf_NULL_CHAR_ARRAY : Array(UInt16)?
        @j_NULL_CHAR_ARRAY
    end

    def jf_NULL_CHAR_ARRAY=(value : Array(UInt16)?) : Array(UInt16)?
        @j_NULL_CHAR_ARRAY = value
    end
    @j_NULL_BYTE_ARRAY : Array(Int8)? = nil

    def jf_NULL_BYTE_ARRAY : Array(Int8)?
        @j_NULL_BYTE_ARRAY
    end

    def jf_NULL_BYTE_ARRAY=(value : Array(Int8)?) : Array(Int8)?
        @j_NULL_BYTE_ARRAY = value
    end
    @j_NULL_SHORT_ARRAY_ARRAY : Array(Array(Int16)?)? = nil

    def jf_NULL_SHORT_ARRAY_ARRAY : Array(Array(Int16)?)?
        @j_NULL_SHORT_ARRAY_ARRAY
    end

    def jf_NULL_SHORT_ARRAY_ARRAY=(value : Array(Array(Int16)?)?) : Array(Array(Int16)?)?
        @j_NULL_SHORT_ARRAY_ARRAY = value
    end
    @j_NULL_INT_ARRAY : Array(Int32)? = nil

    def jf_NULL_INT_ARRAY : Array(Int32)?
        @j_NULL_INT_ARRAY
    end

    def jf_NULL_INT_ARRAY=(value : Array(Int32)?) : Array(Int32)?
        @j_NULL_INT_ARRAY = value
    end
    @j_NULL_INT_ARRAY_ARRAY : Array(Array(Int32)?)? = nil

    def jf_NULL_INT_ARRAY_ARRAY : Array(Array(Int32)?)?
        @j_NULL_INT_ARRAY_ARRAY
    end

    def jf_NULL_INT_ARRAY_ARRAY=(value : Array(Array(Int32)?)?) : Array(Array(Int32)?)?
        @j_NULL_INT_ARRAY_ARRAY = value
    end
    @j_NULL_INT_ARRAY_ARRAY_ARRAY : Array(Array(Array(Int32)?)?)? = nil

    def jf_NULL_INT_ARRAY_ARRAY_ARRAY : Array(Array(Array(Int32)?)?)?
        @j_NULL_INT_ARRAY_ARRAY_ARRAY
    end

    def jf_NULL_INT_ARRAY_ARRAY_ARRAY=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        @j_NULL_INT_ARRAY_ARRAY_ARRAY = value
    end
    @j_NULL_FLOAT_ARRAY : Array(Float32)? = nil

    def jf_NULL_FLOAT_ARRAY : Array(Float32)?
        @j_NULL_FLOAT_ARRAY
    end

    def jf_NULL_FLOAT_ARRAY=(value : Array(Float32)?) : Array(Float32)?
        @j_NULL_FLOAT_ARRAY = value
    end

    @@jst_instance : NullUtil? = nil

    def self.jst_instance : NullUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NullUtil?) : NullUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.new.jinit_NullUtil()
    end
    

    def self.getInstance : NullUtil?
        return NullUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_NullUtil : Nil
    @j_NULL_OBJECT = JObject.new
    @j_NULL_CLASS = JR.jclass(@j_NULL_OBJECT)
    @j_NULL_OBJECT_ARRAY = Array(JAny).new(0, nil)
    @j_NULL_CHAR_ARRAY = Array(UInt16).new(0, 0_u16)
    @j_NULL_BYTE_ARRAY = Array(Int8).new(0, 0_i8)
    @j_NULL_SHORT_ARRAY_ARRAY = Array(Array(Int16)?).new(0) { Array(Int16).new(0, 0_i16).as(Array(Int16)?) }
    @j_NULL_INT_ARRAY = Array(Int32).new(0, 0)
    @j_NULL_INT_ARRAY_ARRAY = Array(Array(Int32)?).new(0) { Array(Int32).new(0, 0).as(Array(Int32)?) }
    @j_NULL_INT_ARRAY_ARRAY_ARRAY = Array(Array(Array(Int32)?)?).new(0) { Array(Array(Int32)?).new(0) { Array(Int32).new(0, 0).as(Array(Int32)?) }.as(Array(Array(Int32)?)?) }
    @j_NULL_FLOAT_ARRAY = Array(Float32).new(0, 0_f32)
    end

    def jinit_NullUtil : self
        jfields_NullUtil()
        self
    end
end


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
# package org.allbinary.logic.io

class NullOutputStream < JOutputStream

    @@jst_NULL_OUTPUT_STREAM : NullOutputStream? = nil

    def self.jst_NULL_OUTPUT_STREAM : NullOutputStream?
        jclinit
        @@jst_NULL_OUTPUT_STREAM
    end

    def self.jst_NULL_OUTPUT_STREAM=(value : NullOutputStream?) : NullOutputStream?
        jclinit
        @@jst_NULL_OUTPUT_STREAM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_OUTPUT_STREAM = NullOutputStream.new.jinit_NullOutputStream()
    end

    def jinit_NullOutputStream : self
        jinit_JOutputStream()
        self
    end
    

    def write(b : Int) : Nil
        b = b.to_i32!
    end
    

    def write(b : Array(Int8)?, off : Int, len : Int) : Nil
        off = off.to_i32!
        len = len.to_i32!
    end
    

    def close : Nil
    end
end


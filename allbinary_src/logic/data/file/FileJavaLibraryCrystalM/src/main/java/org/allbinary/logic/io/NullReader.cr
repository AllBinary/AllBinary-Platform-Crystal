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

class NullReader < JReader

    @@jst_NULL_READER : NullReader? = nil

    def self.jst_NULL_READER : NullReader?
        jclinit
        @@jst_NULL_READER
    end

    def self.jst_NULL_READER=(value : NullReader?) : NullReader?
        jclinit
        @@jst_NULL_READER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_READER = NullReader.new.jinit_NullReader()
    end

    def jinit_NullReader : self
        jinit_JReader()
        self
    end
    

    def read : Int32
        return -1
    end
    

    def read(cbuf : Array(UInt16)?, off : Int, len : Int) : Int32
        off = off.to_i32!
        len = len.to_i32!
        return -1
    end
    

    def ready : Bool
        return false
    end
    

    def skip(n : Int) : Int64
        n = n.to_i64!
        return 0_i64
    end
    

    def close : Nil
    end
end


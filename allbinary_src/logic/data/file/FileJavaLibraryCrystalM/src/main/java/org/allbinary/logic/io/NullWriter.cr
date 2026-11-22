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

class NullWriter < JWriter

    @@jst_NULL_WRITER : NullWriter? = nil

    def self.jst_NULL_WRITER : NullWriter?
        jclinit
        @@jst_NULL_WRITER
    end

    def self.jst_NULL_WRITER=(value : NullWriter?) : NullWriter?
        jclinit
        @@jst_NULL_WRITER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_WRITER = NullWriter.new.jinit_NullWriter()
    end

    def jinit_NullWriter : self
        jinit_JWriter()
        self
    end
    

    def write(c : Int32) : Nil
    end
    

    def write(cbuf : Array(UInt16)?, off : Int32, len : Int32) : Nil
    end
    

    def write(str : String) : Nil
    end
    

    def write(str : String, off : Int32, len : Int32) : Nil
    end
    

    def flush : Nil
    end
    

    def close : Nil
    end
end


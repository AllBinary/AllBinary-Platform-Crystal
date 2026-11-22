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
# package org.allbinary

class TsUtil < JObject

    @@jst_instance : TsUtil? = nil

    def self.jst_instance : TsUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TsUtil?) : TsUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TsUtil.new.jinit_TsUtil()
    end
    

    def self.getInstance : TsUtil?
        return TsUtil.jst_instance
    end

    def jinit_TsUtil : self
        self
    end
    

    def longBitsToDouble(bits : Int) : Float64
        bits = bits.to_i64!
        return JDouble.longBitsToDouble(bits)
    end
    

    def intBitsToFloat(bits : Int) : Float32
        bits = bits.to_i32!
        return JFloat.intBitsToFloat(bits)
    end
    

    def hashCode(anyType : JAny) : Int32
        return anyType.not_nil!.hashCode()
    end
    

    def waitFor(any : JAny, timeoutMillis : Int) : Nil
        timeoutMillis = timeoutMillis.to_i64!
        anyType : JAny = any
        anyType.not_nil!.wait(timeoutMillis)
    end
    

    def compareTo(a : String, b : String) : Int32
        return a.not_nil!.compareTo(b)
    end
end


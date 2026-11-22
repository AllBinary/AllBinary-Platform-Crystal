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
    

    def hashCode(anyType : JAny) : Int32
        return anyType.not_nil!.hashCode()
    end
    

    def waitFor(any : JAny, timeoutMillis : Int) : Nil
        timeoutMillis = timeoutMillis.to_i64!
        anyType : JAny = any
        anyType.not_nil!.wait(timeoutMillis)
    end
    

    def getRecord(anyType : JAny, recordId : Int) : Array(Int8)?
        recordId = recordId.to_i32!
        recordStore : RecordStore? = JR.cast(anyType, RecordStore)
        data : Array(Int8)? = nil
        begin
            data = Array(Int8).new(recordStore.not_nil!.getRecordSize(recordId), 0_i8)
            recordStore.not_nil!.getRecord(recordId, data, 0)
        end
        return (data.not_nil!.size < 1 ? NullUtil.getInstance().not_nil!.jf_NULL_BYTE_ARRAY : data)
    end
    

    def compareTo(a : String, b : String) : Int32
        return a.not_nil!.compareTo(b)
    end
    

    def equalIgnoreCase(a : String, b : String) : Bool
        return a.not_nil!.equalsIgnoreCase(b)
    end
    

    def equalsNotstring(anyType : JAny, object2 : JAny) : Bool
        return anyType.not_nil!.equals(object2)
    end
    

    def toNumberFromChar(value : Int) : Int32
        value = value.to_u16!
        return (value).to_i32!
    end
    

    def toNumber(value : Int) : Int32
        value = value.to_i32!
        return value
    end
    

    def getByteArray(string : String) : Array(Int8)?
        return string.not_nil!.getBytes()
    end
    

    def isItemListener(owner : Displayable?) : Bool
        if (owner).is_a?(Form)
            return true
        else
            return false
        end
        return false
    end
    

    def printAvailableMethods(anyType : JAny) : Nil
    end
    

    def gc : Nil
        JSystem.gc()
    end
end


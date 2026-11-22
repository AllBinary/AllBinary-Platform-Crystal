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
# package org.allbinary.logic.communication.log

class PreLogUtil < JObject
    

    def self.put(specialMessage : String, anyType : JAny, functionName : String) : Nil
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def self.putOE(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def self.putSE(specialMessage : String, className : String, functionName : String, exception : JAny) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def jinit_PreLogUtil : self
        self
    end
end


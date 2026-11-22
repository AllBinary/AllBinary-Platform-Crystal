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

    def self.jst_LOG_SUCCESS : String
        "org.allbinary: "
    end
    

    def self.put(specialMessage : String, anyType : JAny, functionName : String) : Nil
        PreLogUtil.putOE(specialMessage, anyType, functionName, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def self.putOE(specialMessage : String, anyType : JAny, functionName : String, exception : JAny) : Nil
        className : String = CommonStrings.getInstance().not_nil!.jf_EMPTY
        if !(JR.jclass(anyType)).empty?
            className = JR.newString(JR.jclass(anyType))
        end
        message : String = LogFormatUtil.getInstance().not_nil!.get(className, functionName, specialMessage, exception)
        JSystem.out_print(PreLogUtil.jst_LOG_SUCCESS)
        JSystem.out_println(message)
    end
    

    def self.putS(specialMessage : String, className : String, functionName : String) : Nil
        PreLogUtil.putSE(specialMessage, className, functionName, NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
    

    def self.putSE(specialMessage : String, className : String, functionName : String, exception : JAny) : Nil
        message : String = LogFormatUtil.getInstance().not_nil!.get(className, functionName, specialMessage, exception)
        JSystem.out_print(PreLogUtil.jst_LOG_SUCCESS)
        JSystem.out_println(message)
    end
    

    def jinit_PreLogUtil : self
        self
    end
end


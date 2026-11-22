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
# package org.allbinary.game.input

class J2MEGameKey < Input
    

    def self.getString(keyCode : Int) : String
        keyCode = keyCode.to_i32!
        input : Input? = InputFactory.getInstance().not_nil!.getInstanceById(keyCode)
        if !(input).nil?
            return input.not_nil!.getName()
        else
            return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
        end
        return ""
    end
    

    def jinit_J2MEGameKey(key : Int, keyName : String) : self
        key = key.to_i32!
        jinit_Input(key, keyName)
        id : Int32 = self.getId()
        if id >= 0
            inputFactory : InputFactory? = InputFactory.getInstance()
            inputFactory.not_nil!.add(id, self)
        end
        self
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append("J2MEGameKey: ").not_nil!.append(super()).not_nil!.toString()
    end
end


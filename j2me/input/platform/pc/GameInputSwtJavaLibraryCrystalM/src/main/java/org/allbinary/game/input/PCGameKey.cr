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

class PCGameKey < Input
    

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
    

    def jinit_PCGameKey(keyCode : Int, name : String) : self
        keyCode = keyCode.to_i32!
        jinit_Input(keyCode, name)
        id : Int32 = self.getId()
        if id >= 0
            InputFactory.getInstance().not_nil!.add(id, self)
        end
        self
    end
    

    def toString : String
        return "PCGameKey: " + super()
    end
end


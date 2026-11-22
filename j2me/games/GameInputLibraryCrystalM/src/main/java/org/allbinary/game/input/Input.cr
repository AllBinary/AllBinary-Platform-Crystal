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

class Input < JObject
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end

    # Java field initializers run after the super constructor
    def jfields_Input : Nil
    
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_Input(id : Int, name : String) : self
        id = id.to_i32!
        jfields_Input()
        self.setId(id)
        self.setName(name)
        self
    end
    

    def getId : Int32
        return @id
    end
    

    def setId(key : Int) : Nil
        key = key.to_i32!
        @id = key
    end
    

    def getName : String
        return @name
    end
    

    def setName(keyName : String) : Nil
        @name = keyName
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Name: ")
        stringBuffer.not_nil!.append(self.getName())
        stringBuffer.not_nil!.append(" Id: ")
        stringBuffer.not_nil!.appendint(self.getId())
        return stringBuffer.not_nil!.toString()
    end
end


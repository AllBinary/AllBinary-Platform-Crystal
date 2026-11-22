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
# package org.allbinary.game

class PlayerType < JObject
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
    def jfields_PlayerType : Nil
    
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_PlayerType(name : String, value : Int) : self
        value = value.to_i32!
        jfields_PlayerType()
        @name = name
        @id = value
        self
    end
    

    def getId : Int32
        return @id
    end
    

    def getName : String
        return @name
    end
    

    def toString : String
        return self.getName()
    end
end


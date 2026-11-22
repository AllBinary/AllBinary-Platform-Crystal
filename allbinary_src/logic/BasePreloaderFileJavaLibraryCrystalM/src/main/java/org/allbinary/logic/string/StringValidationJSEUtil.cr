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
# package org.allbinary.logic.string

class StringValidationJSEUtil < JObject
    

    def self.isBlank(string : String) : Bool
        len : Int32 = string.not_nil!.length()
        i : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                i &+= 1
            end
            jfor1 = true
            break unless i < len
            c : UInt16 = string.not_nil!.charAt(i)
            if JCharacter.isWhitespace(c) == false
                return false
            end
        end
        return true
    end
    

    def jinit_StringValidationJSEUtil : self
        self
    end
end


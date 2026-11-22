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
# package org.allbinary.logic.java

class PrimitiveArrayToString < JObject
    

    def self.toString(floats : Array(Float32)?) : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < floats.not_nil!.size
            stringBuffer.not_nil!.appendfloat(floats.not_nil![index])
        end
        return stringBuffer.not_nil!.toString()
    end

    def jinit_PrimitiveArrayToString : self
        self
    end
end


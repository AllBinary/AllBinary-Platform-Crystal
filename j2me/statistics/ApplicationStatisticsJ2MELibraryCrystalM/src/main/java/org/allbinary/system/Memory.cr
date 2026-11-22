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
# package org.allbinary.system

class Memory < JObject
    

    def self.getInfo : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Memory: Free: ")
        stringBuffer.not_nil!.appendlong(JRuntime.getRuntime().not_nil!.freeMemory())
        stringBuffer.not_nil!.append(" Total: ")
        stringBuffer.not_nil!.appendlong(JRuntime.getRuntime().not_nil!.totalMemory())
        return stringBuffer.not_nil!.toString()
    end

    def jinit_Memory : self
        self
    end
end


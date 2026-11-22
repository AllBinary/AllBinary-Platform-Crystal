# 
# AllBinary Open License Version 1 
# Copyright (c) 2007 AllBinary 
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
# package org.allbinary.logic.util.cache

class CacheType < JObject
    @vendor : String = ""

    def jf_vendor : String
        @vendor
    end

    def jf_vendor=(value : String) : String
        @vendor = value
    end
    @type_ : String = ""

    def jf_type : String
        @type_
    end

    def jf_type=(value : String) : String
        @type_ = value
    end
    

    def jinit_CacheType(vendor : String, type_ : String) : self
        @vendor = vendor
        @type_ = type_
        self
    end
    

    def getVendor : String
        return @vendor
    end
    

    def getType : String
        return @type_
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("CacheType: Vendor: ")
        stringBuffer.not_nil!.append(self.getVendor())
        stringBuffer.not_nil!.append(" Type: ")
        stringBuffer.not_nil!.append(self.getType())
        return stringBuffer.not_nil!.toString()
    end
end


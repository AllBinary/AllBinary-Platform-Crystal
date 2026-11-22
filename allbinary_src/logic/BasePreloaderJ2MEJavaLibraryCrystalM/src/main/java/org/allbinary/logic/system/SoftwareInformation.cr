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
# package org.allbinary.logic.system

class SoftwareInformation < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @shortName : String = ""

    def jf_shortName : String
        @shortName
    end

    def jf_shortName=(value : String) : String
        @shortName = value
    end
    @version : String = ""

    def jf_version : String
        @version
    end

    def jf_version=(value : String) : String
        @version = value
    end
    

    def jinit_SoftwareInformation(name : String, version : String, shortName : String) : self
        @name = name
        @version = version
        @shortName = StringMaker.new.jinit_StringMaker().not_nil!.append(shortName).not_nil!.append(KotlinUtil.getShortName()).not_nil!.toString()
        self
    end
    

    def getName : String
        return @name
    end
    

    def getVersion : String
        return @version
    end
    

    def toShortString : String
        return @shortName
    end
    

    def toString : String
        j_NAME : String = "Name: "
        j_VERSION : String = "Version: "
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(j_NAME)
        stringBuffer.not_nil!.append(self.getName())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(j_VERSION)
        stringBuffer.not_nil!.append(self.getVersion())
        return stringBuffer.not_nil!.toString()
    end
end


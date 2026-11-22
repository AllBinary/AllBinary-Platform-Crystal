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
# package org.allbinary.logic.communication.log.config.type

class LogConfigType < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @description : String = ""

    def jf_description : String
        @description
    end

    def jf_description=(value : String) : String
        @description = value
    end
    

    def jinit_LogConfigType(name : String, description : String) : self
        @name = name
        @description = description
        self
    end
    

    def getName : String
        return @name
    end
    

    def getDescription : String
        return @description
    end
    

    def setName(value : String) : Nil
        @name = value
    end
    

    def setDescription(value : String) : Nil
        @description = value
    end
end


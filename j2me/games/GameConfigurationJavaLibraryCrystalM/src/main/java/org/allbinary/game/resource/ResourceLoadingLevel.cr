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
# package org.allbinary.game.resource

class ResourceLoadingLevel < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @level : Int32 = 0

    def jf_level : Int32
        @level
    end

    def jf_level=(value : Int32) : Int32
        @level = value
    end
    

    def jinit_ResourceLoadingLevel(name : String, level : Int) : self
        level = level.to_i32!
        @name = name
        @level = level
        self
    end
    

    def getLevel : Int32
        return @level
    end
    

    def getName : String
        return @name
    end
end


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
# package org.allbinary.logic.util.cache

class CachePolicy < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @maxTime : Int64 = 0_i64

    def jf_maxTime : Int64
        @maxTime
    end

    def jf_maxTime=(value : Int64) : Int64
        @maxTime = value
    end
    @maxSize : Int64 = 0_i64

    def jf_maxSize : Int64
        @maxSize
    end

    def jf_maxSize=(value : Int64) : Int64
        @maxSize = value
    end
    

    def jinit_CachePolicy(name : String, maxTime : Int, maxSize : Int) : self
        maxTime = maxTime.to_i64!
        maxSize = maxSize.to_i64!
        @name = name
        self.setMaxTime(maxTime)
        self.setMaxSize(maxSize)
        self
    end
    

    def getMaxTime : Int64
        return @maxTime
    end
    

    def setMaxTime(maxTime : Int) : Nil
        maxTime = maxTime.to_i64!
        @maxTime = maxTime
    end
    

    def getMaxSize : Int64
        return @maxSize
    end
    

    def setMaxSize(maxSize : Int) : Nil
        maxSize = maxSize.to_i64!
        @maxSize = maxSize
    end
    

    def getName : String
        return @name
    end
end


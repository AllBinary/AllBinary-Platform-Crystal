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
# package org.allbinary.game.score

class Scoreable < JObject
    include ScoreableInterface
    @points : Int32 = 0

    def jf_points : Int32
        @points
    end

    def jf_points=(value : Int32) : Int32
        @points = value
    end

    @@jst_ID : JInteger? = nil

    def self.jst_ID : JInteger?
        jclinit
        @@jst_ID
    end

    def self.jst_ID=(value : JInteger?) : JInteger?
        jclinit
        @@jst_ID = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_ID = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(3)
    end
    

    def jinit_Scoreable(points : Int) : self
        points = points.to_i32!
        @points = points
        self
    end
    

    def addPoints(points : Int) : Nil
        points = points.to_i32!
        @points &+= points
    end
    

    def removePoints(points : Int) : Nil
        points = points.to_i32!
        @points &-= points
    end
    

    def setPoints(points : Int) : Nil
        points = points.to_i32!
        @points = points
    end
    

    def getPoints : Int32
        return @points
    end
end


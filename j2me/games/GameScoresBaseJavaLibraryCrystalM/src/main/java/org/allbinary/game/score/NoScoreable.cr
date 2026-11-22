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

class NoScoreable < Scoreable

    @@jst_SINGLETON : NoScoreable? = nil

    def self.jst_SINGLETON : NoScoreable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NoScoreable?) : NoScoreable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NoScoreable.new.jinit_NoScoreable()
    end
    

    def self.getInstance : NoScoreable?
        return NoScoreable.jst_SINGLETON
    end
    

    def jinit_NoScoreable : self
        jinit_Scoreable(0)
        self
    end
    

    def addPoints(points : Int) : Nil
        points = points.to_i32!
    end
    

    def removePoints(points : Int) : Nil
        points = points.to_i32!
    end
end


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
# package org.allbinary.game.ag.life

class Life < JObject
    include LifeInterface
    @lives : Int16 = 0_i16

    def jf_lives : Int16
        @lives
    end

    def jf_lives=(value : Int16) : Int16
        @lives = value
    end
    @startLives : Int16 = 0_i16

    def jf_startLives : Int16
        @startLives
    end

    def jf_startLives=(value : Int16) : Int16
        @startLives = value
    end
    @maxlives : Int16 = 0_i16

    def jf_maxlives : Int16
        @maxlives
    end

    def jf_maxlives=(value : Int16) : Int16
        @maxlives = value
    end

    @@jst_NO_LIFE : Life? = nil

    def self.jst_NO_LIFE : Life?
        jclinit
        @@jst_NO_LIFE
    end

    def self.jst_NO_LIFE=(value : Life?) : Life?
        jclinit
        @@jst_NO_LIFE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_LIFE = Life.createLife()
    end
    

    def self.createLife : Life?
        begin
            return Life.new.jinit_Life(0_i16, 0_i16)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
    

    def jinit_Life(lives : Int, maxlives : Int) : self
        lives = lives.to_i16!
        maxlives = maxlives.to_i16!
        @maxlives = maxlives
        if lives > @maxlives
            raise (JException.new.jinit_JException("To Many Lives")).not_nil!
        end
        @lives = lives
        @startLives = lives
        self
    end
    

    def get : Int16
        return @lives
    end
    

    def set(lives : Int) : Nil
        lives = lives.to_i16!
        @lives = lives
    end
    

    def reset : Nil
        @lives = @startLives
    end
    

    def add(lives : Int) : Nil
        lives = lives.to_i16!
        if !self.reachedLimit()
            if (@lives).to_i32 &+ (lives).to_i32 <= (self.getMaxlives()).to_i32!
                @lives = (((@lives).to_i32 &+ (lives).to_i32)).to_i16!
            else
                @lives = self.getMaxlives()
            end
        end
    end
    

    def isAlive : Bool
        if (@lives).to_i32! <= 0
            return false
        else
            return true
        end
        return false
    end
    

    def getMaxlives : Int16
        return @maxlives
    end
    

    def reachedLimit : Bool
        if @lives > @maxlives || (@lives).to_i32! < 0
            return true
        else
            return false
        end
        return false
    end
    

    def deaths(lives : Int) : Nil
        lives = lives.to_i16!
        if !self.reachedLimit()
            if (@lives).to_i32 &- (lives).to_i32 >= 0
                @lives = (((@lives).to_i32 &- (lives).to_i32)).to_i16!
            else
                @lives = 0_i16
            end
        end
    end
    

    def getStartLives : Int16
        return @startLives
    end
    

    def setStartLives(startLives : Int) : Nil
        startLives = startLives.to_i16!
        @startLives = startLives
    end
end


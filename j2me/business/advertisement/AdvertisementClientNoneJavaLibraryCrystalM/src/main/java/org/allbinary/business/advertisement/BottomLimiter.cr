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
# package org.allbinary.business.advertisement

class BottomLimiter < JObject
    @bottom : Int32 = 0

    def jf_bottom : Int32
        @bottom
    end

    def jf_bottom=(value : Int32) : Int32
        @bottom = value
    end
    @deltaY : Int32 = 0

    def jf_deltaY : Int32
        @deltaY
    end

    def jf_deltaY=(value : Int32) : Int32
        @deltaY = value
    end
    @lower : Int32 = 0

    def jf_lower : Int32
        @lower
    end

    def jf_lower=(value : Int32) : Int32
        @lower = value
    end
    @higher : Int32 = 0

    def jf_higher : Int32
        @higher
    end

    def jf_higher=(value : Int32) : Int32
        @higher = value
    end

    @@jst_instance : BottomLimiter? = nil

    def self.jst_instance : BottomLimiter?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BottomLimiter?) : BottomLimiter?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BottomLimiter.new.jinit_BottomLimiter()
    end
    

    def self.getInstance : BottomLimiter?
        return BottomLimiter.jst_instance
    end
    

    def jinit_BottomLimiter : self
        self
    end
    

    def init(lower : Int, higher : Int) : Nil
        lower = lower.to_i32!
        higher = higher.to_i32!
        @lower = lower
        @higher = higher
    end
    

    def update : Nil
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        gameAdState : GameAdState? = GameAdStateFactory.getInstance().not_nil!.getCurrentInstance()
        if gameAdState.not_nil!.isShowingAt()
            @deltaY = @higher
        else
            @deltaY = @lower
        end
        @bottom = displayInfo.not_nil!.getLastHeight() &- @deltaY
    end
    

    def getDeltaY : Int32
        return @deltaY
    end
    

    def getBottom : Int32
        return @bottom
    end
end


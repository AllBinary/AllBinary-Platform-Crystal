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
# package org.allbinary.game.ag.layer.hud.basic.health

class HealthHudWidget < BasicHud
    include PaintableInterface
    include HealthListenerInterface
    @healthScale : Int32 = 0

    def jf_healthScale : Int32
        @healthScale
    end

    def jf_healthScale=(value : Int32) : Int32
        @healthScale = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @healthInterface : Health? = nil

    def jf_healthInterface : Health?
        @healthInterface
    end

    def jf_healthInterface=(value : Health?) : Health?
        @healthInterface = value
    end
    @max : Int32 = 0

    def jf_max : Int32
        @max
    end

    def jf_max=(value : Int32) : Int32
        @max = value
    end
    @xArray : Array(Int32)? = nil

    def jf_xArray : Array(Int32)?
        @xArray
    end

    def jf_xArray=(value : Array(Int32)?) : Array(Int32)?
        @xArray = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @slowBeatTimeDelayHelper : TimeDelayHelper? = nil

    def jf_slowBeatTimeDelayHelper : TimeDelayHelper?
        @slowBeatTimeDelayHelper
    end

    def jf_slowBeatTimeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @slowBeatTimeDelayHelper = value
    end
    @mediumBeatTimeDelayHelper : TimeDelayHelper? = nil

    def jf_mediumBeatTimeDelayHelper : TimeDelayHelper?
        @mediumBeatTimeDelayHelper
    end

    def jf_mediumBeatTimeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @mediumBeatTimeDelayHelper = value
    end
    @fastBeatTimeDelayHelper : TimeDelayHelper? = nil

    def jf_fastBeatTimeDelayHelper : TimeDelayHelper?
        @fastBeatTimeDelayHelper
    end

    def jf_fastBeatTimeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @fastBeatTimeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_HealthHudWidget : Nil
    
    
    
    
    
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    @timeDelayHelper = NoTimeDelayHelper.jst_SINGLETON
    @slowBeatTimeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(1280)
    @mediumBeatTimeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(640)
    @fastBeatTimeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(320)
    end
    

    def jinit_HealthHudWidget(animationInterface : Animation?, healthInterface : Health?, location : Int, direction : Int) : self
        location = location.to_i32!
        direction = direction.to_i32!
        jinit_BasicHud(location, direction, 2, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        jfields_HealthHudWidget()
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.not_nil!.addListener(self)
        @healthScale = (@healthInterface.not_nil!.getMaxHealth().tdiv(6)) &+ 1
        self.onHealthChange()
        @updateMaxWidth = healthInterface.not_nil!.getMaxHealth() &* 16
        @updateMaxHeight = 16
        @xArray = Array(Int32).new(30, 0)
        self.update()
        self
    end
    

    def update : Nil
        if !(@xArray).nil?
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < @xArray.not_nil!.size
                @xArray.not_nil![index] = self.getX() &+ (index &* 16)
            end
        end
    end
    

    def setX(x : Int) : Nil
        x = x.to_i32!
        super(x)
        self.update()
    end
    

    def onHealthChange : Nil
        @max = (@healthInterface.not_nil!.getHealth().tdiv(@healthScale))
        @timeDelayHelper = NoTimeDelayHelper.jst_SINGLETON
        if @max <= 1 && @healthInterface.not_nil!.isAlive()
            @max = 1
            if @healthScale &- @healthInterface.not_nil!.getHealth() > (@healthScale &* 2).tdiv(3)
                @timeDelayHelper = @slowBeatTimeDelayHelper
            elsif @healthScale &- @healthInterface.not_nil!.getHealth() > @healthScale.tdiv(3)
                @timeDelayHelper = @mediumBeatTimeDelayHelper
            else
                @timeDelayHelper = @fastBeatTimeDelayHelper
            end
        end
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < @max
            if @timeDelayHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
                @animationInterface.not_nil!.paintXY(graphics, @xArray.not_nil![index], self.getY())
            end
        end
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end


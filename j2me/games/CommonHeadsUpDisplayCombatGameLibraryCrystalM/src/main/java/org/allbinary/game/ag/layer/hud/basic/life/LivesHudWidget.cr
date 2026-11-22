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
# package org.allbinary.game.ag.layer.hud.basic.life

class LivesHudWidget < BasicHud
    include PaintableInterface
    @lifeInterface : Life? = nil

    def jf_lifeInterface : Life?
        @lifeInterface
    end

    def jf_lifeInterface=(value : Life?) : Life?
        @lifeInterface = value
    end
    @xArray : Array(Int32)? = nil

    def jf_xArray : Array(Int32)?
        @xArray
    end

    def jf_xArray=(value : Array(Int32)?) : Array(Int32)?
        @xArray = value
    end
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    

    def jinit_LivesHudWidget(animationInterface : Animation?, lifeInterface : Life?, location : Int, direction : Int) : self
        location = location.to_i32!
        direction = direction.to_i32!
        jinit_BasicHud(location, direction, 2, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
        @lifeInterface = lifeInterface
        size : Int32 = (self.getLifeInterface().not_nil!.getMaxlives()).to_i32!
        @xArray = Array(Int32).new(size, 0)
        @animationInterface = animationInterface
        @updateMaxWidth = ((@lifeInterface.not_nil!.getMaxlives()).to_i32!).to_i32 &* 16
        @updateMaxHeight = 16
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        super(graphics)
        maxLives : Int32 = (self.getLifeInterface().not_nil!.getMaxlives()).to_i32!
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < maxLives
            @xArray.not_nil![index] = self.getX() &+ (index &* 16)
        end
    end
    

    def onDisplayChangeEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        super(displayChangeEvent)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def setX(x : Int) : Nil
        x = x.to_i32!
        super(x)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        index : Int32 = (self.getLifeInterface().not_nil!.get()).to_i32!
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            @animationInterface.not_nil!.paintXY(graphics, @xArray.not_nil![index], self.getY())
        end
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def getLifeInterface : Life?
        return @lifeInterface
    end
end


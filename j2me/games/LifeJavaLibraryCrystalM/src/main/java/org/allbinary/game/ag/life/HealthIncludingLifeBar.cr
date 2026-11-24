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

class HealthIncludingLifeBar < Paintable
    include HealthListenerInterface
    @animationInterface : HealthBarAnimation? = nil

    def jf_animationInterface : HealthBarAnimation?
        @animationInterface
    end

    def jf_animationInterface=(value : HealthBarAnimation?) : HealthBarAnimation?
        @animationInterface = value
    end
    @life : Life? = nil

    def jf_life : Life?
        @life
    end

    def jf_life=(value : Life?) : Life?
        @life = value
    end
    @healthInterface : HealthInterface? = nil

    def jf_healthInterface : HealthInterface?
        @healthInterface
    end

    def jf_healthInterface=(value : HealthInterface?) : HealthInterface?
        @healthInterface = value
    end
    @allbinaryLayer : AllBinaryLayer? = nil

    def jf_allbinaryLayer : AllBinaryLayer?
        @allbinaryLayer
    end

    def jf_allbinaryLayer=(value : AllBinaryLayer?) : AllBinaryLayer?
        @allbinaryLayer = value
    end
    

    def self.createHealthIncludingLifeBar(layerInterface : AllBinaryLayer?, life : Life?, healthInterface : Health?, location : Int, direction : Int) : HealthIncludingLifeBar?
        location = location.to_i32!
        direction = direction.to_i32!
        return HealthIncludingLifeBar.new.jinit_HealthIncludingLifeBar(layerInterface, life, healthInterface, HealthBarTwodAnimation.new.jinit_HealthBarTwodAnimation(layerInterface, location), direction)
    end
    

    def jinit_HealthIncludingLifeBar(layerInterface : AllBinaryLayer?, life : Life?, healthInterface : Health?, animationInterface : HealthBarAnimation?, direction : Int) : self
        direction = direction.to_i32!
        jinit_Paintable()
        @allbinaryLayer = layerInterface
        @animationInterface = animationInterface
        @life = life
        @healthInterface = JR.cast(healthInterface, HealthInterface)
        @healthInterface.not_nil!.addListener(self)
        self.onHealthChange()
        self
    end
    

    def onHealthChange : Nil
        @animationInterface.not_nil!.onHealthChange((((@healthInterface.not_nil!.getHealth()).as(Int32) &+ ((@healthInterface.not_nil!.getMaxHealth()).as(Int32) &* ((@life.not_nil!.get()).to_i32!).to_i32)) &* @allbinaryLayer.not_nil!.getWidth()).tdiv(((@healthInterface.not_nil!.getMaxHealth()).as(Int32) &+ ((@healthInterface.not_nil!.getMaxHealth()).as(Int32) &* ((@life.not_nil!.getStartLives()).to_i32!).to_i32))))
    end
    

    def paint(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintXY(graphics, 0, 0)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintThreedXYZ(graphics, 0, 0, 0)
    end
end


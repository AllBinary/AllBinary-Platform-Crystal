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
# package org.allbinary.game.health

class HealthBar < Paintable
    include HealthListenerInterface
    @animationInterface : HealthBarAnimation? = nil

    def jf_animationInterface : HealthBarAnimation?
        @animationInterface
    end

    def jf_animationInterface=(value : HealthBarAnimation?) : HealthBarAnimation?
        @animationInterface = value
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
    

    def jinit_HealthBar(layerInterface : AllBinaryLayer?, healthInterface : Health?, animationInterface : HealthBarAnimation?, direction : Int) : self
        direction = direction.to_i32!
        jinit_Paintable()
        @allbinaryLayer = layerInterface
        @animationInterface = animationInterface
        @healthInterface = healthInterface
        @healthInterface.not_nil!.addListener(self)
        self.onHealthChange()
        self
    end
    

    def onHealthChange : Nil
        @animationInterface.not_nil!.onHealthChange(@healthInterface.not_nil!.getHealth() &* @allbinaryLayer.not_nil!.getWidth().tdiv(@healthInterface.not_nil!.getMaxHealth()))
    end
    

    def paint(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintXY(graphics, 0, 0)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintThreedXYZ(graphics, 0, 0, 0)
    end
end


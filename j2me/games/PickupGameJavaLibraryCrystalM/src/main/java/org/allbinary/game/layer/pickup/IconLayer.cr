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
# package org.allbinary.game.layer.pickup

class IconLayer < AllBinaryLayer
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end

    @@jst_NULL_ICON_LAYER : IconLayer? = nil

    def self.jst_NULL_ICON_LAYER : IconLayer?
        jclinit
        @@jst_NULL_ICON_LAYER
    end

    def self.jst_NULL_ICON_LAYER=(value : IconLayer?) : IconLayer?
        jclinit
        @@jst_NULL_ICON_LAYER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ICON_LAYER = IconLayer.new.jinit_IconLayer(NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0), 0, 0)
    end
    

    def jinit_IconLayer(animationInterface : Animation?, width : Int, height : Int) : self
        width = width.to_i32!
        height = height.to_i32!
        jinit_AllBinaryLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        @animationInterface = animationInterface
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintXY(graphics, @x, @y)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintThreedXYZ(graphics, @x, @y, @z)
    end
    

    def getAnimationInterface : Animation?
        return @animationInterface
    end
end


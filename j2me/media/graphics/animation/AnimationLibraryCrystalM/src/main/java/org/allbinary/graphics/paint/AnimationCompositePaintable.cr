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
# package org.allbinary.graphics.paint

class AnimationCompositePaintable < InitUpdatePaintable
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    

    def jinit_AnimationCompositePaintable(animationInterface : Animation?) : self
        jinit_InitUpdatePaintable()
        @animationInterface = animationInterface
        self
    end
    

    def paint(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintXY(graphics, 0, 0)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
        @animationInterface.not_nil!.paintThreedXYZ(graphics, 0, 0, 0)
    end
end


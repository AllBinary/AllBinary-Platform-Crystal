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

class HealthBarTwodAnimation < HealthBarAnimation
    

    def jinit_HealthBarTwodAnimation(layerInterface : AllBinaryLayer?, location : Int) : self
        location = location.to_i32!
        jinit_HealthBarAnimation(layerInterface, location)
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        ax : Int32 = @allbinaryLayer.not_nil!.getViewPosition().not_nil!.getX()
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, @basicColor, @colorP)
        graphics.not_nil!.fillRect(ax, self.getY() &- 1, @x2, @thickness)
    end
end


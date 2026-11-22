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
# package org.allbinary.game.ag.layer.pickup.life

class LifeLayer < AllBinaryLayer
    include LifeVisitorInterface
    

    def jinit_LifeLayer : self
        jinit_AllBinaryLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Rectangle.new.jinit_Rectangle(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
        self
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def visit(lifeInterface : Life?) : Nil
        lifeInterface.not_nil!.add(1_i16)
    end
end


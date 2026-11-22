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
# package org.allbinary.animation

class NullRotationAnimation2 < NullRotationAnimation
    

    def jinit_NullRotationAnimation2 : self
        jinit_NullRotationAnimation(AngleInfo.getInstance(AngleFactory.getInstance().not_nil!.jf_QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new.jinit_IndexedAnimationBehavior(1, 250))
        self
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
end


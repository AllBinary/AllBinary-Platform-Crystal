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
# package org.allbinary.graphics.form

class LockablePaintable < ItemPaintable
    @animation : Animation? = nil

    def jf_animation : Animation?
        @animation
    end

    def jf_animation=(value : Animation?) : Animation?
        @animation = value
    end
    @lockedIndex : Int32 = 0

    def jf_lockedIndex : Int32
        @lockedIndex
    end

    def jf_lockedIndex=(value : Int32) : Int32
        @lockedIndex = value
    end

    # Java field initializers run after the super constructor
    def jfields_LockablePaintable : Nil
    @animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.get(LockedResources.getInstance().not_nil!.jf_LOCKED_DEMO_GAME_FEATURE_RESOURCE).not_nil!.getInstance(0)
    
    end
    

    def jinit_LockablePaintable(lockedIndex : Int) : self
        lockedIndex = lockedIndex.to_i32!
        jinit_ItemPaintable()
        jfields_LockablePaintable()
        @lockedIndex = lockedIndex
        self
    end
    

    def paint(graphics : Graphics?, currentIndex : Int, x : Int, y : Int) : Nil
        currentIndex = currentIndex.to_i32!
        x = x.to_i32!
        y = y.to_i32!
        if LockedUtil.getInstance().not_nil!.isLocked() && currentIndex >= self.getLockedIndex()
            self.getAnimation().not_nil!.paintXY(graphics, x, y)
        end
    end
    

    def getLockedIndex : Int32
        return @lockedIndex
    end
    

    def getAnimation : Animation?
        return @animation
    end
end


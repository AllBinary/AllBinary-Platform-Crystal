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
# package org.allbinary.game.displayable.canvas

class NoMenuInputProcessor < BasicMenuInputProcessor

    @@jst_SINGLETON : NoMenuInputProcessor? = nil

    def self.jst_SINGLETON : NoMenuInputProcessor?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NoMenuInputProcessor?) : NoMenuInputProcessor?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NoMenuInputProcessor.new.jinit_NoMenuInputProcessor()
    end
    

    def self.getInstance : NoMenuInputProcessor?
        return NoMenuInputProcessor.jst_SINGLETON
    end
    

    def jinit_NoMenuInputProcessor : self
        jinit_BasicMenuInputProcessor(BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance(), -1, NullCanvas.jst_NULL_CANVAS)
        self
    end
    

    def onDownGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def onUpGameKeyEvent(gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def onMotionGestureEvent(motionGestureEvent : MotionGestureEvent?) : Nil
    end
end


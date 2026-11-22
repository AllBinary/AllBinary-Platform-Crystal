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

class BasicMenuInputProcessor < PlayerGameInput
    include BaseMotionGestureEventListener
    @motionGestureEventList : BasicArrayList? = nil

    def jf_motionGestureEventList : BasicArrayList?
        @motionGestureEventList
    end

    def jf_motionGestureEventList=(value : BasicArrayList?) : BasicArrayList?
        @motionGestureEventList = value
    end
    @canvas : Canvas? = nil

    def jf_canvas : Canvas?
        @canvas
    end

    def jf_canvas=(value : Canvas?) : Canvas?
        @canvas = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicMenuInputProcessor : Nil
    @motionGestureEventList = BasicArrayListD.new.jinit_BasicArrayListD()
    @canvas = NullCanvas.jst_NULL_CANVAS
    end
    

    def jinit_BasicMenuInputProcessor(gameKeyEventList : BasicArrayList?, playerInputId : Int, gameCanvas : Canvas?) : self
        playerInputId = playerInputId.to_i32!
        jinit_PlayerGameInput(gameKeyEventList, BasicArrayListD.new.jinit_BasicArrayListD(), playerInputId)
        jfields_BasicMenuInputProcessor()
        @canvas = gameCanvas
        self
    end
    

    def onMotionGestureEvent(motionGestureEvent : MotionGestureEvent?) : Nil
        @motionGestureEventList.not_nil!.add(motionGestureEvent)
    end
    

    def onScrolledMotionGestureEvent(motionGestureEvent : MotionGestureEvent?) : Nil
    end
    

    def setCanvas(canvas : MyCanvas?) : Nil
        @canvas = canvas
    end
    

    def getCanvas : MyCanvas?
        return JR.cast(@canvas, MyCanvas)
    end
    

    def processInputList : Int32
        return -1
    end
end


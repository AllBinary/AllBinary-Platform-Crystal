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
# package org.allbinary.input.motion.gesture.configuration

class MotionGestureConfiguration < JObject
    @diagonalMotionGestureAllowed : Bool = false

    def jf_diagonalMotionGestureAllowed : Bool
        @diagonalMotionGestureAllowed
    end

    def jf_diagonalMotionGestureAllowed=(value : Bool) : Bool
        @diagonalMotionGestureAllowed = value
    end
    @diagonalTolerance : Int32 = 0

    def jf_diagonalTolerance : Int32
        @diagonalTolerance
    end

    def jf_diagonalTolerance=(value : Int32) : Int32
        @diagonalTolerance = value
    end
    @minimumMotionGesture : Int32 = 0

    def jf_minimumMotionGesture : Int32
        @minimumMotionGesture
    end

    def jf_minimumMotionGesture=(value : Int32) : Int32
        @minimumMotionGesture = value
    end
    @button : String = ""

    def jf_button : String
        @button
    end

    def jf_button=(value : String) : String
        @button = value
    end
    @color : BasicColor? = nil

    def jf_color : BasicColor?
        @color
    end

    def jf_color=(value : BasicColor?) : BasicColor?
        @color = value
    end
    @executingActions : Bool = false

    def jf_executingActions : Bool
        @executingActions
    end

    def jf_executingActions=(value : Bool) : Bool
        @executingActions = value
    end
    @mouseButtonMask : Int32 = 0

    def jf_mouseButtonMask : Int32
        @mouseButtonMask
    end

    def jf_mouseButtonMask=(value : Int32) : Int32
        @mouseButtonMask = value
    end
    @activeCommands : BasicArrayList? = nil

    def jf_activeCommands : BasicArrayList?
        @activeCommands
    end

    def jf_activeCommands=(value : BasicArrayList?) : BasicArrayList?
        @activeCommands = value
    end

    # Java field initializers run after the super constructor
    def jfields_MotionGestureConfiguration : Nil
    @diagonalMotionGestureAllowed = true
    @diagonalTolerance = 7
    @minimumMotionGesture = 9
    @button = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @color = BasicColorFactory.getInstance().not_nil!.jf_BLUE
    @executingActions = true
    @mouseButtonMask = 0
    @activeCommands = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_MotionGestureConfiguration : self
        jfields_MotionGestureConfiguration()
        self
    end
    

    def addMotionGestureAction(list : BasicArrayList?, commandAction : CompleteMotionGestureInputEvent?) : Nil
        @activeCommands.not_nil!.add(MotionGestureToMotionGestureActionAssociation.new.jinit_MotionGestureToMotionGestureActionAssociation(list, commandAction))
    end
    

    def clearMotionGestureAction : Nil
        @activeCommands.not_nil!.clear()
    end
    

    def getAssociateCommandActionsList : BasicArrayList?
        return @activeCommands
    end
    

    def isDiagonalMotionGestureAllowed : Bool
        return @diagonalMotionGestureAllowed
    end
    

    def isExecutingActionsAllowed : Bool
        return @executingActions
    end
    

    def setExecutingActionsAllowed(executingActionAllowed : Bool) : Nil
        @executingActions = executingActionAllowed
    end
    

    def setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed : Bool) : Nil
        @diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
    end
    

    def getDiagonalTolerance : Int32
        return @diagonalTolerance
    end
    

    def setDiagonalTolerance(diagonalTolerance : Int) : Nil
        diagonalTolerance = diagonalTolerance.to_i32!
        @diagonalTolerance = diagonalTolerance
    end
    

    def getMinimumMotionGesture : Int32
        return @minimumMotionGesture
    end
    

    def setMinimumMotionGesture(minimumMotionGesture : Int) : Nil
        minimumMotionGesture = minimumMotionGesture.to_i32!
        @minimumMotionGesture = minimumMotionGesture
    end
    

    def getButton : String
        return @button
    end
    

    def setButton(button : String) : Nil
        @button = button
    end
    

    def getColor : BasicColor?
        return @color
    end
    

    def setColor(color : BasicColor?) : Nil
        @color = color
    end
    

    def getMouseButtonMask : Int32
        return @mouseButtonMask
    end
    

    def setMouseButtonMask(mouseButtonMask : Int) : Nil
        mouseButtonMask = mouseButtonMask.to_i32!
        @mouseButtonMask = mouseButtonMask
    end
end


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
# package org.allbinary.game.ag.ai.scroller

class BasePatrolAI < BasicAI
    @maxDistance : JInteger? = nil

    def jf_maxDistance : JInteger?
        @maxDistance
    end

    def jf_maxDistance=(value : JInteger?) : JInteger?
        @maxDistance = value
    end
    @currentDistance : Int32 = 0

    def jf_currentDistance : Int32
        @currentDistance
    end

    def jf_currentDistance=(value : Int32) : Int32
        @currentDistance = value
    end
    @xTotalDistance : Int32 = 0

    def jf_xTotalDistance : Int32
        @xTotalDistance
    end

    def jf_xTotalDistance=(value : Int32) : Int32
        @xTotalDistance = value
    end
    @lastKeyDirection : Int32 = 0

    def jf_lastKeyDirection : Int32
        @lastKeyDirection
    end

    def jf_lastKeyDirection=(value : Int32) : Int32
        @lastKeyDirection = value
    end
    @keyDirection : Int32 = 0

    def jf_keyDirection : Int32
        @keyDirection
    end

    def jf_keyDirection=(value : Int32) : Int32
        @keyDirection = value
    end

    @@jst_MAX_DISTANCE : JInteger? = nil

    def self.jst_MAX_DISTANCE : JInteger?
        jclinit
        @@jst_MAX_DISTANCE
    end

    def self.jst_MAX_DISTANCE=(value : JInteger?) : JInteger?
        jclinit
        @@jst_MAX_DISTANCE = value
    end

    @@jst_DIRECTION_ARRAY : JInteger? = nil

    def self.jst_DIRECTION_ARRAY : JInteger?
        jclinit
        @@jst_DIRECTION_ARRAY
    end

    def self.jst_DIRECTION_ARRAY=(value : JInteger?) : JInteger?
        jclinit
        @@jst_DIRECTION_ARRAY = value
    end

    @@jst_FIRING_DISTANCE : JInteger? = nil

    def self.jst_FIRING_DISTANCE : JInteger?
        jclinit
        @@jst_FIRING_DISTANCE
    end

    def self.jst_FIRING_DISTANCE=(value : JInteger?) : JInteger?
        jclinit
        @@jst_FIRING_DISTANCE = value
    end

    @@jst_SPEED : JInteger? = nil

    def self.jst_SPEED : JInteger?
        jclinit
        @@jst_SPEED
    end

    def self.jst_SPEED=(value : JInteger?) : JInteger?
        jclinit
        @@jst_SPEED = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_MAX_DISTANCE = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(2)
        @@jst_DIRECTION_ARRAY = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(3)
        @@jst_FIRING_DISTANCE = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(4)
        @@jst_SPEED = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(5)
    end

    # Java field initializers run after the super constructor
    def jfields_BasePatrolAI : Nil
    
    
    
    @lastKeyDirection = Canvas.jst_RIGHT
    @keyDirection = Canvas.jst_RIGHT
    end
    

    def jinit_BasePatrolAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_BasePatrolAI()
        @maxDistance = JR.cast(hashtable.not_nil!.get(BasePatrolAI.jst_MAX_DISTANCE), JInteger)
        @currentDistance = @maxDistance.not_nil!.intValue()
        self
    end
    

    def update : Nil
        self.updateTotalDistance()
        self.changeDirectionIfReachedPacingAreaMax()
    end
    

    def updateTotalDistance : Nil
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), VelocityInterfaceCompositeInterface)
        velocityProperties : BasicVelocityProperties? = JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties)
        @xTotalDistance &+= velocityProperties.not_nil!.getVelocityXBasicDecimalP().not_nil!.getScaled()
    end
    

    def changeDirectionIfReachedPacingAreaMax : Nil
        mathUtil : MathUtil? = MathUtil.getInstance()
        totalDistance : Int32 = mathUtil.not_nil!.abs(@xTotalDistance)
        if totalDistance > @currentDistance
            self.nextDirection()
        end
    end
    

    def nextDirection : Nil
        if @lastKeyDirection == Canvas.jst_LEFT
            @keyDirection = Canvas.jst_RIGHT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        elsif @lastKeyDirection == Canvas.jst_RIGHT
            @keyDirection = Canvas.jst_LEFT
            @lastKeyDirection = @keyDirection
            @xTotalDistance = 0
        end
    end
    

    def disable : Nil
    end
end


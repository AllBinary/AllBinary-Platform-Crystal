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
# package org.allbinary.game.ag.ai

class DiveAndDirectionalTrackingAI < BasicAI
    include TrackingEventListenerInterface
    include DestroyedEventListenerInterface
    @mathUtil : MathUtil? = nil

    def jf_mathUtil : MathUtil?
        @mathUtil
    end

    def jf_mathUtil=(value : MathUtil?) : MathUtil?
        @mathUtil = value
    end
    @directionFactory : DirectionFactory? = nil

    def jf_directionFactory : DirectionFactory?
        @directionFactory
    end

    def jf_directionFactory=(value : DirectionFactory?) : DirectionFactory?
        @directionFactory = value
    end
    @gameTickTimeDelayHelper : GameTickTimeDelayHelper? = nil

    def jf_gameTickTimeDelayHelper : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper
    end

    def jf_gameTickTimeDelayHelper=(value : GameTickTimeDelayHelper?) : GameTickTimeDelayHelper?
        @gameTickTimeDelayHelper = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @directionalInterface : DirectionalInterface? = nil

    def jf_directionalInterface : DirectionalInterface?
        @directionalInterface
    end

    def jf_directionalInterface=(value : DirectionalInterface?) : DirectionalInterface?
        @directionalInterface = value
    end
    @velocityInterface : BasicVelocityProperties? = nil

    def jf_velocityInterface : BasicVelocityProperties?
        @velocityInterface
    end

    def jf_velocityInterface=(value : BasicVelocityProperties?) : BasicVelocityProperties?
        @velocityInterface = value
    end
    @directionToKeyMap : Array(Int32)? = nil

    def jf_directionToKeyMap : Array(Int32)?
        @directionToKeyMap
    end

    def jf_directionToKeyMap=(value : Array(Int32)?) : Array(Int32)?
        @directionToKeyMap = value
    end
    @initialDropped : Bool = false

    def jf_initialDropped : Bool
        @initialDropped
    end

    def jf_initialDropped=(value : Bool) : Bool
        @initialDropped = value
    end
    @diveP : Bool = false

    def jf_diveP : Bool
        @diveP
    end

    def jf_diveP=(value : Bool) : Bool
        @diveP = value
    end
    @directionOfTarget : Direction? = nil

    def jf_directionOfTarget : Direction?
        @directionOfTarget
    end

    def jf_directionOfTarget=(value : Direction?) : Direction?
        @directionOfTarget = value
    end
    @j_MIN_DISTANCE : Int32 = 0

    def jf_MIN_DISTANCE : Int32
        @j_MIN_DISTANCE
    end

    def jf_MIN_DISTANCE=(value : Int32) : Int32
        @j_MIN_DISTANCE = value
    end
    @lastTrackingLayerInterface : AllBinaryLayer? = nil

    def jf_lastTrackingLayerInterface : AllBinaryLayer?
        @lastTrackingLayerInterface
    end

    def jf_lastTrackingLayerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @lastTrackingLayerInterface = value
    end
    @artificialIntelligenceInterface : ArtificialIntelligenceInterface? = nil

    def jf_artificialIntelligenceInterface : ArtificialIntelligenceInterface?
        @artificialIntelligenceInterface
    end

    def jf_artificialIntelligenceInterface=(value : ArtificialIntelligenceInterface?) : ArtificialIntelligenceInterface?
        @artificialIntelligenceInterface = value
    end
    @aiVistor : Visitor? = nil

    def jf_aiVistor : Visitor?
        @aiVistor
    end

    def jf_aiVistor=(value : Visitor?) : Visitor?
        @aiVistor = value
    end
    @lastDirection : Direction? = nil

    def jf_lastDirection : Direction?
        @lastDirection
    end

    def jf_lastDirection=(value : Direction?) : Direction?
        @lastDirection = value
    end

    # Java field initializers run after the super constructor
    def jfields_DiveAndDirectionalTrackingAI : Nil
    @mathUtil = MathUtil.getInstance()
    @directionFactory = DirectionFactory.getInstance()
    @gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(500)
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    
    
    @directionToKeyMap = [Canvas.jst_LEFT, Canvas.jst_DOWN, Canvas.jst_UP, Canvas.jst_RIGHT] of Int32
    
    
    @directionOfTarget = Direction.getInstance(0)
    @j_MIN_DISTANCE = 40
    @lastTrackingLayerInterface = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    
    
    @lastDirection = DirectionFactory.getInstance().not_nil!.jf_NO_DIRECTION
    end
    

    def jinit_DiveAndDirectionalTrackingAI(ownerLayerInterface : AllBinaryLayer?, artificialIntelligenceInterface : ArtificialIntelligenceInterface?, gameInput : GameInput?, visitor : Visitor?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_DiveAndDirectionalTrackingAI()
        @aiVistor = visitor
        @artificialIntelligenceInterface = JR.cast(artificialIntelligenceInterface, ArtificialIntelligenceInterface)
        directionalCompositeInterface : DirectionalCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), DirectionalCompositeInterface)
        @directionalInterface = JR.cast(JR.cast(directionalCompositeInterface.not_nil!.getDirectionalInterface(), DirectionalInterface), DirectionalInterface)
        velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface? = JR.cast(self.getOwnerLayerInterface(), VelocityInterfaceCompositeInterface)
        @velocityInterface = JR.cast(velocityInterfaceCompositeInterface.not_nil!.getVelocityProperties(), BasicVelocityProperties)
        DestroyedEventHandler.getInstance().not_nil!.addListenerInterface(self)
        self.init()
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if self.isBeyondTarget()
            self.init()
            @velocityInterface.not_nil!.zero()
        end
        if !@diveP
            self.target(allBinaryLayerManager)
        else
            self.dive()
            self.attack()
        end
        @list.not_nil!.clear()
    end
    

    def init : Nil
        @diveP = false
        @directionOfTarget = DirectionFactory.getInstance().not_nil!.jf_NOT_BORDERED_WITH
        TrackingEventHandler.getInstance().not_nil!.addListenerInterface(self)
    end
    

    def target(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if @list.not_nil!.size() == 0
            return
        end
        lastTrackingEvent : TrackingEvent? = JR.cast(@list.not_nil!.removeAt(0), TrackingEvent)
        @lastTrackingLayerInterface = lastTrackingEvent.not_nil!.getLayerInterface()
        layerInterface : AllBinaryLayer? = @lastTrackingLayerInterface
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        groupArray : Array(Group?)? = layerInterface.not_nil!.getGroupInterface()
        ownerGroupArray : Array(Group?)? = ownerLayerInterface.not_nil!.getGroupInterface()
        if groupArray == ownerGroupArray
            return
        end
        x : Int32 = @lastTrackingLayerInterface.not_nil!.getXP()
        y : Int32 = @lastTrackingLayerInterface.not_nil!.getYP()
        yDistance : Int32 = ownerLayerInterface.not_nil!.getYP() &- y &- ownerLayerInterface.not_nil!.getHeight()
        xDistance : Int32 = ownerLayerInterface.not_nil!.getXP() &- x &- ownerLayerInterface.not_nil!.getWidth()
        directionFactory : DirectionFactory? = DirectionFactory.getInstance()
        if @mathUtil.not_nil!.abs(yDistance) > @mathUtil.not_nil!.abs(xDistance)
            if yDistance > @j_MIN_DISTANCE
                @directionOfTarget = directionFactory.not_nil!.jf_UP
            elsif yDistance < JR.neg(@j_MIN_DISTANCE)
                @directionOfTarget = directionFactory.not_nil!.jf_DOWN
            end
        else
            if xDistance > @j_MIN_DISTANCE
                @directionOfTarget = directionFactory.not_nil!.jf_LEFT
            elsif xDistance < JR.neg(@j_MIN_DISTANCE)
                @directionOfTarget = directionFactory.not_nil!.jf_RIGHT
            end
        end
        if !@initialDropped && @directionOfTarget != directionFactory.not_nil!.jf_NOT_BORDERED_WITH
            self.drop()
        end
        if @initialDropped
            if @directionOfTarget == directionFactory.not_nil!.jf_UP || @directionOfTarget == directionFactory.not_nil!.jf_DOWN
                self.verticalTargeting(x)
            elsif @directionOfTarget == directionFactory.not_nil!.jf_LEFT || @directionOfTarget == directionFactory.not_nil!.jf_RIGHT
                self.horizontalTargeting(y)
            else
                @artificialIntelligenceInterface.not_nil!.processAI(allBinaryLayerManager)
            end
        end
    end
    

    def verticalTargeting(x : Int) : Nil
        x = x.to_i32!
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        if ownerLayerInterface.not_nil!.getXP() < x
            self.moveRight()
        end
        if ownerLayerInterface.not_nil!.getXP() > x
            self.moveLeft()
        end
        if ownerLayerInterface.not_nil!.getXP() > x &- 3 && ownerLayerInterface.not_nil!.getXP() < x &+ 3
            self.setDive()
        end
    end
    

    def horizontalTargeting(y : Int) : Nil
        y = y.to_i32!
        ownerLayerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
        if ownerLayerInterface.not_nil!.getYP() < y
            self.moveDown()
        end
        if ownerLayerInterface.not_nil!.getYP() > y
            self.moveUp()
        end
        if ownerLayerInterface.not_nil!.getYP() > y &- 3 && ownerLayerInterface.not_nil!.getYP() < y &+ 3
            self.setDive()
        end
    end
    

    def setDive : Nil
        @diveP = true
        @velocityInterface.not_nil!.zero()
        TrackingEventHandler.getInstance().not_nil!.removeListener(self)
    end
    

    def moveRight : Nil
        self.setLastDirection(@directionFactory.not_nil!.jf_RIGHT)
        @directionalInterface.not_nil!.setFrameByDirection(@lastDirection)
        @aiVistor.not_nil!.visit(self)
    end
    

    def moveLeft : Nil
        self.setLastDirection(@directionFactory.not_nil!.jf_LEFT)
        @directionalInterface.not_nil!.setFrameByDirection(@lastDirection)
        @aiVistor.not_nil!.visit(self)
    end
    

    def moveDown : Nil
        self.setLastDirection(@directionFactory.not_nil!.jf_DOWN)
        @directionalInterface.not_nil!.setFrameByDirection(@lastDirection)
        @aiVistor.not_nil!.visit(self)
    end
    

    def moveUp : Nil
        self.setLastDirection(@directionFactory.not_nil!.jf_UP)
        @directionalInterface.not_nil!.setFrameByDirection(@lastDirection)
        @aiVistor.not_nil!.visit(self)
    end
    

    def dive : Nil
        @directionalInterface.not_nil!.setFrameByDirection(@directionOfTarget)
        @aiVistor.not_nil!.visit(self)
    end
    

    def attack : Nil
        processKeyAI(Canvas.jst_KEY_NUM1)
    end
    

    def drop : Nil
        if @timeDelayHelper.not_nil!.isTime(@gameTickTimeDelayHelper.not_nil!.jf_startTime)
            @initialDropped = true
            @aiVistor.not_nil!.visit(self)
        end
    end
    

    def isBeyondTarget : Bool
        if @directionOfTarget == @directionFactory.not_nil!.jf_DOWN
            if self.getOwnerLayerInterface().not_nil!.getYP() > @lastTrackingLayerInterface.not_nil!.getYP() &+ @j_MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.not_nil!.jf_UP
            if self.getOwnerLayerInterface().not_nil!.getYP() < @lastTrackingLayerInterface.not_nil!.getYP() &+ @j_MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.not_nil!.jf_RIGHT
            if self.getOwnerLayerInterface().not_nil!.getXP() > @lastTrackingLayerInterface.not_nil!.getXP() &+ @j_MIN_DISTANCE
                return true
            else
                return false
            end
        elsif @directionOfTarget == @directionFactory.not_nil!.jf_LEFT
            if self.getOwnerLayerInterface().not_nil!.getXP() < @lastTrackingLayerInterface.not_nil!.getXP() &+ @j_MIN_DISTANCE
                return true
            else
                return false
            end
        else
            return false
        end
        return false
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onMovement(trackingEvent : TrackingEvent?) : Nil
        @list.not_nil!.add(trackingEvent)
    end
    

    def onDestroyed(destroyedEvent : DestroyedEvent?) : Nil
        if self.getOwnerLayerInterface() == destroyedEvent.not_nil!.getLayerInterface()
            TrackingEventHandler.getInstance().not_nil!.removeListener(self)
            DestroyedEventHandler.getInstance().not_nil!.removeListener(self)
        end
    end
    

    def setLastDirection(lastDirection : Direction?) : Nil
        @lastDirection = lastDirection
        value : Int32 = self.getLastDirection().not_nil!.getValue()
        if value < 4
            setLastKey(@directionToKeyMap.not_nil![value])
        end
    end
    

    def setLastKey(lastKey : Int) : Nil
        lastKey = lastKey.to_i32!
        super(lastKey)
        if self.getLastKey() == Canvas.jst_LEFT
            @lastDirection = DirectionFactory.getInstance().not_nil!.jf_LEFT
        elsif self.getLastKey() == Canvas.jst_DOWN
            @lastDirection = DirectionFactory.getInstance().not_nil!.jf_DOWN
        elsif self.getLastKey() == Canvas.jst_UP
            @lastDirection = DirectionFactory.getInstance().not_nil!.jf_UP
        elsif self.getLastKey() == Canvas.jst_RIGHT
            @lastDirection = DirectionFactory.getInstance().not_nil!.jf_RIGHT
        end
    end
    

    def getLastDirection : Direction?
        return @lastDirection
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(super())
        stringBuffer.not_nil!.append(" LastDirection: ")
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(self.getLastDirection()))
        return stringBuffer.not_nil!.toString()
    end
end


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

class HorizontalScreenPatrolAI < BasicAI
    @keyDirection : Int32 = 0

    def jf_keyDirection : Int32
        @keyDirection
    end

    def jf_keyDirection=(value : Int32) : Int32
        @keyDirection = value
    end
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @firingX : Int32 = 0

    def jf_firingX : Int32
        @firingX
    end

    def jf_firingX=(value : Int32) : Int32
        @firingX = value
    end
    @firedIndex : Int32 = 0

    def jf_firedIndex : Int32
        @firedIndex
    end

    def jf_firedIndex=(value : Int32) : Int32
        @firedIndex = value
    end
    @j_MAX_FIRE : Int32 = 0

    def jf_MAX_FIRE : Int32
        @j_MAX_FIRE
    end

    def jf_MAX_FIRE=(value : Int32) : Int32
        @j_MAX_FIRE = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end
    @secondaryPlayerQueue : PlayerQueue? = nil

    def jf_secondaryPlayerQueue : PlayerQueue?
        @secondaryPlayerQueue
    end

    def jf_secondaryPlayerQueue=(value : PlayerQueue?) : PlayerQueue?
        @secondaryPlayerQueue = value
    end
    @sound : Sound? = nil

    def jf_sound : Sound?
        @sound
    end

    def jf_sound=(value : Sound?) : Sound?
        @sound = value
    end

    @@jst_SOUND : JInteger? = nil

    def self.jst_SOUND : JInteger?
        jclinit
        @@jst_SOUND
    end

    def self.jst_SOUND=(value : JInteger?) : JInteger?
        jclinit
        @@jst_SOUND = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SOUND = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(433)
    end

    # Java field initializers run after the super constructor
    def jfields_HorizontalScreenPatrolAI : Nil
    @keyDirection = Canvas.jst_LEFT
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @firingX = @displayInfoSingleton.not_nil!.getLastHalfWidth()
    @firedIndex = 0
    @j_MAX_FIRE = 28
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(240)
    @secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
    
    end
    

    def jinit_HorizontalScreenPatrolAI(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_HorizontalScreenPatrolAI()
        @sound = JR.cast(hashtable.not_nil!.get(HorizontalScreenPatrolAI.jst_SOUND), Sound)
        if (@sound).nil?
            raise (JException.new.jinit_JException("No Sound Provided!!")).not_nil!
        end
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        processKeyAI(@keyDirection)
        if @timeDelayHelper.not_nil!.isTimeTNT()
            layerInterface : AllBinaryLayer? = self.getOwnerLayerInterface()
            currentOwnerLayerX : Int32 = layerInterface.not_nil!.getXP()
            if currentOwnerLayerX < JR.neg(layerInterface.not_nil!.getWidth())
                y : Int32 = MyRandomFactory.getInstance().not_nil!.getAbsoluteNextIntAllowZero(50)
                layerInterface.not_nil!.setPosition(@displayInfoSingleton.not_nil!.getLastWidth() &+ layerInterface.not_nil!.getWidth() &+ 50, y, layerInterface.not_nil!.getZP())
                @firedIndex = 0
                @firingX = @displayInfoSingleton.not_nil!.getLastHalfWidth() &+ MyRandomFactory.getInstance().not_nil!.getNextInt(@displayInfoSingleton.not_nil!.getLastHalfWidth())
                @secondaryPlayerQueue.not_nil!.add(@sound)
            end
            if currentOwnerLayerX < @firingX && currentOwnerLayerX > JR.neg(layerInterface.not_nil!.getWidth())
                processKeyAI(Canvas.jst_KEY_NUM1)
                gameLayerManager : AllBinaryGameLayerManager? = JR.cast(allBinaryLayerManager, AllBinaryGameLayerManager)
                j_FIRE : Int32 = JR.shr((gameLayerManager.not_nil!.getGameInfo().not_nil!.getCurrentLevel() &+ 12), 2)
                if j_FIRE > @j_MAX_FIRE
                    j_FIRE = @j_MAX_FIRE
                end
                if @firedIndex > j_FIRE
                    @firedIndex = 0
                    @firingX = JInteger.jst_MIN_VALUE
                end
                @firedIndex &+= 1
            end
        end
    end
    

    def nextDirection : Nil
    end
end


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

class TimedFireAI < BasicAI
    @maxFireDelayTimeHelper : TimeDelayHelper? = nil

    def jf_maxFireDelayTimeHelper : TimeDelayHelper?
        @maxFireDelayTimeHelper
    end

    def jf_maxFireDelayTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @maxFireDelayTimeHelper = value
    end
    @delay : Int32 = 0

    def jf_delay : Int32
        @delay
    end

    def jf_delay=(value : Int32) : Int32
        @delay = value
    end

    @@jst_TIME : JInteger? = nil

    def self.jst_TIME : JInteger?
        jclinit
        @@jst_TIME
    end

    def self.jst_TIME=(value : JInteger?) : JInteger?
        jclinit
        @@jst_TIME = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_TIME = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(1)
    end

    # Java field initializers run after the super constructor
    def jfields_TimedFireAI : Nil
    @maxFireDelayTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    
    end
    

    def jinit_TimedFireAI(delay : Int, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : self
        delay = delay.to_i32!
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_TimedFireAI()
        @delay = delay
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        timeFiredInterface : TimeFiredInterface? = JR.cast(self.getOwnerLayerInterface(), TimeFiredInterface)
        if @maxFireDelayTimeHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime) && (timeFiredInterface.not_nil!.getLastFireTime()).as(Int64) + @maxFireDelayTimeHelper.not_nil!.jf_delay < @maxFireDelayTimeHelper.not_nil!.getStartTime()
            processKeyAI(Canvas.jst_KEY_NUM1)
            @maxFireDelayTimeHelper.not_nil!.jf_delay = @delay
        end
    end
end


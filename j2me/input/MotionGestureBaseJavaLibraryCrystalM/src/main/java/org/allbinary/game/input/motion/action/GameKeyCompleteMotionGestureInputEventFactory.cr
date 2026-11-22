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
# package org.allbinary.game.input.motion.action

class GameKeyCompleteMotionGestureInputEventFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @eventList : BasicArrayList? = nil

    def jf_eventList : BasicArrayList?
        @eventList
    end

    def jf_eventList=(value : BasicArrayList?) : BasicArrayList?
        @eventList = value
    end

    @@jst_SINGLETON : GameKeyCompleteMotionGestureInputEventFactory? = nil

    def self.jst_SINGLETON : GameKeyCompleteMotionGestureInputEventFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : GameKeyCompleteMotionGestureInputEventFactory?) : GameKeyCompleteMotionGestureInputEventFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = GameKeyCompleteMotionGestureInputEventFactory.new.jinit_GameKeyCompleteMotionGestureInputEventFactory()
    end
    

    def self.getInstance : GameKeyCompleteMotionGestureInputEventFactory?
        return GameKeyCompleteMotionGestureInputEventFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyCompleteMotionGestureInputEventFactory : Nil
    @logUtil = LogUtil.getInstance()
    @eventList = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_GameKeyCompleteMotionGestureInputEventFactory : self
        jfields_GameKeyCompleteMotionGestureInputEventFactory()
        self
    end
    

    def add(gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent?) : Nil
        @eventList.not_nil!.add(gameKeyCompleteMotionGestureInputEvent)
    end
    

    def updateAll : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.appendint(@eventList.not_nil!.size()).not_nil!.toString(), self, "updateAll")
        index : Int32 = @eventList.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent? = JR.cast(@eventList.not_nil!.jf_objectArray.not_nil![index], GameKeyCompleteMotionGestureInputEvent)
            gameKeyCompleteMotionGestureInputEvent.not_nil!.update()
        end
    end
end


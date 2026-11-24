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
# package org.allbinary.game.input.event

class GameKeyEventFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_TOUCH_BUTTON_SOURCE_ID : Int32 = 0

    def jf_TOUCH_BUTTON_SOURCE_ID : Int32
        @j_TOUCH_BUTTON_SOURCE_ID
    end

    def jf_TOUCH_BUTTON_SOURCE_ID=(value : Int32) : Int32
        @j_TOUCH_BUTTON_SOURCE_ID = value
    end
    @j_MOTION_GESTURE_SOURCE_ID : Int32 = 0

    def jf_MOTION_GESTURE_SOURCE_ID : Int32
        @j_MOTION_GESTURE_SOURCE_ID
    end

    def jf_MOTION_GESTURE_SOURCE_ID=(value : Int32) : Int32
        @j_MOTION_GESTURE_SOURCE_ID = value
    end
    @j_MAX_SOURCES : Int32 = 0

    def jf_MAX_SOURCES : Int32
        @j_MAX_SOURCES
    end

    def jf_MAX_SOURCES=(value : Int32) : Int32
        @j_MAX_SOURCES = value
    end
    @j_ARRAY : Array(Array(GameKeyEvent?)?)? = nil

    def jf_ARRAY : Array(Array(GameKeyEvent?)?)?
        @j_ARRAY
    end

    def jf_ARRAY=(value : Array(Array(GameKeyEvent?)?)?) : Array(Array(GameKeyEvent?)?)?
        @j_ARRAY = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : GameKeyEventFactory?
        if GameKeyEventFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            GameKeyEventFactory.jst_instance = GameKeyEventFactory.new.jinit_GameKeyEventFactory()
        end
        return JR.cast(GameKeyEventFactory.jst_instance, GameKeyEventFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_GameKeyEventFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_TOUCH_BUTTON_SOURCE_ID = 2
    @j_MOTION_GESTURE_SOURCE_ID = 3
    @j_MAX_SOURCES = 4
    @j_ARRAY = Array(Array(GameKeyEvent?)?).new(@j_MAX_SOURCES) { Array(GameKeyEvent?).new(InputFactory.getInstance().not_nil!.jf_MAX, nil).as(Array(GameKeyEvent?)?) }
    end
    

    def jinit_GameKeyEventFactory : self
        jfields_GameKeyEventFactory()
        self
    end
    

    def init : Nil
        nullUtil : NullUtil? = NullUtil.getInstance()
        size : Int32 = InputFactory.getInstance().not_nil!.jf_MAX
        index : Int32 = @j_MAX_SOURCES
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            index2 : Int32 = size
            jfor2 = false
            while true
                jfor2 = true
                break unless (index2 &-= 1) >= 0
                @j_ARRAY.not_nil![index].not_nil![index2] = GameKeyEvent.createEvent(nullUtil.not_nil!.jf_NULL_OBJECT, index, index2)
            end
        end
    end
    

    def getInstanceForKey(anyType : GameKeyEventSourceInterface?, key : Int) : GameKeyEvent?
        key = key.to_i32!
        gameKeyEvent : GameKeyEvent? = @j_ARRAY.not_nil![(anyType.not_nil!.getSourceId()).as(Int32)].not_nil![key]
        return gameKeyEvent
    end
    

    def getInstanceForInput(anyType : GameKeyEventSourceInterface?, input : Input?) : GameKeyEvent?
        gameKeyEvent : GameKeyEvent? = @j_ARRAY.not_nil![(anyType.not_nil!.getSourceId()).as(Int32)].not_nil![input.not_nil!.getId()]
        return gameKeyEvent
    end
end


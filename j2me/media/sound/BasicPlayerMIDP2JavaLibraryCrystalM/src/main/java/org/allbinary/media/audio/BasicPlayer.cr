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
# package org.allbinary.media.audio

class BasicPlayer < JObject
    include Player
    include TimeBaseInterface
    include Controllable2
    @listenersList : BasicArrayList? = nil

    def jf_listenersList : BasicArrayList?
        @listenersList
    end

    def jf_listenersList=(value : BasicArrayList?) : BasicArrayList?
        @listenersList = value
    end
    @timeBase : TimeBase? = nil

    def jf_timeBase : TimeBase?
        @timeBase
    end

    def jf_timeBase=(value : TimeBase?) : TimeBase?
        @timeBase = value
    end
    @stateP : Int32 = 0

    def jf_stateP : Int32
        @stateP
    end

    def jf_stateP=(value : Int32) : Int32
        @stateP = value
    end
    @loopCountP : Int32 = 0

    def jf_loopCountP : Int32
        @loopCountP
    end

    def jf_loopCountP=(value : Int32) : Int32
        @loopCountP = value
    end

    @@jst_CONTROL_TYPE : String = ""

    def self.jst_CONTROL_TYPE : String
        jclinit
        @@jst_CONTROL_TYPE
    end

    def self.jst_CONTROL_TYPE=(value : String) : String
        jclinit
        @@jst_CONTROL_TYPE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_CONTROL_TYPE = "ToneControl"
    end

    # Java field initializers run after the super constructor
    def jfields_BasicPlayer : Nil
    @listenersList = BasicArrayListD.new.jinit_BasicArrayListD()
    
    
    
    end
    

    def jinit_BasicPlayer : self
        jfields_BasicPlayer()
        self.setLoopCount(0)
        self.setState(Player.jst_UNREALIZED)
        self
    end
    

    def getContentType : String
        return StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def getControl(controlType : String) : Control?
        return NullControl.new.jinit_NullControl()
    end
    

    def getControls : Array(Control?)?
        return Array(Control?).new(0, nil)
    end
    

    def close : Nil
    end
    

    def addPlayerListener(playerListener : PlayerListener?) : Nil
        if !@listenersList.not_nil!.contains(playerListener)
            @listenersList.not_nil!.add(playerListener)
        end
    end
    

    def removePlayerListener(playerListener : PlayerListener?) : Nil
        @listenersList.not_nil!.remove(playerListener)
    end
    

    def getState : Int32
        return @stateP
    end
    

    def setState(state : Int) : Nil
        state = state.to_i32!
        @stateP = state
    end
    

    def getDuration : Int64
        return 0_i64
    end
    

    def getMediaTime : Int64
        return 0_i64
    end
    

    def getTimeBase : TimeBase?
        return @timeBase
    end
    

    def setTimeBase(timeBase : TimeBase?) : Nil
        @timeBase = timeBase
    end
    

    def deallocate : Nil
    end
    

    def prefetch : Nil
    end
    

    def realize : Nil
    end
    

    def setLoopCount(count : Int) : Nil
        count = count.to_i32!
        @loopCountP = count
    end
    

    def getLoopCount : Int32
        return @loopCountP
    end
    

    def setMediaTime(now : Int) : Int64
        now = now.to_i64!
        return 0_i64
    end
    

    def start : Nil
        self.setState(Player.jst_STARTED)
    end
    

    def stop : Nil
        self.setState(Player.jst_PREFETCHED)
    end
    

    def setVolume(leftVolume : Int, rightVolume : Int) : Nil
        leftVolume = leftVolume.to_i32!
        rightVolume = rightVolume.to_i32!
    end
end


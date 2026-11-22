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

class InputProbability < JObject
    @likelyhoodIntegerArray : Array(Array(JInteger?)?)? = nil

    def jf_likelyhoodIntegerArray : Array(Array(JInteger?)?)?
        @likelyhoodIntegerArray
    end

    def jf_likelyhoodIntegerArray=(value : Array(Array(JInteger?)?)?) : Array(Array(JInteger?)?)?
        @likelyhoodIntegerArray = value
    end
    @repeatLikelyhoodIntegerArray : Array(JInteger?)? = nil

    def jf_repeatLikelyhoodIntegerArray : Array(JInteger?)?
        @repeatLikelyhoodIntegerArray
    end

    def jf_repeatLikelyhoodIntegerArray=(value : Array(JInteger?)?) : Array(JInteger?)?
        @repeatLikelyhoodIntegerArray = value
    end
    @max : Int32 = 0

    def jf_max : Int32
        @max
    end

    def jf_max=(value : Int32) : Int32
        @max = value
    end
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end

    @@jst_INPUT_PROBABILITY : JInteger? = nil

    def self.jst_INPUT_PROBABILITY : JInteger?
        jclinit
        @@jst_INPUT_PROBABILITY
    end

    def self.jst_INPUT_PROBABILITY=(value : JInteger?) : JInteger?
        jclinit
        @@jst_INPUT_PROBABILITY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_INPUT_PROBABILITY = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(0)
    end
    

    def jinit_InputProbability(likelyhoodIntegerArray : Array(Array(JInteger?)?)?, repeatLikelyhoodIntegerArray : Array(JInteger?)?, max : Int, timeDelayHelper : TimeDelayHelper?) : self
        max = max.to_i32!
        @likelyhoodIntegerArray = likelyhoodIntegerArray
        @repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray
        @max = max
        @timeDelayHelper = timeDelayHelper
        self
    end
    

    def getLikelyhoodIntegerArray : Array(Array(JInteger?)?)?
        return @likelyhoodIntegerArray
    end
    

    def getRepeatLikelyhoodIntegerArray : Array(JInteger?)?
        return @repeatLikelyhoodIntegerArray
    end
    

    def getMax : Int32
        return @max
    end
    

    def getTimeDelayHelper : TimeDelayHelper?
        return @timeDelayHelper
    end
    

    def toHashtable : ABHashtable?
        hashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        hashtable.not_nil!.put(InputProbability.jst_INPUT_PROBABILITY, self)
        return hashtable
    end
end


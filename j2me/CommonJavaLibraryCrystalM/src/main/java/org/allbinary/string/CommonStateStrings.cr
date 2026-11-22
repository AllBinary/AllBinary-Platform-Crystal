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
# package org.allbinary.string

class CommonStateStrings < JObject
    @j_CONTEXT : String = ""

    def jf_CONTEXT : String
        @j_CONTEXT
    end

    def jf_CONTEXT=(value : String) : String
        @j_CONTEXT = value
    end
    @j_FINISH : String = ""

    def jf_FINISH : String
        @j_FINISH
    end

    def jf_FINISH=(value : String) : String
        @j_FINISH = value
    end
    @j_CREATE : String = ""

    def jf_CREATE : String
        @j_CREATE
    end

    def jf_CREATE=(value : String) : String
        @j_CREATE = value
    end
    @j_START : String = ""

    def jf_START : String
        @j_START
    end

    def jf_START=(value : String) : String
        @j_START = value
    end
    @j_RESTART : String = ""

    def jf_RESTART : String
        @j_RESTART
    end

    def jf_RESTART=(value : String) : String
        @j_RESTART = value
    end
    @j_RESUME : String = ""

    def jf_RESUME : String
        @j_RESUME
    end

    def jf_RESUME=(value : String) : String
        @j_RESUME = value
    end
    @j_PAUSE : String = ""

    def jf_PAUSE : String
        @j_PAUSE
    end

    def jf_PAUSE=(value : String) : String
        @j_PAUSE = value
    end
    @j_STOP : String = ""

    def jf_STOP : String
        @j_STOP
    end

    def jf_STOP=(value : String) : String
        @j_STOP = value
    end
    @j_DESTROY : String = ""

    def jf_DESTROY : String
        @j_DESTROY
    end

    def jf_DESTROY=(value : String) : String
        @j_DESTROY = value
    end
    @j_BIND : String = ""

    def jf_BIND : String
        @j_BIND
    end

    def jf_BIND=(value : String) : String
        @j_BIND = value
    end
    @j_ON_SAVE_INSTANCE_STATE : String = ""

    def jf_ON_SAVE_INSTANCE_STATE : String
        @j_ON_SAVE_INSTANCE_STATE
    end

    def jf_ON_SAVE_INSTANCE_STATE=(value : String) : String
        @j_ON_SAVE_INSTANCE_STATE = value
    end
    @j_ON_START_COMMAND : String = ""

    def jf_ON_START_COMMAND : String
        @j_ON_START_COMMAND
    end

    def jf_ON_START_COMMAND=(value : String) : String
        @j_ON_START_COMMAND = value
    end

    @@jst_instance : CommonStateStrings? = nil

    def self.jst_instance : CommonStateStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : CommonStateStrings?) : CommonStateStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = CommonStateStrings.new.jinit_CommonStateStrings()
    end
    

    def self.getInstance : CommonStateStrings?
        return CommonStateStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_CommonStateStrings : Nil
    @j_CONTEXT = "Context: "
    @j_FINISH = "finish"
    @j_CREATE = "onCreate"
    @j_START = "onStart"
    @j_RESTART = "onRestart"
    @j_RESUME = "onResume"
    @j_PAUSE = "onPause"
    @j_STOP = "onStop"
    @j_DESTROY = "onDestroy"
    @j_BIND = "onBind"
    @j_ON_SAVE_INSTANCE_STATE = "onSaveInstanceState"
    @j_ON_START_COMMAND = "onStartCommand"
    end

    def jinit_CommonStateStrings : self
        jfields_CommonStateStrings()
        self
    end
end


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
# package org.allbinary.game.midlet

class DemoGameMidletStateFactory < JObject
    @j_NONE : DemoGameMidletState? = nil

    def jf_NONE : DemoGameMidletState?
        @j_NONE
    end

    def jf_NONE=(value : DemoGameMidletState?) : DemoGameMidletState?
        @j_NONE = value
    end
    @j_START_DEMO : DemoGameMidletState? = nil

    def jf_START_DEMO : DemoGameMidletState?
        @j_START_DEMO
    end

    def jf_START_DEMO=(value : DemoGameMidletState?) : DemoGameMidletState?
        @j_START_DEMO = value
    end
    @j_START_GAME : DemoGameMidletState? = nil

    def jf_START_GAME : DemoGameMidletState?
        @j_START_GAME
    end

    def jf_START_GAME=(value : DemoGameMidletState?) : DemoGameMidletState?
        @j_START_GAME = value
    end
    @j_START_INPUT_MAPPING : DemoGameMidletState? = nil

    def jf_START_INPUT_MAPPING : DemoGameMidletState?
        @j_START_INPUT_MAPPING
    end

    def jf_START_INPUT_MAPPING=(value : DemoGameMidletState?) : DemoGameMidletState?
        @j_START_INPUT_MAPPING = value
    end

    @@jst_STATE : DemoGameMidletStateFactory? = nil

    def self.jst_STATE : DemoGameMidletStateFactory?
        jclinit
        @@jst_STATE
    end

    def self.jst_STATE=(value : DemoGameMidletStateFactory?) : DemoGameMidletStateFactory?
        jclinit
        @@jst_STATE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_STATE = DemoGameMidletStateFactory.new.jinit_DemoGameMidletStateFactory()
    end
    

    def self.getInstance : DemoGameMidletStateFactory?
        return DemoGameMidletStateFactory.jst_STATE
    end

    # Java field initializers run after the super constructor
    def jfields_DemoGameMidletStateFactory : Nil
    @j_NONE = DemoGameMidletState.new.jinit_DemoGameMidletState()
    @j_START_DEMO = DemoGameMidletState.new.jinit_DemoGameMidletState()
    @j_START_GAME = DemoGameMidletState.new.jinit_DemoGameMidletState()
    @j_START_INPUT_MAPPING = DemoGameMidletState.new.jinit_DemoGameMidletState()
    end
    

    def jinit_DemoGameMidletStateFactory : self
        jfields_DemoGameMidletStateFactory()
        self
    end
end


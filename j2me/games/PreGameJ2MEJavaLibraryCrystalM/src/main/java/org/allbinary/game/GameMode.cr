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
# package org.allbinary.game

class GameMode < JObject
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end

    @@jst_NONE : GameMode? = nil

    def self.jst_NONE : GameMode?
        jclinit
        @@jst_NONE
    end

    def self.jst_NONE=(value : GameMode?) : GameMode?
        jclinit
        @@jst_NONE = value
    end

    @@jst_SERVER : GameMode? = nil

    def self.jst_SERVER : GameMode?
        jclinit
        @@jst_SERVER
    end

    def self.jst_SERVER=(value : GameMode?) : GameMode?
        jclinit
        @@jst_SERVER = value
    end

    @@jst_CLIENT : GameMode? = nil

    def self.jst_CLIENT : GameMode?
        jclinit
        @@jst_CLIENT
    end

    def self.jst_CLIENT=(value : GameMode?) : GameMode?
        jclinit
        @@jst_CLIENT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NONE = GameMode.new.jinit_GameMode(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
        @@jst_SERVER = GameMode.new.jinit_GameMode("Server")
        @@jst_CLIENT = GameMode.new.jinit_GameMode("Client")
    end

    # Java field initializers run after the super constructor
    def jfields_GameMode : Nil
    @name = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    end
    

    def jinit_GameMode(name : String) : self
        jfields_GameMode()
        self.setName(name)
        self
    end
    

    def setName(name : String) : Nil
        @name = name
    end
    

    def getName : String
        return @name
    end
    

    def toString : String
        return self.getName()
    end
end


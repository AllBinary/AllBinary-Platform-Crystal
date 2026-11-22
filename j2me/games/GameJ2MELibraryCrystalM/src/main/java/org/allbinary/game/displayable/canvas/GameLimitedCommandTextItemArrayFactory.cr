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
# package org.allbinary.game.displayable.canvas

class GameLimitedCommandTextItemArrayFactory < JObject
    @commandTextItemArrayFactory : CommandTextItemArrayFactory? = nil

    def jf_commandTextItemArrayFactory : CommandTextItemArrayFactory?
        @commandTextItemArrayFactory
    end

    def jf_commandTextItemArrayFactory=(value : CommandTextItemArrayFactory?) : CommandTextItemArrayFactory?
        @commandTextItemArrayFactory = value
    end

    @@jst_instance : GameLimitedCommandTextItemArrayFactory? = nil

    def self.jst_instance : GameLimitedCommandTextItemArrayFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameLimitedCommandTextItemArrayFactory?) : GameLimitedCommandTextItemArrayFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameLimitedCommandTextItemArrayFactory.new.jinit_GameLimitedCommandTextItemArrayFactory()
    end
    

    def self.getInstance : GameLimitedCommandTextItemArrayFactory?
        return GameLimitedCommandTextItemArrayFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameLimitedCommandTextItemArrayFactory : Nil
    @commandTextItemArrayFactory = CommandTextItemArrayFactory.new.jinit_CommandTextItemArrayFactory(LimitCommandsVisitor.new.jinit_LimitCommandsVisitor())
    end

    def jinit_GameLimitedCommandTextItemArrayFactory : self
        jfields_GameLimitedCommandTextItemArrayFactory()
        self
    end
    

    def getCommandTextItemArrayFactory : CommandTextItemArrayFactory?
        return @commandTextItemArrayFactory
    end
end


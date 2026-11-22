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
# package org.allbinary.game.score

class HighScoreCommands < JObject
    @j_DISPLAY : Command? = nil

    def jf_DISPLAY : Command?
        @j_DISPLAY
    end

    def jf_DISPLAY=(value : Command?) : Command?
        @j_DISPLAY = value
    end
    @j_PERSONAL : Command? = nil

    def jf_PERSONAL : Command?
        @j_PERSONAL
    end

    def jf_PERSONAL=(value : Command?) : Command?
        @j_PERSONAL = value
    end
    @j_WORLD : Command? = nil

    def jf_WORLD : Command?
        @j_WORLD
    end

    def jf_WORLD=(value : Command?) : Command?
        @j_WORLD = value
    end

    @@jst_instance : HighScoreCommands? = nil

    def self.jst_instance : HighScoreCommands?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HighScoreCommands?) : HighScoreCommands?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HighScoreCommands.new.jinit_HighScoreCommands()
    end
    

    def self.getInstance : HighScoreCommands?
        return HighScoreCommands.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoreCommands : Nil
    @j_DISPLAY = Command.new.jinit_Command("Scores", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
    @j_PERSONAL = Command.new.jinit_Command("Personal", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
    @j_WORLD = Command.new.jinit_Command("World", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
    end

    def jinit_HighScoreCommands : self
        jfields_HighScoreCommands()
        self
    end
end


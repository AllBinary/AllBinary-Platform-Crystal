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

class HighScoreCommandsFactory < HighScoreCommandsBaseFactory

    @@jst_instance : HighScoreCommandsFactory? = nil

    def self.jst_instance : HighScoreCommandsFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HighScoreCommandsFactory?) : HighScoreCommandsFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HighScoreCommandsFactory.new.jinit_HighScoreCommandsFactory()
    end
    

    def self.getInstance : HighScoreCommandsFactory?
        return HighScoreCommandsFactory.jst_instance
    end
    

    def jinit_HighScoreCommandsFactory : self
        jinit_HighScoreCommandsBaseFactory([HighScoreCommands.getInstance().not_nil!.jf_PERSONAL, HighScoreCommands.getInstance().not_nil!.jf_WORLD] of Command?)
        self
    end
end


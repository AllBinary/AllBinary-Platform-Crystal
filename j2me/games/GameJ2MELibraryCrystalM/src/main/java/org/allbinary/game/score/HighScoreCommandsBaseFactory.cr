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

class HighScoreCommandsBaseFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_HIGH_SCORE_COMMANDS : Array(Command?)? = nil

    def jf_HIGH_SCORE_COMMANDS : Array(Command?)?
        @j_HIGH_SCORE_COMMANDS
    end

    def jf_HIGH_SCORE_COMMANDS=(value : Array(Command?)?) : Array(Command?)?
        @j_HIGH_SCORE_COMMANDS = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoreCommandsBaseFactory : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_HighScoreCommandsBaseFactory(j_HIGH_SCORE_COMMANDS : Array(Command?)?) : self
        jfields_HighScoreCommandsBaseFactory()
        @j_HIGH_SCORE_COMMANDS = j_HIGH_SCORE_COMMANDS
        self
    end
    

    def isHighScoreCommand(command : Command?) : Bool
        index : Int32 = @j_HIGH_SCORE_COMMANDS.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            if command == @j_HIGH_SCORE_COMMANDS.not_nil![index]
                return true
            end
        end
        return false
    end
    

    def getIndex(command : Command?) : Int32
        index : Int32 = @j_HIGH_SCORE_COMMANDS.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            if command == @j_HIGH_SCORE_COMMANDS.not_nil![index]
                return index
            end
        end
        raise (JException.new.jinit_JException("No Such Command")).not_nil!
    end
end


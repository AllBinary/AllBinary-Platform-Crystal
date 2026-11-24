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
# package org.allbinary.game.score.displayable

class HighScoreUtil < JObject
    include HighScoresResultsListener
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @highScoresFactoryInterface : HighScoresFactoryInterface? = nil

    def jf_highScoresFactoryInterface : HighScoresFactoryInterface?
        @highScoresFactoryInterface
    end

    def jf_highScoresFactoryInterface=(value : HighScoresFactoryInterface?) : HighScoresFactoryInterface?
        @highScoresFactoryInterface = value
    end
    @highScoresArray : Array(HighScores?)? = nil

    def jf_highScoresArray : Array(HighScores?)?
        @highScoresArray
    end

    def jf_highScoresArray=(value : Array(HighScores?)?) : Array(HighScores?)?
        @highScoresArray = value
    end
    @highScore : HighScore? = nil

    def jf_highScore : HighScore?
        @highScore
    end

    def jf_highScore=(value : HighScore?) : HighScore?
        @highScore = value
    end
    @abeClientInformation : AbeClientInformationInterface? = nil

    def jf_abeClientInformation : AbeClientInformationInterface?
        @abeClientInformation
    end

    def jf_abeClientInformation=(value : AbeClientInformationInterface?) : AbeClientInformationInterface?
        @abeClientInformation = value
    end
    @gameInfo : GameInfo? = nil

    def jf_gameInfo : GameInfo?
        @gameInfo
    end

    def jf_gameInfo=(value : GameInfo?) : GameInfo?
        @gameInfo = value
    end
    @highScoresHelper : HighScoresHelperBaseInterface? = nil

    def jf_highScoresHelper : HighScoresHelperBaseInterface?
        @highScoresHelper
    end

    def jf_highScoresHelper=(value : HighScoresHelperBaseInterface?) : HighScoresHelperBaseInterface?
        @highScoresHelper = value
    end
    @firstTime : Bool = false

    def jf_firstTime : Bool
        @firstTime
    end

    def jf_firstTime=(value : Bool) : Bool
        @firstTime = value
    end

    @@jst_SUBMIT_TEXTBOX_COMMAND : Command? = nil

    def self.jst_SUBMIT_TEXTBOX_COMMAND : Command?
        jclinit
        @@jst_SUBMIT_TEXTBOX_COMMAND
    end

    def self.jst_SUBMIT_TEXTBOX_COMMAND=(value : Command?) : Command?
        jclinit
        @@jst_SUBMIT_TEXTBOX_COMMAND = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SUBMIT_TEXTBOX_COMMAND = Command.new.jinit_Command("Submit", StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, Command.jst_SCREEN, 1)
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoreUtil : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    
    @firstTime = true
    end
    

    def jinit_HighScoreUtil(highScoresFactoryInterface : HighScoresFactoryInterface?, highScoresHelper : HighScoresHelperBaseInterface?, abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, cmdListener : CommandListener?, name : String, highScore : HighScore?) : self
        jfields_HighScoreUtil()
        @highScoresFactoryInterface = JR.cast(highScoresFactoryInterface, HighScoresFactoryInterface)
        @highScoresHelper = JR.cast(highScoresHelper, HighScoresHelperBaseInterface)
        @highScoresArray = @highScoresHelper.not_nil!.getHighScoresArray()
        @highScore = highScore
        @abeClientInformation = JR.cast(abeClientInformation, AbeClientInformationInterface)
        @gameInfo = gameInfo
        self
    end
    

    def setHighScoresArray(highScoresArray : Array(HighScores?)?) : Nil
        @highScoresArray = highScoresArray
        @firstTime = false
        self.saveHighScore()
    end
    

    def update(name : String) : Nil
        HighScoreNamePersistanceSingleton.getInstance().not_nil!.save(@abeClientInformation, @gameInfo, name)
        @highScore.not_nil!.setName(name)
    end
    

    def saveHighScore : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.append(StringUtil.getInstance().not_nil!.toString(@highScore)).not_nil!.toString(), self, "saveHighScore")
        size : Int32 = @highScoresArray.not_nil!.size
        if @firstTime && size == 0
            @logUtil.not_nil!.putF("Games canvas did not give us any HighScores", self, "saveHighScore")
            @highScoresFactoryInterface.not_nil!.fetchHighScores(@gameInfo, self)
            return
        end
        highScores : HighScores? = nil
        highScoresAsString : String = ""
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            highScores = @highScoresArray.not_nil![index]
            highScores.not_nil!.addHighScore(@highScore)
            highScoresAsString = highScores.not_nil!.toString()
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Added/Adding Score: ").not_nil!.append(highScoresAsString).not_nil!.toString(), self, "saveHighScore")
        end
        @highScoresHelper.not_nil!.setHighScoresArray(@highScoresArray)
    end
    

    def submit(myCanvas : MyCanvas?) : Nil
        commandListener : CommandListener? = myCanvas.not_nil!.getCustomCommandListener()
        commandListener.not_nil!.commandAction(HighScoreUtil.jst_SUBMIT_TEXTBOX_COMMAND, myCanvas)
    end
end


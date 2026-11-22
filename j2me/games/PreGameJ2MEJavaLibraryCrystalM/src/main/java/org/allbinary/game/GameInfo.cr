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

class GameInfo < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @gameInfoData : GameInfoData? = nil

    def jf_gameInfoData : GameInfoData?
        @gameInfoData
    end

    def jf_gameInfoData=(value : GameInfoData?) : GameInfoData?
        @gameInfoData = value
    end
    @gameType : GameType? = nil

    def jf_gameType : GameType?
        @gameType
    end

    def jf_gameType=(value : GameType?) : GameType?
        @gameType = value
    end
    @gameMode : GameMode? = nil

    def jf_gameMode : GameMode?
        @gameMode
    end

    def jf_gameMode=(value : GameMode?) : GameMode?
        @gameMode = value
    end
    @playerType : PlayerType? = nil

    def jf_playerType : PlayerType?
        @playerType
    end

    def jf_playerType=(value : PlayerType?) : PlayerType?
        @playerType = value
    end
    @highestLevel : Int32 = 0

    def jf_highestLevel : Int32
        @highestLevel
    end

    def jf_highestLevel=(value : Int32) : Int32
        @highestLevel = value
    end
    @currentLevel : Int32 = 0

    def jf_currentLevel : Int32
        @currentLevel
    end

    def jf_currentLevel=(value : Int32) : Int32
        @currentLevel = value
    end
    @j_NEW_LEVEL : String = ""

    def jf_NEW_LEVEL : String
        @j_NEW_LEVEL
    end

    def jf_NEW_LEVEL=(value : String) : String
        @j_NEW_LEVEL = value
    end
    @j_SET_CURRENT_LEVEL : String = ""

    def jf_SET_CURRENT_LEVEL : String
        @j_SET_CURRENT_LEVEL
    end

    def jf_SET_CURRENT_LEVEL=(value : String) : String
        @j_SET_CURRENT_LEVEL = value
    end
    @j_NEXT_GAME_LEVEL : String = ""

    def jf_NEXT_GAME_LEVEL : String
        @j_NEXT_GAME_LEVEL
    end

    def jf_NEXT_GAME_LEVEL=(value : String) : String
        @j_NEXT_GAME_LEVEL = value
    end

    @@jst_NONE : GameInfo? = nil

    def self.jst_NONE : GameInfo?
        jclinit
        @@jst_NONE
    end

    def self.jst_NONE=(value : GameInfo?) : GameInfo?
        jclinit
        @@jst_NONE = value
    end

    def self.jst_LEVEL_NAME : String
        "LEVEL"
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NONE = GameInfo.new.jinit_GameInfo(GameTypeFactory.getInstance().not_nil!.jf_NONE, GameMode.jst_NONE, PlayerTypesFactory.getInstance().not_nil!.jf_PLAYER_TYPE_ONE, -1, -1)
        
    end

    # Java field initializers run after the super constructor
    def jfields_GameInfo : Nil
    @logUtil = LogUtil.getInstance()
    @gameInfoData = GameInfoData.getInstance()
    
    
    
    
    
    @j_NEW_LEVEL = "New Level: "
    @j_SET_CURRENT_LEVEL = "setCurrentLevel"
    @j_NEXT_GAME_LEVEL = "nextGameLevel"
    end
    

    def jinit_GameInfo(gameType : GameType?, gameMode : GameMode?, playerType : PlayerType?, highestLevel : Int, currentLevel : Int) : self
        highestLevel = highestLevel.to_i32!
        currentLevel = currentLevel.to_i32!
        jfields_GameInfo()
        @gameType = gameType
        @gameMode = gameMode
        self.setHighestLevel(highestLevel)
        @currentLevel = currentLevel
        @playerType = playerType
        self
    end
    

    def getGameType : GameType?
        return @gameType
    end
    

    def getGameMode : GameMode?
        return @gameMode
    end
    

    def getPlayerType : PlayerType?
        return @playerType
    end
    

    def getHighestLevel : Int32
        return @highestLevel
    end
    

    def setHighestLevel(highestLevel : Int) : Nil
        highestLevel = highestLevel.to_i32!
        @highestLevel = highestLevel
    end
    

    def getCurrentLevel : Int32
        return @currentLevel
    end
    

    def setCurrentLevel(currentLevel : Int) : Nil
        currentLevel = currentLevel.to_i32!
        @currentLevel = currentLevel
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_NEW_LEVEL).not_nil!.appendint(self.getCurrentLevel()).not_nil!.toString(), self, @j_SET_CURRENT_LEVEL)
    end
    

    def nextGameLevel : Nil
        if self.getCurrentLevel() < self.getHighestLevel()
            @currentLevel &+= 1
        end
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_NEXT).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.append(@j_NEW_LEVEL).not_nil!.appendint(self.getCurrentLevel()).not_nil!.toString(), self, @j_NEXT_GAME_LEVEL)
    end
    

    def previousGameLevel : Nil
        if self.getCurrentLevel() > 1
            @currentLevel &-= 1
        end
    end
    

    def isLastLevel : Bool
        if self.getCurrentLevel() >= self.getHighestLevel()
            return true
        else
            return false
        end
        return false
    end
    

    def toHashtable : ABHashtable?
        hashtable : ABHashtable? = StdUtil.getInstance().not_nil!.createHashtable()
        hashtable.not_nil!.put(@gameInfoData.not_nil!.jf_GAME_TYPE, self.getGameType().not_nil!.toString())
        hashtable.not_nil!.put(@gameInfoData.not_nil!.jf_GAME_MODE, @gameMode.not_nil!.toString())
        hashtable.not_nil!.put(@gameInfoData.not_nil!.jf_PLAYER_TYPE, @playerType.not_nil!.toString())
        hashtable.not_nil!.put(@gameInfoData.not_nil!.jf_HIGHEST_LEVEL, JInteger.toString(self.getHighestLevel()))
        hashtable.not_nil!.put(@gameInfoData.not_nil!.jf_CURRENT_LEVEL, JInteger.toString(@currentLevel))
        return hashtable
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        stringBuffer.not_nil!.append(@gameInfoData.not_nil!.jf_GAME_TYPE)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.append(self.getGameType().not_nil!.toString())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@gameInfoData.not_nil!.jf_GAME_MODE)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.append(@gameMode.not_nil!.toString())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@gameInfoData.not_nil!.jf_PLAYER_TYPE)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(@playerType))
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@gameInfoData.not_nil!.jf_HIGHEST_LEVEL)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint(self.getHighestLevel())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA_SEP)
        stringBuffer.not_nil!.append(@gameInfoData.not_nil!.jf_CURRENT_LEVEL)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_EQUALS)
        stringBuffer.not_nil!.appendint(@currentLevel)
        return stringBuffer.not_nil!.toString()
    end
end


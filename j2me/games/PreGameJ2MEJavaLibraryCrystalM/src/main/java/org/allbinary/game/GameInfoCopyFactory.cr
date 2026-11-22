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

class GameInfoCopyFactory < JObject
    

    def self.getInstanceMaxLevel(gameInfo : GameInfo?, maxLevel : Int) : GameInfo?
        maxLevel = maxLevel.to_i32!
        return GameInfo.new.jinit_GameInfo(gameInfo.not_nil!.getGameType(), gameInfo.not_nil!.getGameMode(), gameInfo.not_nil!.getPlayerType(), maxLevel, gameInfo.not_nil!.getCurrentLevel())
    end
    

    def self.getInstance(gameInfo : GameInfo?) : GameInfo?
        return GameInfo.new.jinit_GameInfo(gameInfo.not_nil!.getGameType(), gameInfo.not_nil!.getGameMode(), gameInfo.not_nil!.getPlayerType(), gameInfo.not_nil!.getHighestLevel(), gameInfo.not_nil!.getCurrentLevel())
    end

    def jinit_GameInfoCopyFactory : self
        self
    end
end


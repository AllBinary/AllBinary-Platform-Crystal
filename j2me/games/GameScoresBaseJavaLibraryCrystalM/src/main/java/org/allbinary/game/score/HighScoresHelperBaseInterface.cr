# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

module HighScoresHelperBaseInterface
    include JObjectI
    include HighScoresResultsListener
end

module JObjectI
    def setSelectedHighScores(*jargs) : NoReturn
        raise JR.abstractMethod("setSelectedHighScores")
    end
    def getHighScoresArray(*jargs) : NoReturn
        raise JR.abstractMethod("getHighScoresArray")
    end
    def getSelectedHighScores(*jargs) : NoReturn
        raise JR.abstractMethod("getSelectedHighScores")
    end
end


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
# package org.allbinary.business.advertisement

class AdConfiguration < JObject
    @j_INNERACTIVE : String = ""

    def jf_INNERACTIVE : String
        @j_INNERACTIVE
    end

    def jf_INNERACTIVE=(value : String) : String
        @j_INNERACTIVE = value
    end
    @j_LEADBOLT : String = ""

    def jf_LEADBOLT : String
        @j_LEADBOLT
    end

    def jf_LEADBOLT=(value : String) : String
        @j_LEADBOLT = value
    end
    @j_ADMOB : String = ""

    def jf_ADMOB : String
        @j_ADMOB
    end

    def jf_ADMOB=(value : String) : String
        @j_ADMOB = value
    end
    

    def jinit_AdConfiguration(advertIdArray : Array(JAny)?) : self
        @j_INNERACTIVE = JR.castString(advertIdArray.not_nil![0])
        @j_ADMOB = JR.castString(advertIdArray.not_nil![1])
        @j_LEADBOLT = JR.castString(advertIdArray.not_nil![2])
        self
    end
    

    def getValidAdSpots : Array(Direction?)?
        return Array(Direction?).new(0, nil)
    end
    

    def process(gameState : GameState?) : Nil
    end
    

    def processDemo(state : Int) : Nil
        state = state.to_i32!
    end
    

    def setShowAds : Nil
    end
    

    def setToggleAds(showAds : Bool) : Nil
    end
    

    def isShowAds : Bool
        return true
    end
end


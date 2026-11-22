# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class GameAdStateBase < JObject
    @adConfigurationP : AdConfiguration? = nil

    def jf_adConfigurationP : AdConfiguration?
        @adConfigurationP
    end

    def jf_adConfigurationP=(value : AdConfiguration?) : AdConfiguration?
        @adConfigurationP = value
    end
    @advertisementsP : Advertisements? = nil

    def jf_advertisementsP : Advertisements?
        @advertisementsP
    end

    def jf_advertisementsP=(value : Advertisements?) : Advertisements?
        @advertisementsP = value
    end
    @okayToShowAdsP : Bool = false

    def jf_okayToShowAdsP : Bool
        @okayToShowAdsP
    end

    def jf_okayToShowAdsP=(value : Bool) : Bool
        @okayToShowAdsP = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameAdStateBase : Nil
    
    @advertisementsP = Advertisements.new.jinit_Advertisements()
    
    end
    

    def jinit_GameAdStateBase(adConfiguration : AdConfiguration?) : self
        jfields_GameAdStateBase()
        @adConfigurationP = adConfiguration
        self
    end
    

    def initViewArray(viewArray : Array(JAny)?) : Nil
    end
    

    def onStart(anyType : JAny) : Nil
        self.init()
    end
    

    def init : Nil
    end
    

    def isShowingAtLocation(location : Int) : Bool
        location = location.to_i32!
        return false
    end
    

    def isShowingAt : Bool
        return false
    end
    

    def show : Nil
    end
    

    def hide : Nil
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def processAdState(gameState : GameState?, gameType : GameType?) : Nil
    end
    

    def processPageAdState : Nil
    end
    

    def playingAdState : Nil
    end
    

    def playingAdStateWH(width : Int, height : Int) : Nil
        width = width.to_i32!
        height = height.to_i32!
    end
    

    def notPlayingAdState : Nil
    end
    

    def setGameIsReady(gameIsReady : Bool) : Nil
    end
    

    def isGameIsReady : Bool
        return false
    end
    

    def getAdvertisements : Advertisements?
        return @advertisementsP
    end
    

    def getAdConfiguration : AdConfiguration?
        return @adConfigurationP
    end
    

    def isOkayToShowPageAd : Bool
        return false
    end
    

    def setOkayToShowAds(okayToShowAds : Bool) : Nil
        @okayToShowAdsP = okayToShowAds
    end
    

    def isOkayToShowAds : Bool
        return @okayToShowAdsP
    end
    

    def isEnabled : Bool
        return false
    end
end


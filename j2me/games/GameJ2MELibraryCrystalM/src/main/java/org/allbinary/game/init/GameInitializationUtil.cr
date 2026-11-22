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
# package org.allbinary.game.init

class GameInitializationUtil < JObject
    @j_EVENT : GameInitializedEvent? = nil

    def jf_EVENT : GameInitializedEvent?
        @j_EVENT
    end

    def jf_EVENT=(value : GameInitializedEvent?) : GameInitializedEvent?
        @j_EVENT = value
    end

    @@jst_instance : GameInitializationUtil? = nil

    def self.jst_instance : GameInitializationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameInitializationUtil?) : GameInitializationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameInitializationUtil.new.jinit_GameInitializationUtil()
    end
    

    def self.getInstance : GameInitializationUtil?
        return GameInitializationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameInitializationUtil : Nil
    @j_EVENT = GameInitializedEvent.new.jinit_GameInitializedEvent(self)
    end

    def jinit_GameInitializationUtil : self
        jfields_GameInitializationUtil()
        self
    end
    

    def initDemo(abeClientInformation : AbeClientInformationInterface?, canvas : MyCanvas?, gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?) : Nil
        mainFeatureFactory : MainFeatureFactory? = MainFeatureFactory.getInstance()
        if ChangedGameFeatureListener.getInstance().not_nil!.isChangedFeature(mainFeatureFactory.not_nil!.jf_STATIC)
            gameInitializationInterface : GameInitializationInterface? = gameInitializationInterfaceFactoryInterface.not_nil!.getInstance()
            features : Features? = Features.getInstance()
            if features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_LOAD_ALL)
                self.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            elsif features.not_nil!.isFeature(mainFeatureFactory.not_nil!.jf_LOAD_ONDEMAND)
                resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.not_nil!.init(abeClientInformation, canvas.not_nil!.getCustomCommandListener(), resourceLoadingLevelFactory.not_nil!.jf_LOAD_EARLY.not_nil!.getLevel())
                @j_EVENT.not_nil!.setResourceLoadingLevel(resourceLoadingLevelFactory.not_nil!.jf_LOAD_EARLY)
            else
                raise (JException.new.jinit_JException("No Loading Feature Available")).not_nil!
            end
            GameInitializedEventHandler.getInstance().not_nil!.fireEvent(@j_EVENT)
        end
    end
    

    def initGame(abeClientInformation : AbeClientInformationInterface?, canvas : MyCanvas?, gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?) : Nil
        if ChangedGameFeatureListener.getInstance().not_nil!.isChangedFeature(MainFeatureFactory.getInstance().not_nil!.jf_STATIC)
            gameInitializationInterface : GameInitializationInterface? = gameInitializationInterfaceFactoryInterface.not_nil!.getInstance()
            resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.not_nil!.init(abeClientInformation, canvas.not_nil!.getCustomCommandListener(), resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel())
            @j_EVENT.not_nil!.setResourceLoadingLevel(resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL)
            GameInitializedEventHandler.getInstance().not_nil!.fireEvent(@j_EVENT)
            ChangedGameFeatureListener.getInstance().not_nil!.remove(MainFeatureFactory.getInstance().not_nil!.jf_STATIC)
        end
    end
end


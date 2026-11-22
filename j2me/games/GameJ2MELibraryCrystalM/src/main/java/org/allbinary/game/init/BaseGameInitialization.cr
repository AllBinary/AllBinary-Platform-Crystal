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

class BaseGameInitialization < JObject
    include GameInitializationInterface
    @resourceInitializationArray : Array(ResourceInitialization?)? = nil

    def jf_resourceInitializationArray : Array(ResourceInitialization?)?
        @resourceInitializationArray
    end

    def jf_resourceInitializationArray=(value : Array(ResourceInitialization?)?) : Array(ResourceInitialization?)?
        @resourceInitializationArray = value
    end
    @portion : Int32 = 0

    def jf_portion : Int32
        @portion
    end

    def jf_portion=(value : Int32) : Int32
        @portion = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end
    @j_EARLY_RESOURCES : Int32 = 0

    def jf_EARLY_RESOURCES : Int32
        @j_EARLY_RESOURCES
    end

    def jf_EARLY_RESOURCES=(value : Int32) : Int32
        @j_EARLY_RESOURCES = value
    end
    @j_GAME_RESOURCES : Int32 = 0

    def jf_GAME_RESOURCES : Int32
        @j_GAME_RESOURCES
    end

    def jf_GAME_RESOURCES=(value : Int32) : Int32
        @j_GAME_RESOURCES = value
    end
    @j_EARLY_CHANGABLE_RESOURCES : Int32 = 0

    def jf_EARLY_CHANGABLE_RESOURCES : Int32
        @j_EARLY_CHANGABLE_RESOURCES
    end

    def jf_EARLY_CHANGABLE_RESOURCES=(value : Int32) : Int32
        @j_EARLY_CHANGABLE_RESOURCES = value
    end
    @j_GAME_CHANGABLE_RESOURCES : Int32 = 0

    def jf_GAME_CHANGABLE_RESOURCES : Int32
        @j_GAME_CHANGABLE_RESOURCES
    end

    def jf_GAME_CHANGABLE_RESOURCES=(value : Int32) : Int32
        @j_GAME_CHANGABLE_RESOURCES = value
    end
    @gameInitialized : Bool = false

    def jf_gameInitialized : Bool
        @gameInitialized
    end

    def jf_gameInitialized=(value : Bool) : Bool
        @gameInitialized = value
    end
    @allLoaded : Bool = false

    def jf_allLoaded : Bool
        @allLoaded
    end

    def jf_allLoaded=(value : Bool) : Bool
        @allLoaded = value
    end

    @@jst_NULL_BASE_GAME_INITIALIZATION : BaseGameInitialization? = nil

    def self.jst_NULL_BASE_GAME_INITIALIZATION : BaseGameInitialization?
        jclinit
        @@jst_NULL_BASE_GAME_INITIALIZATION
    end

    def self.jst_NULL_BASE_GAME_INITIALIZATION=(value : BaseGameInitialization?) : BaseGameInitialization?
        jclinit
        @@jst_NULL_BASE_GAME_INITIALIZATION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_BASE_GAME_INITIALIZATION = BaseGameInitialization.new.jinit_BaseGameInitialization(Array(ResourceInitialization?).new(0, nil), 0)
    end

    # Java field initializers run after the super constructor
    def jfields_BaseGameInitialization : Nil
    
    
    
    @j_EARLY_RESOURCES = 0
    @j_GAME_RESOURCES = 1
    @j_EARLY_CHANGABLE_RESOURCES = 2
    @j_GAME_CHANGABLE_RESOURCES = 3
    
    
    end
    

    def jinit_BaseGameInitialization(resourceInitializationArray : Array(ResourceInitialization?)?, portion : Int) : self
        portion = portion.to_i32!
        jfields_BaseGameInitialization()
        @resourceInitializationArray = resourceInitializationArray
        @portion = portion
        self
    end
    

    def initKey(portion : Int) : Nil
        portion = portion.to_i32!
    end
    

    def initKeyMapping(abeClientInformation : AbeClientInformationInterface?, portion : Int) : Nil
        portion = portion.to_i32!
        if ChangedGameFeatureListener.getInstance().not_nil!.isChangedFeature(InputFeatureFactory.getInstance().not_nil!.jf_INPUT_MAPPING)
            PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.init(abeClientInformation)
            ProgressCanvasFactory.getInstance().not_nil!.addNormalPortion(50, "Game Keys")
            ChangedGameFeatureListener.getInstance().not_nil!.remove(InputFeatureFactory.getInstance().not_nil!.jf_INPUT_MAPPING)
        end
    end
    

    def init(abeClientInformation : AbeClientInformationInterface?, commandListener : CommandListener?, level : Int) : Nil
        level = level.to_i32!
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if !self.isInitialized() && (level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel() || level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_EARLY.not_nil!.getLevel())
            localPortion : Int32 = 40
            if level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_EARLY.not_nil!.getLevel()
                localPortion = 8
            end
            self.setInitialized(true)
            self.initKey(self.getPortion())
            self.initKeyMapping(abeClientInformation, self.getPortion())
            GameKeyEventFactory.getInstance().not_nil!.init()
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            progressCanvas.not_nil!.addNormalPortion(localPortion, "Game Key Events")
            BasicTouchInputFactory.getInstance().not_nil!.init(PlatformInputMappingFactory.getInstance().not_nil!.getPersistentInputMappingInstance().not_nil!.getInputMapping())
            CancelTouchButtonInputFactory.getInstance()
            progressCanvas.not_nil!.addNormalPortion(localPortion, "Touch Input")
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().not_nil!.init()
            progressCanvas.not_nil!.addNormalPortion(localPortion, "Motion Input")
            GameFeatureImageCacheFactory.init()
            progressCanvas.not_nil!.addNormalPortion(localPortion, "Image Cache")
            @resourceInitializationArray.not_nil![@j_EARLY_RESOURCES].not_nil!.init()
        end
    end
    

    def resourceInitialization(level : Int) : Nil
        level = level.to_i32!
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_EARLY.not_nil!.getLevel()
            self.clearResources()
            @resourceInitializationArray.not_nil![@j_EARLY_CHANGABLE_RESOURCES].not_nil!.init()
        end
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel()
            if @allLoaded
                self.clearResources()
            end
            if FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().not_nil!.getList().not_nil!.size() == 0
                @resourceInitializationArray.not_nil![@j_EARLY_CHANGABLE_RESOURCES].not_nil!.init()
            end
            @resourceInitializationArray.not_nil![@j_GAME_CHANGABLE_RESOURCES].not_nil!.init()
            @allLoaded = true
        end
    end
    

    def resourceAnimationChange : Bool
        changedGameFeatureListener : ChangedGameFeatureListener? = ChangedGameFeatureListener.getInstance()
        gameConfigurationCentral : GameConfigurationCentral? = GameConfigurationCentral.getInstance()
        if changedGameFeatureListener.not_nil!.isChangedGameConfiguration(gameConfigurationCentral.not_nil!.jf_SCALE)
            return true
        end
        if ChangedGameFeatureListener.getInstance().not_nil!.isChangedFeature(MainFeatureFactory.getInstance().not_nil!.jf_STATIC)
            return true
        end
        return false
    end
    

    def clearResources : Nil
        @allLoaded = false
        GameFeatureImageCacheFactory.releaseAll()
        featuredAnimationInterfaceFactoryInterfaceFactory : FeaturedAnimationInterfaceFactoryInterfaceFactory? = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.not_nil!.clear()
        FeaturedResourceRelativeRelationshipFactory.getInstance().not_nil!.clear()
    end
    

    def setGameInitialized(gameInitialized : Bool) : Nil
        @gameInitialized = gameInitialized
    end
    

    def isGameInitialized : Bool
        return @gameInitialized
    end
    

    def getPortion : Int32
        return @portion
    end
    

    def setInitialized(initialized : Bool) : Nil
        @initialized = initialized
    end
    

    def isInitialized : Bool
        return @initialized
    end
end


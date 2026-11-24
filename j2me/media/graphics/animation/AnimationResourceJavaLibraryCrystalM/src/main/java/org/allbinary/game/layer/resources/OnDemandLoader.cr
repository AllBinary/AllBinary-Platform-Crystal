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
# package org.allbinary.game.layer.resources

class OnDemandLoader < JObject
    @onDemandResourcesFactory : OnDemandResourcesFactory? = nil

    def jf_onDemandResourcesFactory : OnDemandResourcesFactory?
        @onDemandResourcesFactory
    end

    def jf_onDemandResourcesFactory=(value : OnDemandResourcesFactory?) : OnDemandResourcesFactory?
        @onDemandResourcesFactory = value
    end
    @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory? = nil

    def jf_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory?
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
    end

    def jf_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory=(value : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory?) : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory?
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = value
    end
    @resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory? = nil

    def jf_resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory?
        @resourceAnimationInterfaceFactoryInterfaceFactory
    end

    def jf_resourceAnimationInterfaceFactoryInterfaceFactory=(value : BaseResourceAnimationInterfaceFactoryInterfaceFactory?) : BaseResourceAnimationInterfaceFactoryInterfaceFactory?
        @resourceAnimationInterfaceFactoryInterfaceFactory = value
    end
    

    def jinit_OnDemandLoader(onDemandResourcesFactory : OnDemandResourcesFactory?, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory?, resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory?) : self
        @onDemandResourcesFactory = onDemandResourcesFactory
        @gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = JR.cast(gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory)
        @resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
        self
    end
    

    def init(imageCache : ImageCache?, level : Int, loadingString : String) : Nil
        level = level.to_i32!
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if Features.getInstance().not_nil!.isFeature(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ALL)
            if @resourceAnimationInterfaceFactoryInterfaceFactory.not_nil!.isInitialized()
                return
            end
            self.initAll(imageCache, loadingString)
        elsif level != resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel()
            layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface? = JR.cast(@gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.not_nil!.getInstance(level), LayerPlacementInterfaceBasicArrayListFactoryInterface)
            self.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        end
    end
    

    def initAll(imageCache : ImageCache?, loadingString : String) : Nil
        index : Int32 = 0
        portion : Int32 = 120
        onDemandResources : OnDemandResources? = nil
        onDemandIndex : Int32 = @onDemandResourcesFactory.not_nil!.size()
        jfor1 = false
        while true
            jfor1 = true
            break unless (onDemandIndex &-= 1) >= 0
            onDemandResources = @onDemandResourcesFactory.not_nil!.remove(onDemandIndex)
            if onDemandResources != OnDemandResources.jst_NULL_ON_DEMAND_RESOURCES
                index = onDemandResources.not_nil!.initAt(imageCache, @resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
        end
    end
    

    def initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface?, imageCache : ImageCache?, level : Int, loadingString : String) : Nil
        level = level.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        portion : Int32 = 120
        index : Int32 = 0
        onDemandArray : Array(Int32)? = layerPlacementInterfaceBasicArrayListFactoryInterface.not_nil!.getOnDemandResources()
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(commonStrings.not_nil!.jf_START).not_nil!.appendint(onDemandArray.not_nil!.size).not_nil!.toString(), self, "initLevel")
        onDemandResources : OnDemandResources? = nil
        onDemandIndex : Int32 = onDemandArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (onDemandIndex &-= 1) >= 0
            onDemandResources = @onDemandResourcesFactory.not_nil!.remove(onDemandArray.not_nil![onDemandIndex])
            if onDemandResources != OnDemandResources.jst_NULL_ON_DEMAND_RESOURCES
                index = onDemandResources.not_nil!.initAt(imageCache, @resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            end
        end
    end
end


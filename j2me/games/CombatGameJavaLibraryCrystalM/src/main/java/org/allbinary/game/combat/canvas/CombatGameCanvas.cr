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
# package org.allbinary.game.combat.canvas

class CombatGameCanvas < AllBinaryGameCanvas

    @@jst_basicLayerProcessor : Array(BasicLayerProcessor?)? = nil

    def self.jst_basicLayerProcessor : Array(BasicLayerProcessor?)?
        jclinit
        @@jst_basicLayerProcessor
    end

    def self.jst_basicLayerProcessor=(value : Array(BasicLayerProcessor?)?) : Array(BasicLayerProcessor?)?
        jclinit
        @@jst_basicLayerProcessor = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_basicLayerProcessor = Array(BasicLayerProcessor?).new(0, nil)
    end
    

    def jinit_CombatGameCanvas(cmdListener : CommandListener?, gameLayerManager : AllBinaryGameLayerManager?, highScoresFactoryInterface : HighScoresFactoryInterface?, gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory?, buffered : Bool) : self
        jinit_AllBinaryGameCanvas(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        self
    end
    

    def j_CombatGameCanvas_init : Nil
        DestroyEventCircularStaticPool.getInstance().not_nil!.init(self)
        ProgressCanvasFactory.getInstance().not_nil!.addNormalPortion(50, "Destroy Events")
    end
    

    def initApp(abeClientInformation : AbeClientInformationInterface?) : Nil
        self.j_CombatGameCanvas_init()
        super(abeClientInformation)
    end
    

    def initConfigurablePortion(portion : Int) : Nil
        portion = portion.to_i32!
        DestroyedLayerProcessor.init()
        ProgressCanvasFactory.getInstance().not_nil!.addNormalPortion(portion, "Basic Processors")
        features : Features? = Features.getInstance()
        gameFeatureFactory : GameFeatureFactory? = GameFeatureFactory.getInstance()
        if features.not_nil!.isFeature(gameFeatureFactory.not_nil!.jf_DROPPED_ITEMS) && features.not_nil!.isFeature(gameFeatureFactory.not_nil!.jf_DROPPED_ITEMS_FROM_DEATH)
            CombatGameCanvas.jst_basicLayerProcessor = Array(BasicLayerProcessor?).new(2, nil)
            CombatGameCanvas.jst_basicLayerProcessor.not_nil![0] = DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.jst_basicLayerProcessor.not_nil![1] = DropLayerProcessor.getInstance()
        else
            CombatGameCanvas.jst_basicLayerProcessor = Array(BasicLayerProcessor?).new(1, nil)
            CombatGameCanvas.jst_basicLayerProcessor.not_nil![0] = DestroyedLayerProcessor.getInstance()
        end
    end
    

    def processPlayingGame : Nil
        super()
        index : Int32 = CombatGameCanvas.jst_basicLayerProcessor.not_nil!.size
        jfor1 = false
        while true
            jfor1 = true
            break unless (index &-= 1) >= 0
            CombatGameCanvas.jst_basicLayerProcessor.not_nil![index].not_nil!.process(@gameLayerManager)
        end
    end
    

    def cleanupGame : Nil
        super()
        index : Int32 = CombatGameCanvas.jst_basicLayerProcessor.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            CombatGameCanvas.jst_basicLayerProcessor.not_nil![index].not_nil!.getList().not_nil!.clear()
        end
        GroupLayerManagerListener.getInstance().not_nil!.clear()
        GroupLayerManagerListener.getInstance().not_nil!.log()
        DestroyedEventHandler.getInstance().not_nil!.removeAllListeners()
        self.cleanupManager()
    end
    

    def cleanupManager : Nil
        @gameLayerManager.not_nil!.cleanup()
    end
end


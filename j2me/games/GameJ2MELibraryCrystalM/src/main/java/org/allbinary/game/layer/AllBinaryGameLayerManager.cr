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
# package org.allbinary.game.layer

class AllBinaryGameLayerManager < AllBinaryLayerManager
    @backgroundBasicColor : BasicColor? = nil

    def jf_backgroundBasicColor : BasicColor?
        @backgroundBasicColor
    end

    def jf_backgroundBasicColor=(value : BasicColor?) : BasicColor?
        @backgroundBasicColor = value
    end
    @foregroundBasicColor : BasicColor? = nil

    def jf_foregroundBasicColor : BasicColor?
        @foregroundBasicColor
    end

    def jf_foregroundBasicColor=(value : BasicColor?) : BasicColor?
        @foregroundBasicColor = value
    end
    @gameInfo : GameInfo? = nil

    def jf_gameInfo : GameInfo?
        @gameInfo
    end

    def jf_gameInfo=(value : GameInfo?) : GameInfo?
        @gameInfo = value
    end
    @playerGameInputCompositeInterface : PlayerGameInputCompositeInterface? = nil

    def jf_playerGameInputCompositeInterface : PlayerGameInputCompositeInterface?
        @playerGameInputCompositeInterface
    end

    def jf_playerGameInputCompositeInterface=(value : PlayerGameInputCompositeInterface?) : PlayerGameInputCompositeInterface?
        @playerGameInputCompositeInterface = value
    end

    @@jst_NULL_ALLBINARY_LAYER_MANAGER : JAny = nil

    def self.jst_NULL_ALLBINARY_LAYER_MANAGER : JAny
        jclinit
        @@jst_NULL_ALLBINARY_LAYER_MANAGER
    end

    def self.jst_NULL_ALLBINARY_LAYER_MANAGER=(value : JAny) : JAny
        jclinit
        @@jst_NULL_ALLBINARY_LAYER_MANAGER = value
    end

    @@jst_ID : JInteger? = nil

    def self.jst_ID : JInteger?
        jclinit
        @@jst_ID
    end

    def self.jst_ID=(value : JInteger?) : JInteger?
        jclinit
        @@jst_ID = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_LAYER_MANAGER = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
        @@jst_ID = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(22)
    end
    

    def self.getNullInstance : AllBinaryGameLayerManager?
        if AllBinaryGameLayerManager.jst_NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            AllBinaryGameLayerManager.jst_NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager.new.jinit_AllBinaryGameLayerManager(BasicColorFactory.getInstance().not_nil!.jf_BLACK, BasicColorFactory.getInstance().not_nil!.jf_WHITE, GameInfo.jst_NONE)
        end
        return JR.cast(AllBinaryGameLayerManager.jst_NULL_ALLBINARY_LAYER_MANAGER, AllBinaryGameLayerManager)
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryGameLayerManager : Nil
    
    
    
    @playerGameInputCompositeInterface = NullPlayerGameInputComposite.jst_NULL_PLAYER_GAME_INPUT_COMPOSITE
    end
    

    def jinit_AllBinaryGameLayerManager(backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?, gameInfo : GameInfo?) : self
        jinit_AllBinaryLayerManager()
        jfields_AllBinaryGameLayerManager()
        @backgroundBasicColor = backgroundBasicColor
        @foregroundBasicColor = foregroundBasicColor
        itemColorFactory : ItemColorFactory? = ItemColorFactory.getInstance()
        itemColorFactory.not_nil!.jf_INVERT_PAINT = @backgroundBasicColor.not_nil!.intValue()
        itemColorFactory.not_nil!.jf_PAINT = @foregroundBasicColor.not_nil!.intValue()
        @gameInfo = gameInfo
        self
    end
    

    def getLayerManager : AllBinaryLayerManager?
        return self
    end
    

    def init : Nil
    end
    

    def getBackgroundBasicColor : BasicColor?
        return @backgroundBasicColor
    end
    

    def setBackgroundBasicColor(backgroundBasicColor : BasicColor?) : Nil
        @backgroundBasicColor = backgroundBasicColor
        ItemColorFactory.getInstance().not_nil!.jf_INVERT_PAINT = @backgroundBasicColor.not_nil!.intValue()
    end
    

    def getForegroundBasicColor : BasicColor?
        return @foregroundBasicColor
    end
    

    def setForegroundBasicColor(foregroundBasicColor : BasicColor?) : Nil
        @foregroundBasicColor = foregroundBasicColor
        ItemColorFactory.getInstance().not_nil!.jf_PAINT = @foregroundBasicColor.not_nil!.intValue()
    end
    

    def getGameInfo : GameInfo?
        return @gameInfo
    end
    

    def setGameInfo(gameInfo : GameInfo?) : Nil
        @gameInfo = gameInfo
    end
    

    def setLayerProcessorList(list : BasicArrayList?) : Nil
        layerProcessorInterfaceArray : Array(LayerProcessor?)? = Array(LayerProcessor?).new(list.not_nil!.size(), nil)
        size : Int32 = layerProcessorInterfaceArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            layerProcessorInterfaceArray.not_nil![index] = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], LayerProcessor)
        end
        self.setLayerProcessorArray(layerProcessorInterfaceArray)
    end
    

    def setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface : PlayerGameInputCompositeInterface?) : Nil
        @playerGameInputCompositeInterface = playerGameInputCompositeInterface
    end
    

    def getPlayerGameInputCompositeInterface : PlayerGameInputCompositeInterface?
        return @playerGameInputCompositeInterface
    end
end


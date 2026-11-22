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
# package org.allbinary.layer

class AllBinaryLayerManager < ABLayerManager
    @layerManagerEventHandler : LayerManagerEventHandler? = nil

    def jf_layerManagerEventHandler : LayerManagerEventHandler?
        @layerManagerEventHandler
    end

    def jf_layerManagerEventHandler=(value : LayerManagerEventHandler?) : LayerManagerEventHandler?
        @layerManagerEventHandler = value
    end
    @createLayerManagerEvent : LayerManagerEvent? = nil

    def jf_createLayerManagerEvent : LayerManagerEvent?
        @createLayerManagerEvent
    end

    def jf_createLayerManagerEvent=(value : LayerManagerEvent?) : LayerManagerEvent?
        @createLayerManagerEvent = value
    end
    @deleteLayerManagerEvent : LayerManagerEvent? = nil

    def jf_deleteLayerManagerEvent : LayerManagerEvent?
        @deleteLayerManagerEvent
    end

    def jf_deleteLayerManagerEvent=(value : LayerManagerEvent?) : LayerManagerEvent?
        @deleteLayerManagerEvent = value
    end
    @basicLayerProcessorArray : Array(LayerProcessor?)? = nil

    def jf_basicLayerProcessorArray : Array(LayerProcessor?)?
        @basicLayerProcessorArray
    end

    def jf_basicLayerProcessorArray=(value : Array(LayerProcessor?)?) : Array(LayerProcessor?)?
        @basicLayerProcessorArray = value
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryLayerManager : Nil
    @layerManagerEventHandler = LayerManagerEventHandler.getInstance()
    @createLayerManagerEvent = LayerManagerEvent.new.jinit_LayerManagerEvent(self, @layerManagerEventHandler.not_nil!.jf_CREATE)
    @deleteLayerManagerEvent = LayerManagerEvent.new.jinit_LayerManagerEvent(self, @layerManagerEventHandler.not_nil!.jf_DELETE)
    @basicLayerProcessorArray = Array(LayerProcessor?).new(0, nil)
    end
    

    def jinit_AllBinaryLayerManager : self
        jinit_ABLayerManager(LayerManagerNoDebug.getInstance())
        jfields_AllBinaryLayerManager()
        self
    end
    

    def getLayerProcessorArray : Array(LayerProcessor?)?
        return @basicLayerProcessorArray
    end
    

    def setLayerProcessorArray(layerProcessorArray : Array(LayerProcessor?)?) : Nil
        @basicLayerProcessorArray = layerProcessorArray
    end
    

    def log : Nil
        size : Int32 = @basicLayerProcessorArray.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            layerProcessorInterface : LayerProcessor? = @basicLayerProcessorArray.not_nil![index]
        end
    end
    

    def append(layerInterface : AllBinaryLayer?) : Nil
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            super(layerInterface)
        end
    end
    

    def appendAt(layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        if !self.contains(layerInterface)
            self.appendProcessors(layerInterface)
            super(layerInterface, index)
        end
    end
    

    def appendProcessors(layerInterface : AllBinaryLayer?) : Nil
        @createLayerManagerEvent.not_nil!.setLayerInterface(layerInterface)
        @layerManagerEventHandler.not_nil!.fireEvent(@createLayerManagerEvent)
        layerProcessorInterface : LayerProcessor? = nil
        index : Int32 = @basicLayerProcessorArray.not_nil!.size
        jfor2 = false
        while true
            jfor2 = true
            break unless (index &-= 1) >= 0
            layerProcessorInterface = @basicLayerProcessorArray.not_nil![index]
            if layerProcessorInterface.not_nil!.isProcessorLayer(layerInterface)
                layerProcessorInterface.not_nil!.getLayerManager().not_nil!.append(layerInterface)
            end
        end
    end
    

    def remove(layerInterface : AllBinaryLayer?) : Nil
        @deleteLayerManagerEvent.not_nil!.setLayerInterface(layerInterface)
        @layerManagerEventHandler.not_nil!.fireDeleteEvent(@deleteLayerManagerEvent)
        layerProcessorInterface : LayerProcessor? = nil
        index : Int32 = @basicLayerProcessorArray.not_nil!.size
        jfor3 = false
        while true
            jfor3 = true
            break unless (index &-= 1) >= 0
            layerProcessorInterface = @basicLayerProcessorArray.not_nil![index]
            layerProcessorInterface.not_nil!.getLayerManager().not_nil!.remove(layerInterface)
        end
        super(layerInterface)
    end
    

    def process : Nil
        layerProcessorInterface : LayerProcessor? = nil
        size : Int32 = @basicLayerProcessorArray.not_nil!.size
        index : Int32 = 0
        jfor4 = false
        while true
            if jfor4
                index &+= 1
            end
            jfor4 = true
            break unless index < size
            layerProcessorInterface = @basicLayerProcessorArray.not_nil![index]
            layerProcessorInterface.not_nil!.process(self)
        end
    end
    

    def cleanup : Nil
        layerProcessorInterface : LayerProcessor? = nil
        size : Int32 = @basicLayerProcessorArray.not_nil!.size
        index : Int32 = 0
        jfor5 = false
        while true
            if jfor5
                index &+= 1
            end
            jfor5 = true
            break unless index < size
            layerProcessorInterface = @basicLayerProcessorArray.not_nil![index]
            layerProcessorInterface.not_nil!.getLayerManager().not_nil!.cleanup()
        end
        super()
    end
end


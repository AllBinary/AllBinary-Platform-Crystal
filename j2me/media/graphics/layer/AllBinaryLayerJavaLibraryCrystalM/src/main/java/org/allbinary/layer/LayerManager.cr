# Generated Code Do Not Modify
# package org.allbinary.layer

class ABLayerManager < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @systemWrapper : ABSystemWrapper? = nil

    def jf_systemWrapper : ABSystemWrapper?
        @systemWrapper
    end

    def jf_systemWrapper=(value : ABSystemWrapper?) : ABSystemWrapper?
        @systemWrapper = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @layerManagerLogging : LayerManagerLoggingBase? = nil

    def jf_layerManagerLogging : LayerManagerLoggingBase?
        @layerManagerLogging
    end

    def jf_layerManagerLogging=(value : LayerManagerLoggingBase?) : LayerManagerLoggingBase?
        @layerManagerLogging = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @anyType : SynchObject? = nil

    def jf_anyType : SynchObject?
        @anyType
    end

    def jf_anyType=(value : SynchObject?) : SynchObject?
        @anyType = value
    end

    # Java field initializers run after the super constructor
    def jfields_ABLayerManager : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @systemWrapper = ABSystemWrapper.getInstance()
    @tsUtil = TsUtil.getInstance()
    
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @anyType = SynchObject.new.jinit_SynchObject()
    end
    

    def jinit_ABLayerManager(layerManagerLogging : LayerManagerLoggingBase?) : self
        jfields_ABLayerManager()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @layerManagerLogging = layerManagerLogging
        self
    end
    

    def contains(layerInterface : AllBinaryLayer?) : Bool
        return @list.not_nil!.contains(layerInterface)
    end
    

    def update(layerInterface : AllBinaryLayer?) : Nil
        had : Bool = @list.not_nil!.remove(layerInterface)
        if had
            nextLayerInterface : AllBinaryLayer? = nil
            size : Int32 = @list.not_nil!.size()
            index : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    index &+= 1
                end
                jfor1 = true
                break unless index < size
                nextLayerInterface = JR.cast(@list.not_nil!.get(index), AllBinaryLayer)
                if layerInterface.not_nil!.getZP() > nextLayerInterface.not_nil!.getZP()
                    @list.not_nil!.addAt(index, layerInterface)
                    return
                end
            end
            @list.not_nil!.add(layerInterface)
        end
    end
    

    def insert(layerInterface : AllBinaryLayer?) : Nil
        nextLayerInterface : AllBinaryLayer? = nil
        size : Int32 = @list.not_nil!.size()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            nextLayerInterface = JR.cast(@list.not_nil!.get(index), AllBinaryLayer)
            if layerInterface.not_nil!.getZP() > nextLayerInterface.not_nil!.getZP()
                self.appendAt(layerInterface, index)
                return
            end
        end
        self.append(layerInterface)
    end
    

    def append(layerInterface : AllBinaryLayer?) : Nil
        @layerManagerLogging.not_nil!.append(layerInterface)
        @list.not_nil!.add(layerInterface)
    end
    

    def appendAt(layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
        @layerManagerLogging.not_nil!.appendAt(layerInterface, index)
        @list.not_nil!.addAt(index, layerInterface)
    end
    

    def remove(layerInterface : AllBinaryLayer?) : Nil
        begin
            @layerManagerLogging.not_nil!.remove(layerInterface)
            result : Bool = @list.not_nil!.remove(layerInterface)
            @layerManagerLogging.not_nil!.removeResult(self, layerInterface, result)
        end
    end
    

    def getLayerAt(index : Int) : ABLayer?
        index = index.to_i32!
        return JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], ABLayer)
    end
    

    def getSize : Int32
        return @list.not_nil!.size()
    end
    

    def cleanup : Nil
        begin
            @list.not_nil!.clear()
            @layerManagerLogging.not_nil!.clear()
            @tsUtil.not_nil!.gc()
            @tsUtil.not_nil!.gc()
        end
    end
    

    def paint(g : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        begin
            comp : ABLayer? = nil
            index : Int32 = @list.not_nil!.size()
            jfor3 = false
            while true
                jfor3 = true
                break unless (index &-= 1) >= 0
                comp = JR.cast(@list.not_nil!.jf_objectArray.not_nil![index], ABLayer)
                if !(comp).nil? && comp.not_nil!.isVisible()
                    comp.not_nil!.paint(g)
                end
            end
        end
    end
end


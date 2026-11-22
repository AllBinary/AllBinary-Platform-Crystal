# Generated Code Do Not Modify
# package org.allbinary.game.layer.drop

class PlacedLayerFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @basicArrayListUtil : BasicArrayListUtil? = nil

    def jf_basicArrayListUtil : BasicArrayListUtil?
        @basicArrayListUtil
    end

    def jf_basicArrayListUtil=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        @basicArrayListUtil = value
    end

    @@jst_instance : PlacedLayerFactory? = nil

    def self.jst_instance : PlacedLayerFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PlacedLayerFactory?) : PlacedLayerFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PlacedLayerFactory.new.jinit_PlacedLayerFactory()
    end
    

    def self.getInstance : PlacedLayerFactory?
        return PlacedLayerFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PlacedLayerFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def jinit_PlacedLayerFactory : self
        jfields_PlacedLayerFactory()
        self
    end
    

    def clear : Nil
        @list.not_nil!.clear()
    end
    

    def getSize : Int32
        return @list.not_nil!.size()
    end
    

    def getRandomInstance : AllBinaryLayerFactoryInterface?
        return JR.cast(@basicArrayListUtil.not_nil!.getRandom(@list), AllBinaryLayerFactoryInterface)
    end
    

    def add(layerInterfaceFactoryInterface : AllBinaryLayerFactoryInterface?) : Nil
        @list.not_nil!.add(layerInterfaceFactoryInterface)
    end
end


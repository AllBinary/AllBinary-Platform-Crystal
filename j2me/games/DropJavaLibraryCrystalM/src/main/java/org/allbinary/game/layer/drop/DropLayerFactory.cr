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
# package org.allbinary.game.layer.drop

class DropLayerFactory < JObject
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

    @@jst_DROP_LAYER_FACTORY : DropLayerFactory? = nil

    def self.jst_DROP_LAYER_FACTORY : DropLayerFactory?
        jclinit
        @@jst_DROP_LAYER_FACTORY
    end

    def self.jst_DROP_LAYER_FACTORY=(value : DropLayerFactory?) : DropLayerFactory?
        jclinit
        @@jst_DROP_LAYER_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_DROP_LAYER_FACTORY = DropLayerFactory.new.jinit_DropLayerFactory()
    end
    

    def self.getInstance : DropLayerFactory?
        return DropLayerFactory.jst_DROP_LAYER_FACTORY
    end

    # Java field initializers run after the super constructor
    def jfields_DropLayerFactory : Nil
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def jinit_DropLayerFactory : self
        jfields_DropLayerFactory()
        self
    end
    

    def clear : Nil
        @list.not_nil!.clear()
    end
    

    def getSize : Int32
        return @list.not_nil!.size()
    end
    

    def getRandomInstance : PickedUpLayerInterfaceFactoryInterface?
        return JR.cast(@basicArrayListUtil.not_nil!.getRandom(@list), PickedUpLayerInterfaceFactoryInterface)
    end
    

    def add(layerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface?) : Nil
        @list.not_nil!.add(layerInterfaceFactoryInterface)
    end
    

    def getList : BasicArrayList?
        return @list
    end
end


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

class LayerInterfaceFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @j_HASHTABLE_LABEL : String = ""

    def jf_HASHTABLE_LABEL : String
        @j_HASHTABLE_LABEL
    end

    def jf_HASHTABLE_LABEL=(value : String) : String
        @j_HASHTABLE_LABEL = value
    end

    @@jst_SINGLETON : LayerInterfaceFactory? = nil

    def self.jst_SINGLETON : LayerInterfaceFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : LayerInterfaceFactory?) : LayerInterfaceFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = LayerInterfaceFactory.new.jinit_LayerInterfaceFactory()
    end
    

    def self.getInstance : LayerInterfaceFactory?
        return LayerInterfaceFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_LayerInterfaceFactory : Nil
    @logUtil = LogUtil.getInstance()
    @list = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    @j_HASHTABLE_LABEL = "Hashtable: "
    end

    def jinit_LayerInterfaceFactory : self
        jfields_LayerInterfaceFactory()
        self
    end
    

    def init : Nil
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def getNexInstance(hashtable : ABHashtable?, x : Int, y : Int, z : Int) : AllBinaryLayer?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_HASHTABLE_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(hashtable)).not_nil!.toString(), self, commonStrings.not_nil!.jf_GET_INSTANCE)
        typeInteger : JInteger? = JR.cast(hashtable.not_nil!.get(ABLayer.jst_ID), JInteger)
        layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![typeInteger.not_nil!.intValue() - 1], LayerInterfaceFactoryInterface)
        return JR.cast(layerInterfaceFactoryInterface.not_nil!.getNextInstance(hashtable, x, y, z), AllBinaryLayer)
    end
    

    def add(layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface?) : Nil
        @list.not_nil!.add(layerInterfaceFactoryInterface)
    end
end


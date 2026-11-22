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

class BasicLayerProcessor < JObject
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

    @@jst_NULL_LAYER_PROCESSOR : BasicLayerProcessor? = nil

    def self.jst_NULL_LAYER_PROCESSOR : BasicLayerProcessor?
        jclinit
        @@jst_NULL_LAYER_PROCESSOR
    end

    def self.jst_NULL_LAYER_PROCESSOR=(value : BasicLayerProcessor?) : BasicLayerProcessor?
        jclinit
        @@jst_NULL_LAYER_PROCESSOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_LAYER_PROCESSOR = BasicLayerProcessor.new.jinit_BasicLayerProcessor()
    end

    # Java field initializers run after the super constructor
    def jfields_BasicLayerProcessor : Nil
    @logUtil = LogUtil.getInstance()
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_BasicLayerProcessor : self
        jfields_BasicLayerProcessor()
        self
    end
    

    def add(layerInterface : AllBinaryLayer?) : Nil
        if !@list.not_nil!.contains(layerInterface)
            @list.not_nil!.add(layerInterface)
        end
    end
    

    def process(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        raise (JException.new.jinit_JException(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getList : BasicArrayList?
        return @list
    end
end


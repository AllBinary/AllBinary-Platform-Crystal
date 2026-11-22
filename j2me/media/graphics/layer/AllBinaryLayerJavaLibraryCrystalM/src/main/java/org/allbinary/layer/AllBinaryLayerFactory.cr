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

class AllBinaryLayerFactory < JObject
    include AllBinaryLayerFactoryInterface
    @rectangle : Rectangle? = nil

    def jf_rectangle : Rectangle?
        @rectangle
    end

    def jf_rectangle=(value : Rectangle?) : Rectangle?
        @rectangle = value
    end
    

    def jinit_AllBinaryLayerFactory(rectangle : Rectangle?) : self
        @rectangle = rectangle
        self
    end
    

    def getInstance : AllBinaryLayer?
        return AllBinaryLayer.new.jinit_AllBinaryLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, @rectangle, ViewPosition.getInstanceD())
    end
end


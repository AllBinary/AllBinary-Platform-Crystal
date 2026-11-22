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

class LayerManagerLoggingBase < JObject

    def jinit_LayerManagerLoggingBase : self
        self
    end
    

    def append(layerInterface : AllBinaryLayer?) : Nil
    end
    

    def appendAt(layerInterface : AllBinaryLayer?, index : Int) : Nil
        index = index.to_i32!
    end
    

    def remove(layerInterface : AllBinaryLayer?) : Nil
    end
    

    def removeResult(layerManager : ABLayerManager?, layerInterface : AllBinaryLayer?, result : Bool) : Nil
    end
    

    def clear : Nil
    end
end


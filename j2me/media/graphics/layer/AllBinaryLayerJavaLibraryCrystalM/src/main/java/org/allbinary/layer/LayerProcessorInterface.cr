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

module LayerProcessorInterface
    include JObjectI
    include BasicLayerProcessorInterface
end

module JObjectI
    def getLayerManager(*jargs) : NoReturn
        raise JR.abstractMethod("getLayerManager")
    end
    def processAt(*jargs) : NoReturn
        raise JR.abstractMethod("processAt")
    end
    def isProcessorLayer(*jargs) : NoReturn
        raise JR.abstractMethod("isProcessorLayer")
    end
end


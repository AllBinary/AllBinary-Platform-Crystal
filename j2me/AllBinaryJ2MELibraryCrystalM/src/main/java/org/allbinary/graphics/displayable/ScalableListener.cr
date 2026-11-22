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
# package org.allbinary.graphics.displayable

module ScalableListener
    include JObjectI
end

module JObjectI
    def getRatio(*jargs) : NoReturn
        raise JR.abstractMethod("getRatio")
    end
    def getLeft(*jargs) : NoReturn
        raise JR.abstractMethod("getLeft")
    end
    def getTop(*jargs) : NoReturn
        raise JR.abstractMethod("getTop")
    end
    def scale(*jargs) : NoReturn
        raise JR.abstractMethod("scale")
    end
end


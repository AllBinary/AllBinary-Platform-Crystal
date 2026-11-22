# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.animation.text

module TextInterface
    include JObjectI
end

module JObjectI
    def setTextWithOnMeasure(*jargs) : NoReturn
        raise JR.abstractMethod("setTextWithOnMeasure")
    end
    def getText(*jargs) : NoReturn
        raise JR.abstractMethod("getText")
    end
    def setText(*jargs) : NoReturn
        raise JR.abstractMethod("setText")
    end
    def getFontHeight(*jargs) : NoReturn
        raise JR.abstractMethod("getFontHeight")
    end
    def getWidth(*jargs) : NoReturn
        raise JR.abstractMethod("getWidth")
    end
end


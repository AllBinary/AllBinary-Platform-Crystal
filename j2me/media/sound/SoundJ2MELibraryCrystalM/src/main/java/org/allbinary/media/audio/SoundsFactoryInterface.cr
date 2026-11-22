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
# package org.allbinary.media.audio

module SoundsFactoryInterface
    include JObjectI
end

module JObjectI
    def init(*jargs) : NoReturn
        raise JR.abstractMethod("init")
    end
    def getSoundInterfaceArray(*jargs) : NoReturn
        raise JR.abstractMethod("getSoundInterfaceArray")
    end
    def setInitialized(*jargs) : NoReturn
        raise JR.abstractMethod("setInitialized")
    end
    def isInitialized(*jargs) : NoReturn
        raise JR.abstractMethod("isInitialized")
    end
end


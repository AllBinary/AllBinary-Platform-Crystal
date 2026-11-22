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

class BaseSoundsFactory < JObject
    include SoundsFactoryInterface
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end

    def jinit_BaseSoundsFactory : self
        self
    end
    

    def init : Nil
    end
    

    def getSoundInterfaceArray : Array(Sound?)?
        return Array(Sound?).new(0, nil)
    end
    

    def setInitialized(initialized : Bool) : Nil
        @initialized = initialized
    end
    

    def isInitialized : Bool
        return @initialized
    end
end


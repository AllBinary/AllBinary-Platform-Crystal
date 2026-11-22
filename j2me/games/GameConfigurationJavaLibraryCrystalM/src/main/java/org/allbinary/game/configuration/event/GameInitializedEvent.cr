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
# package org.allbinary.game.configuration.event

class GameInitializedEvent < AllBinaryEventObject
    @resourceLoadingLevel : ResourceLoadingLevel? = nil

    def jf_resourceLoadingLevel : ResourceLoadingLevel?
        @resourceLoadingLevel
    end

    def jf_resourceLoadingLevel=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @resourceLoadingLevel = value
    end
    @level : Int32 = 0

    def jf_level : Int32
        @level
    end

    def jf_level=(value : Int32) : Int32
        @level = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameInitializedEvent : Nil
    @resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().not_nil!.jf_LEVEL
    
    end
    

    def jinit_GameInitializedEvent(anyType : JAny) : self
        jinit_AllBinaryEventObject(anyType)
        jfields_GameInitializedEvent()
        self
    end
    

    def setLevel(level : Int) : Nil
        level = level.to_i32!
        @level = level
        @resourceLoadingLevel = ResourceLoadingLevelFactory.getInstance().not_nil!.jf_LEVEL
    end
    

    def getLevel : Int32
        return @level
    end
    

    def setResourceLoadingLevel(resourceLoadingLevel : ResourceLoadingLevel?) : Nil
        @resourceLoadingLevel = resourceLoadingLevel
        @level = @resourceLoadingLevel.not_nil!.getLevel()
    end
    

    def getResourceLoadingLevel : ResourceLoadingLevel?
        return @resourceLoadingLevel
    end
end


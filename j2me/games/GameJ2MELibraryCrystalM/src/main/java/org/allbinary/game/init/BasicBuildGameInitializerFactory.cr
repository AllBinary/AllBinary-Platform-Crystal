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
# package org.allbinary.game.init

class BasicBuildGameInitializerFactory < JObject
    include GameInitializationInterfaceFactoryInterface

    @@jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY : BasicBuildGameInitializerFactory? = nil

    def self.jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY : BasicBuildGameInitializerFactory?
        jclinit
        @@jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
    end

    def self.jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY=(value : BasicBuildGameInitializerFactory?) : BasicBuildGameInitializerFactory?
        jclinit
        @@jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory.new.jinit_BasicBuildGameInitializerFactory()
    end

    def jinit_BasicBuildGameInitializerFactory : self
        self
    end
    

    def getInstance : GameInitializationInterface?
        return JR.cast(BaseGameInitialization.jst_NULL_BASE_GAME_INITIALIZATION, GameInitializationInterface)
    end
end


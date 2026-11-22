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

class ChangedGameFeatureListener < BaseChangedGameFeatureListener

    @@jst_gameFeatureListener : ChangedGameFeatureListener? = nil

    def self.jst_gameFeatureListener : ChangedGameFeatureListener?
        jclinit
        @@jst_gameFeatureListener
    end

    def self.jst_gameFeatureListener=(value : ChangedGameFeatureListener?) : ChangedGameFeatureListener?
        jclinit
        @@jst_gameFeatureListener = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_gameFeatureListener = ChangedGameFeatureListener.new.jinit_ChangedGameFeatureListener()
    end
    

    def self.getInstance : ChangedGameFeatureListener?
        return ChangedGameFeatureListener.jst_gameFeatureListener
    end

    def jinit_ChangedGameFeatureListener : self
        jinit_BaseChangedGameFeatureListener()
        self
    end
    

    def isChangedGameConfiguration(gameConfiguration : GameConfiguration?) : Bool
        return @list.not_nil!.contains(gameConfiguration)
    end
end


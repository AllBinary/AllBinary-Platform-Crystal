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
# package org.allbinary.game.health

class NullHealthListener < JObject
    include HealthListenerInterface

    @@jst_NULL_HEALTH_LISTENER : NullHealthListener? = nil

    def self.jst_NULL_HEALTH_LISTENER : NullHealthListener?
        jclinit
        @@jst_NULL_HEALTH_LISTENER
    end

    def self.jst_NULL_HEALTH_LISTENER=(value : NullHealthListener?) : NullHealthListener?
        jclinit
        @@jst_NULL_HEALTH_LISTENER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_HEALTH_LISTENER = NullHealthListener.new.jinit_NullHealthListener()
    end

    def jinit_NullHealthListener : self
        self
    end
    

    def onHealthChange : Nil
    end
end


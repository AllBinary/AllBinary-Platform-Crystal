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
# package org.allbinary.game

class NullIntermissionEnableListener < JObject
    include IntermissionEnableListenerInterface

    @@jst_SINGLETON : IntermissionEnableListenerInterface? = nil

    def self.jst_SINGLETON : IntermissionEnableListenerInterface?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : IntermissionEnableListenerInterface?) : IntermissionEnableListenerInterface?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullIntermissionEnableListener.new.jinit_NullIntermissionEnableListener()
    end
    

    def self.getInstance : IntermissionEnableListenerInterface?
        return NullIntermissionEnableListener.jst_SINGLETON
    end
    

    def jinit_NullIntermissionEnableListener : self
        self
    end
    

    def notifyIntermission(enable : Bool) : Nil
    end
end


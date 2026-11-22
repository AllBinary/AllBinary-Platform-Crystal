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
# package org.allbinary.animation

class AnimationEventHandler < BasicEventHandler

    @@jst_eventHandler : AnimationEventHandler? = nil

    def self.jst_eventHandler : AnimationEventHandler?
        jclinit
        @@jst_eventHandler
    end

    def self.jst_eventHandler=(value : AnimationEventHandler?) : AnimationEventHandler?
        jclinit
        @@jst_eventHandler = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_eventHandler = AnimationEventHandler.new.jinit_AnimationEventHandler()
    end
    

    def self.getInstance : AnimationEventHandler?
        return AnimationEventHandler.jst_eventHandler
    end
    

    def jinit_AnimationEventHandler : self
        jinit_BasicEventHandler()
        self
    end
end


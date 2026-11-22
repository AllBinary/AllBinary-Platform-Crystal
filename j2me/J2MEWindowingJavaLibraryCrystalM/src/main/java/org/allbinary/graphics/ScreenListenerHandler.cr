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
# package org.allbinary.graphics

class ScreenListenerHandler < JObject
    @screenListenerInterface : ScreenListenerInterface? = nil

    def jf_screenListenerInterface : ScreenListenerInterface?
        @screenListenerInterface
    end

    def jf_screenListenerInterface=(value : ScreenListenerInterface?) : ScreenListenerInterface?
        @screenListenerInterface = value
    end

    @@jst_instance : ScreenListenerHandler? = nil

    def self.jst_instance : ScreenListenerHandler?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScreenListenerHandler?) : ScreenListenerHandler?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScreenListenerHandler.new.jinit_ScreenListenerHandler()
    end
    

    def self.getInstance : ScreenListenerHandler?
        return ScreenListenerHandler.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ScreenListenerHandler : Nil
    @screenListenerInterface = ScreenEmptyListener.new.jinit_ScreenEmptyListener()
    end

    def jinit_ScreenListenerHandler : self
        jfields_ScreenListenerHandler()
        self
    end
    

    def setListener(screenListenerInterface : ScreenListenerInterface?) : Nil
        @screenListenerInterface = screenListenerInterface
    end
    

    def fireWithState(isFullScreen : Bool) : Nil
        @screenListenerInterface.not_nil!.onFullScreen(isFullScreen)
    end
    

    def fire : Nil
        @screenListenerInterface.not_nil!.onFullScreenDisplay()
    end
end


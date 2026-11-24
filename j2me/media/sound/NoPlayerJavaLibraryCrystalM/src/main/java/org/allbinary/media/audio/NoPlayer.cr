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

class NoPlayer < BasicPlayer

    @@jst_NO_PLAYER : NoPlayer? = nil

    def self.jst_NO_PLAYER : NoPlayer?
        jclinit
        @@jst_NO_PLAYER
    end

    def self.jst_NO_PLAYER=(value : NoPlayer?) : NoPlayer?
        jclinit
        @@jst_NO_PLAYER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_PLAYER = NoPlayer.new.jinit_NoPlayer()
    end
    

    def jinit_NoPlayer : self
        jinit_BasicPlayer()
        self
    end
    

    def close : Nil
    end
    

    def getContentType : String
        return StringUtil.getInstance().not_nil!.jf_NULL_STRING
    end
    

    def getControl(controlType : String) : Control?
        return JR.cast(NullControl.new.jinit_NullControl(), Control)
    end
    

    def getControls : Array(Control?)?
        return Array(Control?).new(0, nil)
    end
end


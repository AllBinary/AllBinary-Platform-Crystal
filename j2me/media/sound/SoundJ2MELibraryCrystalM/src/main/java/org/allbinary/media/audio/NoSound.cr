# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class NoSound < Sound

    @@jst_instance : NoSound? = nil

    def self.jst_instance : NoSound?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoSound?) : NoSound?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoSound.new.jinit_NoSound()
    end
    

    def self.getInstance : NoSound?
        return NoSound.jst_instance
    end
    

    def jinit_NoSound : self
        jinit_Sound(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING)
        self.setPlayerP(NoPlayer.jst_NO_PLAYER)
        self
    end
end


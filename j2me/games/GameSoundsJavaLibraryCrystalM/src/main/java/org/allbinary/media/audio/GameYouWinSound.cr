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

class GameYouWinSound < CompositeSound

    @@jst_soundInterface : Sound? = nil

    def self.jst_soundInterface : Sound?
        jclinit
        @@jst_soundInterface
    end

    def self.jst_soundInterface=(value : Sound?) : Sound?
        jclinit
        @@jst_soundInterface = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_soundInterface = GameYouWinSound.new.jinit_GameYouWinSound()
    end
    

    def self.getInstance : Sound?
        return GameYouWinSound.jst_soundInterface
    end
    

    def jinit_GameYouWinSound : self
        jinit_CompositeSound("resource:/wav/youwin.wav")
        self
    end
end


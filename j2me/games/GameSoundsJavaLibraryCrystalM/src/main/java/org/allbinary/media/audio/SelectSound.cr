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

class SelectSound < CompositeSound

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
        @@jst_soundInterface = SelectSound.new.jinit_SelectSound()
    end
    

    def self.getInstance : Sound?
        return SelectSound.jst_soundInterface
    end
    

    def jinit_SelectSound : self
        jinit_CompositeSound("resource:/wav/select.wav")
        self
    end
end


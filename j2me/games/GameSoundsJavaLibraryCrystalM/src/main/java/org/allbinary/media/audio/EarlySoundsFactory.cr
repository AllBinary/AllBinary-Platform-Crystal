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

class EarlySoundsFactory < BaseSoundsFactory

    @@jst_instance : EarlySoundsFactory? = nil

    def self.jst_instance : EarlySoundsFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : EarlySoundsFactory?) : EarlySoundsFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = EarlySoundsFactory.new.jinit_EarlySoundsFactory()
    end
    

    def self.getInstance : EarlySoundsFactory?
        return EarlySoundsFactory.jst_instance
    end

    def jinit_EarlySoundsFactory : self
        jinit_BaseSoundsFactory()
        self
    end
    

    def getSoundInterfaceArray : Array(Sound?)?
        soundInterfaceArray : Array(Sound?)? = Array(Sound?).new(2, nil)
        index : Int32 = 0
        soundInterfaceArray.not_nil![((index &+= 1) &- 1)] = JR.cast(SelectSound.getInstance(), Sound)
        soundInterfaceArray.not_nil![((index &+= 1) &- 1)] = JR.cast(ErrorSound.getInstance(), Sound)
        return soundInterfaceArray
    end
end


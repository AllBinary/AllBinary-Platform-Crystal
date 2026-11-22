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
# package org.allbinary.media

class AllBinaryVibration < AllBinaryVibrationME

    @@jst_VIBRATION : AllBinaryVibrationME? = nil

    def self.jst_VIBRATION : AllBinaryVibrationME?
        jclinit
        @@jst_VIBRATION
    end

    def self.jst_VIBRATION=(value : AllBinaryVibrationME?) : AllBinaryVibrationME?
        jclinit
        @@jst_VIBRATION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_VIBRATION = AllBinaryNoVibration.jst_NO_VIBRATION
    end
    

    def self.getInstance : AllBinaryVibrationME?
        return AllBinaryVibration.jst_VIBRATION
    end
    

    def self.init : Nil
        if GameConfigurationCentral.getInstance().not_nil!.jf_VIBRATION.not_nil!.getValue().not_nil!.intValue() == 0
            AllBinaryVibration.jst_VIBRATION = AllBinaryNoVibration.jst_NO_VIBRATION
        else
            AllBinaryVibration.jst_VIBRATION = AllBinaryVibration.new.jinit_AllBinaryVibration()
        end
    end
    

    def jinit_AllBinaryVibration : self
        jinit_AllBinaryVibrationME()
        self
    end
    

    def vibrate(duration : Int, type_ : Int, volume : Int) : Nil
        duration = duration.to_i32!
        type_ = type_.to_i32!
        volume = volume.to_i32!
    end
end


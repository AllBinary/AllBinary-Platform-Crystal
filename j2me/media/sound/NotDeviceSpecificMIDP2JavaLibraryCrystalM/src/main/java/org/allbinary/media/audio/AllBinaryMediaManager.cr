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

class AllBinaryMediaManager < JObject

    def self.jst_THIS : String
        "AllBinaryMediaManagerNoMIPD2"
    end
    

    def self.isMuted : Bool
        return false
    end
    

    def self.setMuted(aMuted : Bool) : Nil
    end
    

    def self.update : Bool
        return true
    end
    

    def self.init(soundsFactoryInterface : SoundsFactoryInterface?) : Nil
        logUtil : LogUtil? = LogUtil.getInstance()
        commonString : CommonStrings? = CommonStrings.getInstance()
        logUtil.not_nil!.putF(commonString.not_nil!.jf_START, AllBinaryMediaManager.jst_THIS, commonString.not_nil!.jf_INIT)
        ProgressCanvasFactory.getInstance().not_nil!.addNormalPortion(50, "Media Manager")
        Sounds.new.jinit_Sounds(soundsFactoryInterface).not_nil!.init()
    end
    

    def self.shutdown(soundsFactoryInterface : SoundsFactoryInterface?) : Nil
        Sounds.new.jinit_Sounds(soundsFactoryInterface).not_nil!.stopAll()
        Sounds.new.jinit_Sounds(soundsFactoryInterface).not_nil!.closeAll()
        TsUtil.getInstance().not_nil!.gc()
    end
    

    def self.createPlayer(resource : String) : Player?
        if Features.getInstance().not_nil!.isFeature(GameFeatureFactory.getInstance().not_nil!.jf_SOUND)
            if TsUtil.getInstance().not_nil!.compareTo(resource, Manager.jst_TONE_DEVICE_LOCATOR) == 0
                return JR.cast(Manager.createPlayer(resource), Player)
            else
                inputStream : JInputStream? = ResourceUtil.getInstance().not_nil!.getResourceAsStream(resource)
                return JR.cast(MIDPUtil.getInstance().not_nil!.createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().not_nil!.jf_MIME_AUDIO_WAV.not_nil!.getName()), Player)
            end
        else
            return JR.cast(NoPlayer.jst_NO_PLAYER, Player)
        end
        return nil
    end
    

    def self.playTone(frequency : Int, time : Int, volume : Int) : Nil
        frequency = frequency.to_i32!
        time = time.to_i32!
        volume = volume.to_i32!
        if Features.getInstance().not_nil!.isFeature(GameFeatureFactory.getInstance().not_nil!.jf_SOUND)
            Manager.playTone(frequency, time, volume)
        end
    end
    

    def jinit_AllBinaryMediaManager : self
        self
    end
end


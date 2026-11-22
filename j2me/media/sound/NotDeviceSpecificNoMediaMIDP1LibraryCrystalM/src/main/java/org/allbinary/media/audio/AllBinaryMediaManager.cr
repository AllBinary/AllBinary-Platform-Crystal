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
        "AllBinaryMediaManagerNoMediaMIDP1"
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
    

    def self.createPlayerFromInputStream(stream : JInputStream?, type_ : String) : Player?
        logUtil : LogUtil? = LogUtil.getInstance()
        commonString : CommonStrings? = CommonStrings.getInstance()
        logUtil.not_nil!.putF(commonString.not_nil!.jf_START, AllBinaryMediaManager.jst_THIS, "creatPlayer(InputStream)")
        return JR.cast(NoPlayer.jst_NO_PLAYER, Player)
    end
    

    def self.createPlayer(locator : String) : Player?
        logUtil : LogUtil? = LogUtil.getInstance()
        commonString : CommonStrings? = CommonStrings.getInstance()
        logUtil.not_nil!.putF(commonString.not_nil!.jf_START, AllBinaryMediaManager.jst_THIS, "creatPlayer(locator)")
        return JR.cast(NoPlayer.jst_NO_PLAYER, Player)
    end
    

    def self.playTone(frequency : Int, time : Int, volume : Int) : Nil
        frequency = frequency.to_i32!
        time = time.to_i32!
        volume = volume.to_i32!
    end
    

    def self.getSupportedContentTypes(protocol : String) : Array(String)?
        return StringUtil.getInstance().not_nil!.getArrayInstance()
    end
    

    def self.getSupportedProtocols(content_type : String) : Array(String)?
        return StringUtil.getInstance().not_nil!.getArrayInstance()
    end
    

    def jinit_AllBinaryMediaManager : self
        self
    end
end


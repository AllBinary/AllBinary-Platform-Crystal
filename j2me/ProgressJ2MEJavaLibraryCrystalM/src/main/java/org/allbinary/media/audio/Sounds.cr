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

class Sounds < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @soundStrings : SoundStrings? = nil

    def jf_soundStrings : SoundStrings?
        @soundStrings
    end

    def jf_soundStrings=(value : SoundStrings?) : SoundStrings?
        @soundStrings = value
    end
    @soundsFactoryInterface : SoundsFactoryInterface? = nil

    def jf_soundsFactoryInterface : SoundsFactoryInterface?
        @soundsFactoryInterface
    end

    def jf_soundsFactoryInterface=(value : SoundsFactoryInterface?) : SoundsFactoryInterface?
        @soundsFactoryInterface = value
    end

    # Java field initializers run after the super constructor
    def jfields_Sounds : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @soundStrings = SoundStrings.getInstance()
    
    end
    

    def jinit_Sounds(soundsFactoryInterface : SoundsFactoryInterface?) : self
        jfields_Sounds()
        @soundsFactoryInterface = soundsFactoryInterface
        self
    end
    

    def init : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_INIT)
        commonLabels : CommonLabels? = CommonLabels.getInstance()
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        @soundsFactoryInterface.not_nil!.init()
        soundInterfaceArray : Array(Sound?)? = @soundsFactoryInterface.not_nil!.getSoundInterfaceArray()
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        indexInteger : JInteger? = nil
        indexString : String = ""
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        i : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                i &+= 1
            end
            jfor1 = true
            break unless i < soundInterfaceArray.not_nil!.size
            soundInterface : Sound? = soundInterfaceArray.not_nil![i]
            if !(soundInterface).nil?
                indexInteger = smallIntegerSingletonFactory.not_nil!.getAt(i)
                indexString = indexInteger.not_nil!.toString()
                stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
                stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_INDEX_LABEL)
                stringBuffer.not_nil!.append(indexString)
                stringBuffer.not_nil!.append(@soundStrings.not_nil!.jf_SOUND)
                stringBuffer.not_nil!.append(JR.jclass(soundInterface))
                @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @commonStrings.not_nil!.jf_INIT)
                soundInterface.not_nil!.init()
                progressCanvas.not_nil!.addNormalPortion(100, StringMaker.new.jinit_StringMaker().not_nil!.append(@soundStrings.not_nil!.jf_INIT_SOUND).not_nil!.append(indexString).not_nil!.toString())
            end
        end
        @soundsFactoryInterface.not_nil!.setInitialized(true)
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END, self, @commonStrings.not_nil!.jf_INIT)
    end
    

    def stopAll : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @soundStrings.not_nil!.jf_STOP_ALL)
        soundInterfaceArray : Array(Sound?)? = @soundsFactoryInterface.not_nil!.getSoundInterfaceArray()
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        player : Player? = nil
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < soundInterfaceArray.not_nil!.size
            if !(soundInterfaceArray.not_nil![index]).nil?
                player = soundInterfaceArray.not_nil![index].not_nil!.getPlayerP()
                if !(player).nil?
                    player.not_nil!.stop()
                    progressCanvas.not_nil!.addPortion(100, @soundStrings.not_nil!.jf_STOPPING_SOUND, index)
                end
            end
        end
    end
    

    def closeAll : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @soundStrings.not_nil!.jf_CLOSE_ALL)
        soundInterfaceArray : Array(Sound?)? = @soundsFactoryInterface.not_nil!.getSoundInterfaceArray()
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        player : Player? = nil
        index : Int32 = 0
        jfor3 = false
        while true
            if jfor3
                index &+= 1
            end
            jfor3 = true
            break unless index < soundInterfaceArray.not_nil!.size
            if !(soundInterfaceArray.not_nil![index]).nil?
                player = soundInterfaceArray.not_nil![index].not_nil!.getPlayerP()
                if !(player).nil?
                    player.not_nil!.close()
                    progressCanvas.not_nil!.addPortion(100, @soundStrings.not_nil!.jf_CLOSING_SOUND, index)
                end
            end
        end
    end
end


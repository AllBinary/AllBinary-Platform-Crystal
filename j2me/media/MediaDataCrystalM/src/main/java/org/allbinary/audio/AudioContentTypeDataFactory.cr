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
# package org.allbinary.audio

class AudioContentTypeDataFactory < JObject
    @j_MIME_AUDIO_TONE : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_TONE : AudioContentTypeData?
        @j_MIME_AUDIO_TONE
    end

    def jf_MIME_AUDIO_TONE=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_TONE = value
    end
    @j_MIME_AUDIO_AMR : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_AMR : AudioContentTypeData?
        @j_MIME_AUDIO_AMR
    end

    def jf_MIME_AUDIO_AMR=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_AMR = value
    end
    @j_MIME_AUDIO_AMR_WB : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_AMR_WB : AudioContentTypeData?
        @j_MIME_AUDIO_AMR_WB
    end

    def jf_MIME_AUDIO_AMR_WB=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_AMR_WB = value
    end
    @j_MIME_AUDIO_WAV : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_WAV : AudioContentTypeData?
        @j_MIME_AUDIO_WAV
    end

    def jf_MIME_AUDIO_WAV=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_WAV = value
    end
    @j_MIME_AUDIO_MIDI : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_MIDI : AudioContentTypeData?
        @j_MIME_AUDIO_MIDI
    end

    def jf_MIME_AUDIO_MIDI=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_MIDI = value
    end
    @j_MIME_AUDIO_SP_MIDI : AudioContentTypeData? = nil

    def jf_MIME_AUDIO_SP_MIDI : AudioContentTypeData?
        @j_MIME_AUDIO_SP_MIDI
    end

    def jf_MIME_AUDIO_SP_MIDI=(value : AudioContentTypeData?) : AudioContentTypeData?
        @j_MIME_AUDIO_SP_MIDI = value
    end

    @@jst_instance : AudioContentTypeDataFactory? = nil

    def self.jst_instance : AudioContentTypeDataFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AudioContentTypeDataFactory?) : AudioContentTypeDataFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AudioContentTypeDataFactory.new.jinit_AudioContentTypeDataFactory()
    end
    

    def self.getInstance : AudioContentTypeDataFactory?
        return AudioContentTypeDataFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AudioContentTypeDataFactory : Nil
    @j_MIME_AUDIO_TONE = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/x-tone-seq")
    @j_MIME_AUDIO_AMR = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/amr")
    @j_MIME_AUDIO_AMR_WB = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/amr-wb")
    @j_MIME_AUDIO_WAV = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/x-wav")
    @j_MIME_AUDIO_MIDI = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/midi")
    @j_MIME_AUDIO_SP_MIDI = AudioContentTypeData.new.jinit_AudioContentTypeData("audio/sp-midi")
    end
    

    def jinit_AudioContentTypeDataFactory : self
        jfields_AudioContentTypeDataFactory()
        self
    end
end


# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

class SoundStrings < JObject
    @j_STOP_ALL : String = ""

    def jf_STOP_ALL : String
        @j_STOP_ALL
    end

    def jf_STOP_ALL=(value : String) : String
        @j_STOP_ALL = value
    end
    @j_CLOSE_ALL : String = ""

    def jf_CLOSE_ALL : String
        @j_CLOSE_ALL
    end

    def jf_CLOSE_ALL=(value : String) : String
        @j_CLOSE_ALL = value
    end
    @j_SOUND : String = ""

    def jf_SOUND : String
        @j_SOUND
    end

    def jf_SOUND=(value : String) : String
        @j_SOUND = value
    end
    @j_INIT_SOUND : String = ""

    def jf_INIT_SOUND : String
        @j_INIT_SOUND
    end

    def jf_INIT_SOUND=(value : String) : String
        @j_INIT_SOUND = value
    end
    @j_STOPPING_SOUND : String = ""

    def jf_STOPPING_SOUND : String
        @j_STOPPING_SOUND
    end

    def jf_STOPPING_SOUND=(value : String) : String
        @j_STOPPING_SOUND = value
    end
    @j_CLOSING_SOUND : String = ""

    def jf_CLOSING_SOUND : String
        @j_CLOSING_SOUND
    end

    def jf_CLOSING_SOUND=(value : String) : String
        @j_CLOSING_SOUND = value
    end

    @@jst_instance : SoundStrings? = nil

    def self.jst_instance : SoundStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SoundStrings?) : SoundStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SoundStrings.new.jinit_SoundStrings()
    end
    

    def self.getInstance : SoundStrings?
        return SoundStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SoundStrings : Nil
    @j_STOP_ALL = "stopAll"
    @j_CLOSE_ALL = "closeAll"
    @j_SOUND = " Sound: "
    @j_INIT_SOUND = "Initializing Sound: "
    @j_STOPPING_SOUND = "Stopping Sound: "
    @j_CLOSING_SOUND = "Closing Sound: "
    end

    def jinit_SoundStrings : self
        jfields_SoundStrings()
        self
    end
end


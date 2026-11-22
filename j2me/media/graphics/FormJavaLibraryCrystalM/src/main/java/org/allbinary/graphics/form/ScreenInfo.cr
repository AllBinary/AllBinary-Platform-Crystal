# Generated Code Do Not Modify
# package org.allbinary.graphics.form

class ScreenInfo < JObject
    @j_SMALL_WIDTH : Int32 = 0

    def jf_SMALL_WIDTH : Int32
        @j_SMALL_WIDTH
    end

    def jf_SMALL_WIDTH=(value : Int32) : Int32
        @j_SMALL_WIDTH = value
    end
    @j_SMALL_HEIGHT : Int32 = 0

    def jf_SMALL_HEIGHT : Int32
        @j_SMALL_HEIGHT
    end

    def jf_SMALL_HEIGHT=(value : Int32) : Int32
        @j_SMALL_HEIGHT = value
    end
    @j_MEDIUM_WIDTH : Int32 = 0

    def jf_MEDIUM_WIDTH : Int32
        @j_MEDIUM_WIDTH
    end

    def jf_MEDIUM_WIDTH=(value : Int32) : Int32
        @j_MEDIUM_WIDTH = value
    end
    @j_MEDIUM_HEIGHT : Int32 = 0

    def jf_MEDIUM_HEIGHT : Int32
        @j_MEDIUM_HEIGHT
    end

    def jf_MEDIUM_HEIGHT=(value : Int32) : Int32
        @j_MEDIUM_HEIGHT = value
    end

    @@jst_instance : ScreenInfo? = nil

    def self.jst_instance : ScreenInfo?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ScreenInfo?) : ScreenInfo?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ScreenInfo.new.jinit_ScreenInfo()
    end
    

    def self.getInstance : ScreenInfo?
        return ScreenInfo.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ScreenInfo : Nil
    @j_SMALL_WIDTH = 320
    @j_SMALL_HEIGHT = 240
    @j_MEDIUM_WIDTH = 800
    @j_MEDIUM_HEIGHT = 600
    end

    def jinit_ScreenInfo : self
        jfields_ScreenInfo()
        self
    end
end


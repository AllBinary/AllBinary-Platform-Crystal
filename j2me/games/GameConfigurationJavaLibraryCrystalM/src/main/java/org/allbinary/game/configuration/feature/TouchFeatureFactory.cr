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
# package org.allbinary.game.configuration.feature

class TouchFeatureFactory < JObject
    @j_TOUCH_ENABLED : TouchFeature? = nil

    def jf_TOUCH_ENABLED : TouchFeature?
        @j_TOUCH_ENABLED
    end

    def jf_TOUCH_ENABLED=(value : TouchFeature?) : TouchFeature?
        @j_TOUCH_ENABLED = value
    end
    @j_SHOW_SCREEN_BUTTONS : TouchFeature? = nil

    def jf_SHOW_SCREEN_BUTTONS : TouchFeature?
        @j_SHOW_SCREEN_BUTTONS
    end

    def jf_SHOW_SCREEN_BUTTONS=(value : TouchFeature?) : TouchFeature?
        @j_SHOW_SCREEN_BUTTONS = value
    end
    @j_AUTO_HIDE_SHOW_SCREEN_BUTTONS : TouchFeature? = nil

    def jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS : TouchFeature?
        @j_AUTO_HIDE_SHOW_SCREEN_BUTTONS
    end

    def jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS=(value : TouchFeature?) : TouchFeature?
        @j_AUTO_HIDE_SHOW_SCREEN_BUTTONS = value
    end
    @j_HIDE_SCREEN_BUTTONS : TouchFeature? = nil

    def jf_HIDE_SCREEN_BUTTONS : TouchFeature?
        @j_HIDE_SCREEN_BUTTONS
    end

    def jf_HIDE_SCREEN_BUTTONS=(value : TouchFeature?) : TouchFeature?
        @j_HIDE_SCREEN_BUTTONS = value
    end

    @@jst_instance : TouchFeatureFactory? = nil

    def self.jst_instance : TouchFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TouchFeatureFactory?) : TouchFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TouchFeatureFactory.new.jinit_TouchFeatureFactory()
    end
    

    def self.getInstance : TouchFeatureFactory?
        return TouchFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TouchFeatureFactory : Nil
    @j_TOUCH_ENABLED = TouchFeature.new.jinit_TouchFeature("Touch Enabled")
    @j_SHOW_SCREEN_BUTTONS = TouchFeature.new.jinit_TouchFeature("Show")
    @j_AUTO_HIDE_SHOW_SCREEN_BUTTONS = TouchFeature.new.jinit_TouchFeature("Auto Hide (One Level)")
    @j_HIDE_SCREEN_BUTTONS = TouchFeature.new.jinit_TouchFeature("Hide")
    end
    

    def jinit_TouchFeatureFactory : self
        jfields_TouchFeatureFactory()
        self
    end
end


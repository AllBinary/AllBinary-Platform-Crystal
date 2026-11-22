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
# package org.allbinary.input.motion.button

class TouchScreenTypesFactory < JObject
    @j_FINGER : TouchScreenType? = nil

    def jf_FINGER : TouchScreenType?
        @j_FINGER
    end

    def jf_FINGER=(value : TouchScreenType?) : TouchScreenType?
        @j_FINGER = value
    end
    @j_NOTOUCH : TouchScreenType? = nil

    def jf_NOTOUCH : TouchScreenType?
        @j_NOTOUCH
    end

    def jf_NOTOUCH=(value : TouchScreenType?) : TouchScreenType?
        @j_NOTOUCH = value
    end
    @j_STYLUS : TouchScreenType? = nil

    def jf_STYLUS : TouchScreenType?
        @j_STYLUS
    end

    def jf_STYLUS=(value : TouchScreenType?) : TouchScreenType?
        @j_STYLUS = value
    end
    @j_UNDEFINED : TouchScreenType? = nil

    def jf_UNDEFINED : TouchScreenType?
        @j_UNDEFINED
    end

    def jf_UNDEFINED=(value : TouchScreenType?) : TouchScreenType?
        @j_UNDEFINED = value
    end

    @@jst_instance : TouchScreenTypesFactory? = nil

    def self.jst_instance : TouchScreenTypesFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : TouchScreenTypesFactory?) : TouchScreenTypesFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = TouchScreenTypesFactory.new.jinit_TouchScreenTypesFactory()
    end
    

    def self.getInstance : TouchScreenTypesFactory?
        return TouchScreenTypesFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_TouchScreenTypesFactory : Nil
    @j_FINGER = TouchScreenType.new.jinit_TouchScreenType("Finger")
    @j_NOTOUCH = TouchScreenType.new.jinit_TouchScreenType("No Touch")
    @j_STYLUS = TouchScreenType.new.jinit_TouchScreenType("Stylus")
    @j_UNDEFINED = TouchScreenType.new.jinit_TouchScreenType("Undefined")
    end

    def jinit_TouchScreenTypesFactory : self
        jfields_TouchScreenTypesFactory()
        self
    end
end


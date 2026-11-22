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
# package org.allbinary.input.motion.button

class TouchScreenFactory < JObject
    @multiTouch : Bool = false

    def jf_multiTouch : Bool
        @multiTouch
    end

    def jf_multiTouch=(value : Bool) : Bool
        @multiTouch = value
    end
    @touch : Bool = false

    def jf_touch : Bool
        @touch
    end

    def jf_touch=(value : Bool) : Bool
        @touch = value
    end
    @touchScreenType : TouchScreenType? = nil

    def jf_touchScreenType : TouchScreenType?
        @touchScreenType
    end

    def jf_touchScreenType=(value : TouchScreenType?) : TouchScreenType?
        @touchScreenType = value
    end

    @@jst_SINGLETON : TouchScreenFactory? = nil

    def self.jst_SINGLETON : TouchScreenFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : TouchScreenFactory?) : TouchScreenFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = TouchScreenFactory.new.jinit_TouchScreenFactory()
    end
    

    def self.getInstance : TouchScreenFactory?
        return TouchScreenFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_TouchScreenFactory : Nil
    
    
    @touchScreenType = TouchScreenTypesFactory.getInstance().not_nil!.jf_NOTOUCH
    end
    

    def jinit_TouchScreenFactory : self
        jfields_TouchScreenFactory()
        self
    end
    

    def isMultiTouch : Bool
        return @multiTouch
    end
    

    def setTouch(touch : Bool) : Nil
    end
    

    def isTouch : Bool
        return @touch
    end
    

    def getTouchScreenType : TouchScreenType?
        return @touchScreenType
    end
end


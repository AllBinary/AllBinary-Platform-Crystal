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
# package org.allbinary.animation.transition.shake

class ShakeEventFactory < JObject
    @j_MICRO : ShakeEvent? = nil

    def jf_MICRO : ShakeEvent?
        @j_MICRO
    end

    def jf_MICRO=(value : ShakeEvent?) : ShakeEvent?
        @j_MICRO = value
    end
    @j_SMALL : ShakeEvent? = nil

    def jf_SMALL : ShakeEvent?
        @j_SMALL
    end

    def jf_SMALL=(value : ShakeEvent?) : ShakeEvent?
        @j_SMALL = value
    end
    @j_MEDIUM : ShakeEvent? = nil

    def jf_MEDIUM : ShakeEvent?
        @j_MEDIUM
    end

    def jf_MEDIUM=(value : ShakeEvent?) : ShakeEvent?
        @j_MEDIUM = value
    end
    @j_LARGE : ShakeEvent? = nil

    def jf_LARGE : ShakeEvent?
        @j_LARGE
    end

    def jf_LARGE=(value : ShakeEvent?) : ShakeEvent?
        @j_LARGE = value
    end

    @@jst_instance : ShakeEventFactory? = nil

    def self.jst_instance : ShakeEventFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ShakeEventFactory?) : ShakeEventFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ShakeEventFactory.new.jinit_ShakeEventFactory()
    end
    

    def self.getInstance : ShakeEventFactory?
        return ShakeEventFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ShakeEventFactory : Nil
    @j_MICRO = ShakeEvent.new.jinit_ShakeEvent()
    @j_SMALL = ShakeEvent.new.jinit_ShakeEvent()
    @j_MEDIUM = ShakeEvent.new.jinit_ShakeEvent()
    @j_LARGE = ShakeEvent.new.jinit_ShakeEvent()
    end

    def jinit_ShakeEventFactory : self
        jfields_ShakeEventFactory()
        self
    end
    

    def init : Nil
    end
end


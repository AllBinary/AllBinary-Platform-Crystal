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
# package org.allbinary.game.tick

class NullTickable < JObject
    include TickableInterface
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end

    @@jst_SINGLETON : NullTickable? = nil

    def self.jst_SINGLETON : NullTickable?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : NullTickable?) : NullTickable?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullTickable.new.jinit_NullTickable()
    end
    

    def self.getInstance : NullTickable?
        return NullTickable.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_NullTickable : Nil
    @j_NAME = "NulLTickable"
    end

    def jinit_NullTickable : self
        jfields_NullTickable()
        self
    end
    

    def processTick(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
    end
    

    def getName : String
        return @j_NAME
    end
end


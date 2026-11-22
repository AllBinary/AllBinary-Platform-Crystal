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
# package org.allbinary.game.graphics.hud

class BasicHudFactory < JObject
    @j_DIRECTION_EXCEPTION : String = ""

    def jf_DIRECTION_EXCEPTION : String
        @j_DIRECTION_EXCEPTION
    end

    def jf_DIRECTION_EXCEPTION=(value : String) : String
        @j_DIRECTION_EXCEPTION = value
    end
    @j_VERTICAL : Int32 = 0

    def jf_VERTICAL : Int32
        @j_VERTICAL
    end

    def jf_VERTICAL=(value : Int32) : Int32
        @j_VERTICAL = value
    end
    @j_HORIZONTAL : Int32 = 0

    def jf_HORIZONTAL : Int32
        @j_HORIZONTAL
    end

    def jf_HORIZONTAL=(value : Int32) : Int32
        @j_HORIZONTAL = value
    end
    @j_BOTTOMLEFT : Int32 = 0

    def jf_BOTTOMLEFT : Int32
        @j_BOTTOMLEFT
    end

    def jf_BOTTOMLEFT=(value : Int32) : Int32
        @j_BOTTOMLEFT = value
    end
    @j_BOTTOMRIGHT : Int32 = 0

    def jf_BOTTOMRIGHT : Int32
        @j_BOTTOMRIGHT
    end

    def jf_BOTTOMRIGHT=(value : Int32) : Int32
        @j_BOTTOMRIGHT = value
    end
    @j_TOPLEFT : Int32 = 0

    def jf_TOPLEFT : Int32
        @j_TOPLEFT
    end

    def jf_TOPLEFT=(value : Int32) : Int32
        @j_TOPLEFT = value
    end
    @j_TOPRIGHT : Int32 = 0

    def jf_TOPRIGHT : Int32
        @j_TOPRIGHT
    end

    def jf_TOPRIGHT=(value : Int32) : Int32
        @j_TOPRIGHT = value
    end
    @j_BOTTOMCENTER : Int32 = 0

    def jf_BOTTOMCENTER : Int32
        @j_BOTTOMCENTER
    end

    def jf_BOTTOMCENTER=(value : Int32) : Int32
        @j_BOTTOMCENTER = value
    end
    @j_TOPCENTER : Int32 = 0

    def jf_TOPCENTER : Int32
        @j_TOPCENTER
    end

    def jf_TOPCENTER=(value : Int32) : Int32
        @j_TOPCENTER = value
    end
    @j_ABSOLUTE : Int32 = 0

    def jf_ABSOLUTE : Int32
        @j_ABSOLUTE
    end

    def jf_ABSOLUTE=(value : Int32) : Int32
        @j_ABSOLUTE = value
    end

    @@jst_instance : BasicHudFactory? = nil

    def self.jst_instance : BasicHudFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : BasicHudFactory?) : BasicHudFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = BasicHudFactory.new.jinit_BasicHudFactory()
    end
    

    def self.getInstance : BasicHudFactory?
        return BasicHudFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_BasicHudFactory : Nil
    @j_DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
    @j_VERTICAL = 0
    @j_HORIZONTAL = 1
    @j_BOTTOMLEFT = 0
    @j_BOTTOMRIGHT = 1
    @j_TOPLEFT = 2
    @j_TOPRIGHT = 3
    @j_BOTTOMCENTER = 4
    @j_TOPCENTER = 5
    @j_ABSOLUTE = 6
    end
    

    def jinit_BasicHudFactory : self
        jfields_BasicHudFactory()
        self
    end
end


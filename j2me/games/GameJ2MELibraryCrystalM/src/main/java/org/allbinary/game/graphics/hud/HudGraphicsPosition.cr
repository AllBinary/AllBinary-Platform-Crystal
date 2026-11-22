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

class HudGraphicsPosition < JObject
    @anchor : Int32 = 0

    def jf_anchor : Int32
        @anchor
    end

    def jf_anchor=(value : Int32) : Int32
        @anchor = value
    end
    @point : GPoint? = nil

    def jf_point : GPoint?
        @point
    end

    def jf_point=(value : GPoint?) : GPoint?
        @point = value
    end

    @@jst_NULL_HUD_GRAPHICS_POSITION : HudGraphicsPosition? = nil

    def self.jst_NULL_HUD_GRAPHICS_POSITION : HudGraphicsPosition?
        jclinit
        @@jst_NULL_HUD_GRAPHICS_POSITION
    end

    def self.jst_NULL_HUD_GRAPHICS_POSITION=(value : HudGraphicsPosition?) : HudGraphicsPosition?
        jclinit
        @@jst_NULL_HUD_GRAPHICS_POSITION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_HUD_GRAPHICS_POSITION = HudGraphicsPosition.new.jinit_HudGraphicsPosition(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, 9)
    end

    # Java field initializers run after the super constructor
    def jfields_HudGraphicsPosition : Nil
    
    @point = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
    end
    

    def jinit_HudGraphicsPosition(point : GPoint?, anchor : Int) : self
        anchor = anchor.to_i32!
        jfields_HudGraphicsPosition()
        self.setAnchor(anchor)
        self.setPoint(point)
        self
    end
    

    def getAnchor : Int32
        return @anchor
    end
    

    def setAnchor(anchor : Int) : Nil
        anchor = anchor.to_i32!
        @anchor = anchor
    end
    

    def getPoint : GPoint?
        return @point
    end
    

    def setPoint(point : GPoint?) : Nil
        @point = point
    end
end


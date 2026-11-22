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
# package org.allbinary.graphics

class Line < JObject
    @p1 : GPoint? = nil

    def jf_p1 : GPoint?
        @p1
    end

    def jf_p1=(value : GPoint?) : GPoint?
        @p1 = value
    end
    @p2 : GPoint? = nil

    def jf_p2 : GPoint?
        @p2
    end

    def jf_p2=(value : GPoint?) : GPoint?
        @p2 = value
    end
    @deltaX : Float64 = 0.0

    def jf_deltaX : Float64
        @deltaX
    end

    def jf_deltaX=(value : Float64) : Float64
        @deltaX = value
    end
    @deltaY : Float64 = 0.0

    def jf_deltaY : Float64
        @deltaY
    end

    def jf_deltaY=(value : Float64) : Float64
        @deltaY = value
    end
    

    def jinit_Line(p1 : GPoint?, p2 : GPoint?) : self
        @p1 = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
        @p2 = @p1
        self.setP1(p1)
        self.setP2(p2)
        self
    end
    

    def getGradient : Float64
        return self.getDeltaY() / self.getDeltaX()
    end
    

    def update : Nil
        @deltaX = (self.getP1().not_nil!.getX()).to_f64 - (self.getP2().not_nil!.getX()).to_f64
        @deltaY = (self.getP1().not_nil!.getY()).to_f64 - (self.getP2().not_nil!.getY()).to_f64
    end
    

    def getDeltaX : Float64
        return @deltaX
    end
    

    def getDeltaY : Float64
        return @deltaY
    end
    

    def getP1 : GPoint?
        return @p1
    end
    

    def getP2 : GPoint?
        return @p2
    end
    

    def setP1(p1 : GPoint?) : Nil
        @p1 = p1
        self.update()
    end
    

    def setP2(p2 : GPoint?) : Nil
        @p2 = p2
        self.update()
    end
end


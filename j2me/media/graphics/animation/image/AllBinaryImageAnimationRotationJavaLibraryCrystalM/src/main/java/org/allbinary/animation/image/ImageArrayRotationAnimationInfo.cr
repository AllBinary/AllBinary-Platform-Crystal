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
# package org.allbinary.animation.image

class ImageArrayRotationAnimationInfo < JObject
    @imageArray : Array(Image?)? = nil

    def jf_imageArray : Array(Image?)?
        @imageArray
    end

    def jf_imageArray=(value : Array(Image?)?) : Array(Image?)?
        @imageArray = value
    end
    @angleIncrement : Int32 = 0

    def jf_angleIncrement : Int32
        @angleIncrement
    end

    def jf_angleIncrement=(value : Int32) : Int32
        @angleIncrement = value
    end
    @totalAngle : Int32 = 0

    def jf_totalAngle : Int32
        @totalAngle
    end

    def jf_totalAngle=(value : Int32) : Int32
        @totalAngle = value
    end
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end
    

    def jinit_ImageArrayRotationAnimationInfo(imageArray : Array(Image?)?, angleIncrement : Int, totalAngle : Int, dx : Int, dy : Int) : self
        angleIncrement = angleIncrement.to_i32!
        totalAngle = totalAngle.to_i32!
        dx = dx.to_i32!
        dy = dy.to_i32!
        @imageArray = imageArray
        @angleIncrement = angleIncrement
        @totalAngle = totalAngle
        @dx = dx
        @dy = dy
        self
    end
    

    def setImageArray(imageArray : Array(Image?)?) : Nil
        @imageArray = imageArray
    end
    

    def getImageArray : Array(Image?)?
        return @imageArray
    end
    

    def getAngleInfoP : AngleInfo?
        return AngleInfo.getInstance((@angleIncrement).to_i16!)
    end
    

    def setTotalAngle(totalAngle : Int) : Nil
        totalAngle = totalAngle.to_i32!
        @totalAngle = totalAngle
    end
    

    def getTotalAngle : Int32
        return @totalAngle
    end
    

    def setDx(dx : Int) : Nil
        dx = dx.to_i32!
        @dx = dx
    end
    

    def getDx : Int32
        return @dx
    end
    

    def setDy(dy : Int) : Nil
        dy = dy.to_i32!
        @dy = dy
    end
    

    def getDy : Int32
        return @dy
    end
end


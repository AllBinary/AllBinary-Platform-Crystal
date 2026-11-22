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
# package org.allbinary.animation

class Animation < JObject
    include AnimationInterface
    include OpenGLSurfaceChangedInterface
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @colorP : Int32 = 0

    def jf_colorP : Int32
        @colorP
    end

    def jf_colorP=(value : Int32) : Int32
        @colorP = value
    end
    @changeBasicColorP : BasicColor? = nil

    def jf_changeBasicColorP : BasicColor?
        @changeBasicColorP
    end

    def jf_changeBasicColorP=(value : BasicColor?) : BasicColor?
        @changeBasicColorP = value
    end
    @changeColorP : Int32 = 0

    def jf_changeColorP : Int32
        @changeColorP
    end

    def jf_changeColorP=(value : Int32) : Int32
        @changeColorP = value
    end
    @alphaP : Int32 = 0

    def jf_alphaP : Int32
        @alphaP
    end

    def jf_alphaP=(value : Int32) : Int32
        @alphaP = value
    end

    # Java field initializers run after the super constructor
    def jfields_Animation : Nil
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_WHITE
    
    @changeBasicColorP = BasicColorFactory.getInstance().not_nil!.jf_NULL_COLOR
    
    
    end
    

    def jinit_Animation : self
        jfields_Animation()
        self
    end
    

    def setAlpha(alpha : Int) : Nil
        alpha = alpha.to_i32!
        @alphaP = alpha
    end
    

    def nextFrame : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @basicSetColorUtil.not_nil!.setBasicColorP3(graphics, self.getBasicColorP(), self.getColor())
    end
    

    def paintThreedXYZ(graphics : Graphics?, x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
    end
    

    def isThreed : Bool
        return false
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
        @colorP = @basicColor.not_nil!.intValue()
    end
    

    def setBackgroundBasicColorP(basicColor : BasicColor?) : Nil
    end
    

    def getChangeBasicColor : BasicColor?
        return @changeBasicColorP
    end
    

    def changeBasicColor(basicColor : BasicColor?) : Nil
        @changeBasicColorP = basicColor
        @changeColorP = @changeBasicColorP.not_nil!.intValue()
    end
    

    def getChangeColor : Int32
        return @changeColorP
    end
    

    def getColor : Int32
        return @colorP
    end
    

    def setScale(scaleX : Number, scaleY : Number) : Nil
        scaleX = scaleX.to_f32
        scaleY = scaleY.to_f32
    end
    

    def setMaxScale(maxScaleX : Number, maxScaleY : Number) : Nil
        maxScaleX = maxScaleX.to_f32
        maxScaleY = maxScaleY.to_f32
    end
    

    def set(gl : GL?) : Nil
    end
    

    def setDx(dx : Int) : Nil
        dx = dx.to_i32!
    end
    

    def getDx : Int32
        return 0
    end
    

    def setDy(dy : Int) : Nil
        dy = dy.to_i32!
    end
    

    def getDy : Int32
        return 0
    end
end


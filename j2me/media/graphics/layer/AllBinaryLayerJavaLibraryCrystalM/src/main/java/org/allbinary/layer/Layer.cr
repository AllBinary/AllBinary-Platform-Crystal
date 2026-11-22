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
# package org.allbinary.layer

class ABLayer < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @z : Int32 = 0

    def jf_z : Int32
        @z
    end

    def jf_z=(value : Int32) : Int32
        @z = value
    end
    @width : Int32 = 0

    def jf_width : Int32
        @width
    end

    def jf_width=(value : Int32) : Int32
        @width = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end
    @visible : Bool = false

    def jf_visible : Bool
        @visible
    end

    def jf_visible=(value : Bool) : Bool
        @visible = value
    end

    @@jst_ID : JInteger? = nil

    def self.jst_ID : JInteger?
        jclinit
        @@jst_ID
    end

    def self.jst_ID=(value : JInteger?) : JInteger?
        jclinit
        @@jst_ID = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_ID = SmallIntegerSingletonFactory.getInstance().not_nil!.getAt(0)
    end

    # Java field initializers run after the super constructor
    def jfields_ABLayer : Nil
    @logUtil = LogUtil.getInstance()
    
    
    @z = 3
    
    
    @visible = true
    end
    

    def jinit_ABLayer(width : Int, height : Int) : self
        width = width.to_i32!
        height = height.to_i32!
        jfields_ABLayer()
        self.setLayerWidth(width)
        self.setLayerHeight(height)
        self
    end
    

    def setPosition(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        @x = x
        @y = y
        @z = z
    end
    

    def moveDXY(dx : Int, dy : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        @x &+= dx
        @y &+= dy
    end
    

    def moveDXYZ(dx : Int, dy : Int, dz : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        dz = dz.to_i32!
        @x &+= dx
        @y &+= dy
        @z &+= dz
    end
    

    def getXP : Int32
        return @x
    end
    

    def getYP : Int32
        return @y
    end
    

    def getZP : Int32
        return @z
    end
    

    def getWidth : Int32
        return @width
    end
    

    def getHeight : Int32
        return @height
    end
    

    def getDepth : Int64
        return 0_i64
    end
    

    def setVisible(visible : Bool) : Nil
        @visible = visible
    end
    

    def isVisible : Bool
        return @visible
    end
    

    def paint(graphics : Graphics?) : Nil
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        canvasStrings : CanvasStrings? = CanvasStrings.getInstance()
        @logUtil.not_nil!.putF(commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self, canvasStrings.not_nil!.jf_PAINT)
    end
    

    def setLayerWidth(width : Int) : Nil
        width = width.to_i32!
        if width < 0
            raise (JIllegalArgumentException.new.jinit_JIllegalArgumentException()).not_nil!
        end
        @width = width
    end
    

    def setLayerHeight(height : Int) : Nil
        height = height.to_i32!
        if height < 0
            raise (JIllegalArgumentException.new.jinit_JIllegalArgumentException()).not_nil!
        end
        @height = height
    end
    

    def toStringAppend(stringBuffer : StringMaker?) : Nil
    end
end


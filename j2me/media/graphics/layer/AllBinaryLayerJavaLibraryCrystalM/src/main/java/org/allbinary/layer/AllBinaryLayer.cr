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

class AllBinaryLayer < ABLayer
    include LayerInterface
    @viewPositionEvent : ViewPositionEvent? = nil

    def jf_viewPositionEvent : ViewPositionEvent?
        @viewPositionEvent
    end

    def jf_viewPositionEvent=(value : ViewPositionEvent?) : ViewPositionEvent?
        @viewPositionEvent = value
    end
    @halfWidth : Int32 = 0

    def jf_halfWidth : Int32
        @halfWidth
    end

    def jf_halfWidth=(value : Int32) : Int32
        @halfWidth = value
    end
    @halfHeight : Int32 = 0

    def jf_halfHeight : Int32
        @halfHeight
    end

    def jf_halfHeight=(value : Int32) : Int32
        @halfHeight = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @viewPosition : ViewPositionBase? = nil

    def jf_viewPosition : ViewPositionBase?
        @viewPosition
    end

    def jf_viewPosition=(value : ViewPositionBase?) : ViewPositionBase?
        @viewPosition = value
    end

    @@jst_NULL_ALLBINARY_LAYER : AllBinaryLayer? = nil

    def self.jst_NULL_ALLBINARY_LAYER : AllBinaryLayer?
        jclinit
        @@jst_NULL_ALLBINARY_LAYER
    end

    def self.jst_NULL_ALLBINARY_LAYER=(value : AllBinaryLayer?) : AllBinaryLayer?
        jclinit
        @@jst_NULL_ALLBINARY_LAYER = value
    end

    def self.jst_TYPE : String
        "Type: "
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_LAYER = AllBinaryLayer.new.jinit_AllBinaryLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, RectangleFactory.jst_SINGLETON, ViewPositionBase.jst_NULL_VIEW_POSITION)
        
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryLayer : Nil
    @viewPositionEvent = ViewPositionEvent.new.jinit_ViewPositionEvent(self)
    
    
    
    @viewPosition = ViewPositionBase.jst_NULL_VIEW_POSITION
    end
    

    def jinit_AllBinaryLayer(name : String, rectangle : Rectangle?, viewPosition : ViewPositionBase?) : self
        jinit_ABLayer(rectangle.not_nil!.getWidth(), rectangle.not_nil!.getHeight())
        jfields_AllBinaryLayer()
        localName : String = ""
        localName = StringMaker.new.jinit_StringMaker().not_nil!.append(name).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COLON).not_nil!.append(JInteger.toHexString(TsUtil.getInstance().not_nil!.hashCode(self))).not_nil!.toString()
        @name = localName
        point : GPoint? = rectangle.not_nil!.getPoint()
        self.setPosition(point.not_nil!.getX(), point.not_nil!.getY(), point.not_nil!.getZ())
        self.setHalfWidth((JR.shr(self.getWidth(), 1)))
        self.setHalfHeight((JR.shr(self.getHeight(), 1)))
        @viewPosition = viewPosition
        @viewPosition.not_nil!.setAllbinaryLayer(self)
        self
    end
    

    def setPosition(x : Int, y : Int, z : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        super(x, y, z)
    end
    

    def moveDXYZ(dx : Int, dy : Int, dz : Int) : Nil
        dx = dx.to_i32!
        dy = dy.to_i32!
        dz = dz.to_i32!
        super(dx, dy, dz)
    end
    

    def getXP : Int32
        return super()
    end
    

    def getYP : Int32
        return super()
    end
    

    def getZP : Int32
        return super()
    end
    

    def getWidth : Int32
        return super()
    end
    

    def getHeight : Int32
        return super()
    end
    

    def setVisible(visible : Bool) : Nil
        super(visible)
    end
    

    def isVisible : Bool
        return super()
    end
    

    def paint(graphics : Graphics?) : Nil
        super(graphics)
    end
    

    def onChangeEvent(layerManagerEvent : ViewPositionEvent?) : Nil
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def getX2 : Int32
        return self.getXP() &+ self.getWidth()
    end
    

    def getY2 : Int32
        return self.getYP() &+ self.getHeight()
    end
    

    def getZ2 : Int32
        return (((self.getZP()).to_i64! &+ self.getDepth())).to_i32!
    end
    

    def getName : String
        return @name
    end
    

    def setHalfWidth(halfWidth : Int) : Nil
        halfWidth = halfWidth.to_i32!
        @halfWidth = halfWidth
    end
    

    def getHalfWidth : Int32
        return @halfWidth
    end
    

    def setHalfHeight(halfHeight : Int) : Nil
        halfHeight = halfHeight.to_i32!
        @halfHeight = halfHeight
    end
    

    def getHalfHeight : Int32
        return @halfHeight
    end
    

    def getHalfDepth : Int32
        return (self.getDepth()).to_i32!.tdiv(2)
    end
    

    def getViewPosition : ViewPositionBase?
        return @viewPosition
    end
    

    def setViewPosition(viewPosition : ViewPositionBase?) : Nil
        @viewPosition = viewPosition
    end
    

    def getGroupInterface : Array(Group?)?
        return BasicGroupFactory.getInstance().not_nil!.jf_NONE_ARRAY
    end
    

    def implmentsTickableInterface : Bool
        return false
    end
    

    def implmentsGameInputInterface : Bool
        return false
    end
    

    def implmentsArtificialIntelligenceCompositeInterface : Bool
        return false
    end
    

    def implmentsCollidableInterface : Bool
        return false
    end
    

    def implementsThreedInterface : Bool
        return OpenGLFeatureUtil.getInstance().not_nil!.isAnyThreed()
    end
    

    def getType : Int32
        return -1
    end
    

    def getMultiPlayerType : Int32
        return -1
    end
    

    def toStringAppend(stringBuffer : StringMaker?) : Nil
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        positionStrings : PositionStrings? = PositionStrings.getInstance()
        commonLabels : CommonLabels? = CommonLabels.getInstance()
        stringBuffer.not_nil!.append(self.getName())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COLON)
        stringBuffer.not_nil!.append(AllBinaryLayer.jst_TYPE)
        stringBuffer.not_nil!.appendint(self.getType())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_X_LABEL)
        stringBuffer.not_nil!.appendint(self.getXP())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Y_LABEL)
        stringBuffer.not_nil!.appendint(self.getYP())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(positionStrings.not_nil!.jf_Z_LABEL)
        stringBuffer.not_nil!.appendint(self.getZP())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(self.getWidth())
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(self.getHeight())
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.not_nil!.toString()
    end
end


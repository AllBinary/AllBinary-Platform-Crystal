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

class BasicHud < JObject
    include UpdateMyFontInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @canvasStrings : CanvasStrings? = nil

    def jf_canvasStrings : CanvasStrings?
        @canvasStrings
    end

    def jf_canvasStrings=(value : CanvasStrings?) : CanvasStrings?
        @canvasStrings = value
    end
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @displayInfo : DisplayInfoSingleton? = nil

    def jf_displayInfo : DisplayInfoSingleton?
        @displayInfo
    end

    def jf_displayInfo=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfo = value
    end
    @updateMyFontProcessor : MyFontProcessor? = nil

    def jf_updateMyFontProcessor : MyFontProcessor?
        @updateMyFontProcessor
    end

    def jf_updateMyFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @updateMyFontProcessor = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @location : Int32 = 0

    def jf_location : Int32
        @location
    end

    def jf_location=(value : Int32) : Int32
        @location = value
    end
    @direction : Int32 = 0

    def jf_direction : Int32
        @direction
    end

    def jf_direction=(value : Int32) : Int32
        @direction = value
    end
    @bufferZone : Int32 = 0

    def jf_bufferZone : Int32
        @bufferZone
    end

    def jf_bufferZone=(value : Int32) : Int32
        @bufferZone = value
    end
    @bufferZoneY : Int32 = 0

    def jf_bufferZoneY : Int32
        @bufferZoneY
    end

    def jf_bufferZoneY=(value : Int32) : Int32
        @bufferZoneY = value
    end
    @hudGraphicsPosition : HudGraphicsPosition? = nil

    def jf_hudGraphicsPosition : HudGraphicsPosition?
        @hudGraphicsPosition
    end

    def jf_hudGraphicsPosition=(value : HudGraphicsPosition?) : HudGraphicsPosition?
        @hudGraphicsPosition = value
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
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @color : Int32 = 0

    def jf_color : Int32
        @color
    end

    def jf_color=(value : Int32) : Int32
        @color = value
    end
    @updateMaxWidth : Int32 = 0

    def jf_updateMaxWidth : Int32
        @updateMaxWidth
    end

    def jf_updateMaxWidth=(value : Int32) : Int32
        @updateMaxWidth = value
    end
    @updateMaxHeight : Int32 = 0

    def jf_updateMaxHeight : Int32
        @updateMaxHeight
    end

    def jf_updateMaxHeight=(value : Int32) : Int32
        @updateMaxHeight = value
    end
    @offsetY : Int32 = 0

    def jf_offsetY : Int32
        @offsetY
    end

    def jf_offsetY=(value : Int32) : Int32
        @offsetY = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicHud : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @canvasStrings = CanvasStrings.getInstance()
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @displayInfo = DisplayInfoSingleton.getInstance()
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    
    
    
    
    @hudGraphicsPosition = HudGraphicsPosition.jst_NULL_HUD_GRAPHICS_POSITION
    
    
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_BLACK
    
    
    
    
    end
    

    def jinit_BasicHud(location : Int, direction : Int, bufferZone : Int, basicColor : BasicColor?) : self
        location = location.to_i32!
        direction = direction.to_i32!
        bufferZone = bufferZone.to_i32!
        jfields_BasicHud()
        self.setLocation(location)
        self.setDirection(direction)
        self.setBufferZone(bufferZone)
        self.onDisplayChangeEvent(DisplayInfoSingleton.getInstance().not_nil!.jf_displayChangeEvent)
        self.setBasicColorP(basicColor)
        @color = basicColor.not_nil!.intValue()
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        begin
            @hudGraphicsPosition = self.getHudGraphicsPositionWH(@displayInfo.not_nil!.getLastWidth(), @displayInfo.not_nil!.getLastHeight(), @updateMaxWidth, @updateMaxHeight)
            @x = @hudGraphicsPosition.not_nil!.getPoint().not_nil!.getX()
            self.setY(@hudGraphicsPosition.not_nil!.getPoint().not_nil!.getY())
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, @canvasStrings.not_nil!.jf_ON_DISPLAY_CHANGE_EVENT, e)
            else
                raise jex1
            end
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def getLocation : Int32
        return @location
    end
    

    def getDirection : Int32
        return @direction
    end
    

    def getHudGraphicsPositionWH(width : Int, height : Int, maxWidth : Int, maxHeight : Int) : HudGraphicsPosition?
        width = width.to_i32!
        height = height.to_i32!
        maxWidth = maxWidth.to_i32!
        maxHeight = maxHeight.to_i32!
        x : Int32 = 0
        y : Int32 = 0
        anchor : Int32 = 0
        basicHudFactory : BasicHudFactory? = BasicHudFactory.getInstance()
        if basicHudFactory.not_nil!.jf_BOTTOMLEFT == self.getLocation()
            x = @bufferZone &+ 2
            y = height &- maxHeight &- @bufferZone
            anchor = Graphics.jst_BOTTOM & Graphics.jst_LEFT
        elsif basicHudFactory.not_nil!.jf_BOTTOMRIGHT == self.getLocation()
            x = width &- maxWidth
            y = height &- maxHeight &- @bufferZone
            anchor = Graphics.jst_BOTTOM & Graphics.jst_RIGHT
        elsif basicHudFactory.not_nil!.jf_TOPLEFT == self.getLocation()
            x = @bufferZone &+ 2
            y = @bufferZoneY
            anchor = Anchor.jst_TOP_LEFT
        elsif basicHudFactory.not_nil!.jf_TOPRIGHT == self.getLocation()
            x = width &- maxWidth
            y = @bufferZoneY
            anchor = Graphics.jst_TOP & Graphics.jst_RIGHT
        elsif basicHudFactory.not_nil!.jf_TOPCENTER == self.getLocation()
            x = ((width &- maxWidth).tdiv(2))
            y = @bufferZoneY
            anchor = Graphics.jst_TOP & Graphics.jst_HCENTER
        elsif basicHudFactory.not_nil!.jf_BOTTOMCENTER == self.getLocation()
            x = ((width &- maxWidth).tdiv(2))
            y = height &- maxHeight &- @bufferZone
            anchor = Graphics.jst_BOTTOM & Graphics.jst_HCENTER
        elsif basicHudFactory.not_nil!.jf_ABSOLUTE == self.getLocation()
            x = maxHeight
            y = maxWidth
            anchor = 0
        end
        return HudGraphicsPosition.new.jinit_HudGraphicsPosition(self.getPoint(x, y), anchor)
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onDisplayChangeEvent(displayChangeEvent : DisplayChangeEvent?) : Nil
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def getPoint(x : Int, y : Int) : GPoint?
        x = x.to_i32!
        y = y.to_i32!
        return PointFactory.getInstance().not_nil!.createXY(x, y)
    end
    

    def getBufferZone : Int32
        return @bufferZone
    end
    

    def setBufferZone(bufferZone : Int) : Nil
        bufferZone = bufferZone.to_i32!
        @bufferZone = bufferZone
        if J2MEUtil.isHTML()
            @bufferZoneY = @bufferZone
        else
            @bufferZoneY = @bufferZone &+ 5
        end
    end
    

    def setLocation(location : Int) : Nil
        location = location.to_i32!
        @location = location
    end
    

    def setDirection(direction : Int) : Nil
        direction = direction.to_i32!
        @direction = direction
    end
    

    def getHudGraphicsPosition : HudGraphicsPosition?
        return @hudGraphicsPosition
    end
    

    def getColor : Int32
        return @color
    end
    

    def getX : Int32
        return @x
    end
    

    def setX(x : Int) : Nil
        x = x.to_i32!
        @x = x
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def setY(y : Int) : Nil
        y = y.to_i32!
        @y = y
    end
    

    def getY : Int32
        return @y
    end
    

    def paintSSO(graphics : Graphics?, string : String, string2 : String, offset : Int) : Nil
        offset = offset.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        graphics.not_nil!.drawString(string, @x, self.getY(), @hudGraphicsPosition.not_nil!.getAnchor())
        graphics.not_nil!.drawString(string2, @x &+ offset, self.getY(), @hudGraphicsPosition.not_nil!.getAnchor())
    end
    

    def paintSSOO(graphics : Graphics?, string : String, string2 : String, offset : Int, offset2 : Int) : Nil
        offset = offset.to_i32!
        offset2 = offset2.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        graphics.not_nil!.setColor(self.getColor())
        graphics.not_nil!.drawString(string, @x &+ offset, self.getY(), @hudGraphicsPosition.not_nil!.getAnchor())
        graphics.not_nil!.drawString(string2, @x &+ offset2, self.getY(), @hudGraphicsPosition.not_nil!.getAnchor())
    end
    

    def paintDXY(graphics : Graphics?, charArray : Array(UInt16)?, offset : Int, len : Int, charArray2 : Array(UInt16)?, offset2 : Int, len2 : Int, xOffset : Int, xOffset2 : Int) : Nil
        offset = offset.to_i32!
        len = len.to_i32!
        offset2 = offset2.to_i32!
        len2 = len2.to_i32!
        xOffset = xOffset.to_i32!
        xOffset2 = xOffset2.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        y : Int32 = self.getY()
        graphics.not_nil!.drawChars(charArray, offset, len, @x &+ xOffset, y, @hudGraphicsPosition.not_nil!.getAnchor())
        graphics.not_nil!.drawChars(charArray2, offset2, len2, @x &+ xOffset2, y, @hudGraphicsPosition.not_nil!.getAnchor())
    end
    

    def paintDX(graphics : Graphics?, charArray : Array(UInt16)?, offset : Int, len : Int, charArray2 : Array(UInt16)?, offset2 : Int, len2 : Int, xOffset : Int) : Nil
        offset = offset.to_i32!
        len = len.to_i32!
        offset2 = offset2.to_i32!
        len2 = len2.to_i32!
        xOffset = xOffset.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        y : Int32 = self.getY()
        graphics.not_nil!.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.not_nil!.getAnchor())
        graphics.not_nil!.drawChars(charArray2, offset2, len2, @x &+ xOffset, y, @hudGraphicsPosition.not_nil!.getAnchor())
    end
    

    def paintOffsetAndLength(graphics : Graphics?, charArray : Array(UInt16)?, offset : Int, len : Int) : Nil
        offset = offset.to_i32!
        len = len.to_i32!
        @myFontProcessor.not_nil!.process(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        y : Int32 = self.getY()
        graphics.not_nil!.drawChars(charArray, offset, len, @x, y, @hudGraphicsPosition.not_nil!.getAnchor())
    end
    

    def paintString(graphics : Graphics?, string : String) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, self.getBasicColorP())
        y : Int32 = self.getY() &+ @offsetY
        graphics.not_nil!.drawString(string, @x, y, @hudGraphicsPosition.not_nil!.getAnchor())
    end
end


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
# package org.allbinary.game.layer

class AllBinaryGameLayer < AllBinaryLayer
    include ViewPositionEventListenerInterface
    include OpenGLSurfaceChangedInterface
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @j_RED : BasicColor? = nil

    def jf_RED : BasicColor?
        @j_RED
    end

    def jf_RED=(value : BasicColor?) : BasicColor?
        @j_RED = value
    end
    @paintable : Paintable? = nil

    def jf_paintable : Paintable?
        @paintable
    end

    def jf_paintable=(value : Paintable?) : Paintable?
        @paintable = value
    end
    @gameKeyEventList : BasicArrayList? = nil

    def jf_gameKeyEventList : BasicArrayList?
        @gameKeyEventList
    end

    def jf_gameKeyEventList=(value : BasicArrayList?) : BasicArrayList?
        @gameKeyEventList = value
    end
    

    def self.createPaintable : Paintable?
        if SWTUtil.jst_isSWT
            return SWTBlackPaintable.new.jinit_SWTBlackPaintable()
        end
        return NullPaintable.getInstance()
    end

    # Java field initializers run after the super constructor
    def jfields_AllBinaryGameLayer : Nil
    @commonStrings = CommonStrings.getInstance()
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    @j_RED = BasicColorFactory.getInstance().not_nil!.jf_RED
    @paintable = AllBinaryGameLayer.createPaintable()
    @gameKeyEventList = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_AllBinaryGameLayer(name : String, layerInfo : Rectangle?, viewPosition : ViewPositionBase?) : self
        jinit_AllBinaryLayer(name, layerInfo, viewPosition)
        jfields_AllBinaryGameLayer()
        self
    end
    

    def set(gl : GL?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def move : Nil
    end
    

    def getGameKeyEventList : BasicArrayList?
        return @gameKeyEventList
    end
    

    def processInput(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def processTick(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def onEvent(eventObject : AllBinaryEventObject?) : Nil
        ForcedLogUtil.log(EventStrings.getInstance().not_nil!.jf_PERFORMANCE_MESSAGE, self)
    end
    

    def onViewPositionChangeEvent : Nil
        self.onChangeEvent(@viewPositionEvent)
    end
    

    def onChangeEvent(layerManagerEvent : ViewPositionEvent?) : Nil
        if GameLayerUtil.isOnScreen(self)
            self.setVisible(true)
        else
            self.setVisible(false)
        end
    end
    

    def paintFirst(graphics : Graphics?) : Nil
        @paintable.not_nil!.paint(graphics)
    end
    

    def paintDebug(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = self.getViewPosition()
        viewX : Int32 = viewPosition.not_nil!.getX()
        viewY : Int32 = viewPosition.not_nil!.getY()
        @basicSetColorUtil.not_nil!.setBasicColorP(graphics, @j_RED)
        graphics.not_nil!.drawRect(viewX, viewY, self.getWidth(), self.getHeight())
    end
    

    def setWidth(width : Int) : Nil
        width = width.to_i32!
        setLayerWidth(width)
        self.setHalfWidth(JR.shr(width, 1))
    end
    

    def setHeight(height : Int) : Nil
        height = height.to_i32!
        setLayerHeight(height)
        self.setHalfHeight(JR.shr(height, 1))
    end
end


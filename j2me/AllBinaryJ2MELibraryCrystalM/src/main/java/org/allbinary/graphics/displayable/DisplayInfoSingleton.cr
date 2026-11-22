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
# package org.allbinary.graphics.displayable

class DisplayInfoSingleton < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonLabels : CommonLabels? = nil

    def jf_commonLabels : CommonLabels?
        @commonLabels
    end

    def jf_commonLabels=(value : CommonLabels?) : CommonLabels?
        @commonLabels = value
    end
    @commonSeps : CommonSeps? = nil

    def jf_commonSeps : CommonSeps?
        @commonSeps
    end

    def jf_commonSeps=(value : CommonSeps?) : CommonSeps?
        @commonSeps = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @j_ORIENTATION : String = ""

    def jf_ORIENTATION : String
        @j_ORIENTATION
    end

    def jf_ORIENTATION=(value : String) : String
        @j_ORIENTATION = value
    end
    @j_ADJUSTING_FOR_SCALING_IN_PORTRAIT : String = ""

    def jf_ADJUSTING_FOR_SCALING_IN_PORTRAIT : String
        @j_ADJUSTING_FOR_SCALING_IN_PORTRAIT
    end

    def jf_ADJUSTING_FOR_SCALING_IN_PORTRAIT=(value : String) : String
        @j_ADJUSTING_FOR_SCALING_IN_PORTRAIT = value
    end
    @j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE : String = ""

    def jf_ADJUSTING_FOR_SCALING_IN_LANDSCAPE : String
        @j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE
    end

    def jf_ADJUSTING_FOR_SCALING_IN_LANDSCAPE=(value : String) : String
        @j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE = value
    end
    @last : Array(Int32)? = nil

    def jf_last : Array(Int32)?
        @last
    end

    def jf_last=(value : Array(Int32)?) : Array(Int32)?
        @last = value
    end
    @lastHalf : Array(Int32)? = nil

    def jf_lastHalf : Array(Int32)?
        @lastHalf
    end

    def jf_lastHalf=(value : Array(Int32)?) : Array(Int32)?
        @lastHalf = value
    end
    @full : Array(Int32)? = nil

    def jf_full : Array(Int32)?
        @full
    end

    def jf_full=(value : Array(Int32)?) : Array(Int32)?
        @full = value
    end
    @top : Int32 = 0

    def jf_top : Int32
        @top
    end

    def jf_top=(value : Int32) : Int32
        @top = value
    end
    @left : Int32 = 0

    def jf_left : Int32
        @left
    end

    def jf_left=(value : Int32) : Int32
        @left = value
    end
    @xOffset : Int32 = 0

    def jf_xOffset : Int32
        @xOffset
    end

    def jf_xOffset=(value : Int32) : Int32
        @xOffset = value
    end
    @yOffset : Int32 = 0

    def jf_yOffset : Int32
        @yOffset
    end

    def jf_yOffset=(value : Int32) : Int32
        @yOffset = value
    end
    @scaleLargestTo : Float32 = 0_f32

    def jf_scaleLargestTo : Float32
        @scaleLargestTo
    end

    def jf_scaleLargestTo=(value : Float32) : Float32
        @scaleLargestTo = value
    end
    @j_WIDTH : Int32 = 0

    def jf_WIDTH : Int32
        @j_WIDTH
    end

    def jf_WIDTH=(value : Int32) : Int32
        @j_WIDTH = value
    end
    @j_HEIGHT : Int32 = 0

    def jf_HEIGHT : Int32
        @j_HEIGHT
    end

    def jf_HEIGHT=(value : Int32) : Int32
        @j_HEIGHT = value
    end
    @j_CUSTOM_WIDTH : Int32 = 0

    def jf_CUSTOM_WIDTH : Int32
        @j_CUSTOM_WIDTH
    end

    def jf_CUSTOM_WIDTH=(value : Int32) : Int32
        @j_CUSTOM_WIDTH = value
    end
    @j_CUSTOM_HEIGHT : Int32 = 0

    def jf_CUSTOM_HEIGHT : Int32
        @j_CUSTOM_HEIGHT
    end

    def jf_CUSTOM_HEIGHT=(value : Int32) : Int32
        @j_CUSTOM_HEIGHT = value
    end
    @scalableListener : BaseScalable? = nil

    def jf_scalableListener : BaseScalable?
        @scalableListener
    end

    def jf_scalableListener=(value : BaseScalable?) : BaseScalable?
        @scalableListener = value
    end
    @displayRatio : Float32 = 0_f32

    def jf_displayRatio : Float32
        @displayRatio
    end

    def jf_displayRatio=(value : Float32) : Float32
        @displayRatio = value
    end
    @ratio : Float32 = 0_f32

    def jf_ratio : Float32
        @ratio
    end

    def jf_ratio=(value : Float32) : Float32
        @ratio = value
    end
    @j_SET_LAST_SIZE_METHOD_NAME : String = ""

    def jf_SET_LAST_SIZE_METHOD_NAME : String
        @j_SET_LAST_SIZE_METHOD_NAME
    end

    def jf_SET_LAST_SIZE_METHOD_NAME=(value : String) : String
        @j_SET_LAST_SIZE_METHOD_NAME = value
    end
    @j_FULL_WIDTH : String = ""

    def jf_FULL_WIDTH : String
        @j_FULL_WIDTH
    end

    def jf_FULL_WIDTH=(value : String) : String
        @j_FULL_WIDTH = value
    end
    @j_FULL_HEIGHT : String = ""

    def jf_FULL_HEIGHT : String
        @j_FULL_HEIGHT
    end

    def jf_FULL_HEIGHT=(value : String) : String
        @j_FULL_HEIGHT = value
    end
    @j_LAST_WIDTH : String = ""

    def jf_LAST_WIDTH : String
        @j_LAST_WIDTH
    end

    def jf_LAST_WIDTH=(value : String) : String
        @j_LAST_WIDTH = value
    end
    @j_LAST_HEIGHT : String = ""

    def jf_LAST_HEIGHT : String
        @j_LAST_HEIGHT
    end

    def jf_LAST_HEIGHT=(value : String) : String
        @j_LAST_HEIGHT = value
    end
    @j_PORTRAIT : String = ""

    def jf_PORTRAIT : String
        @j_PORTRAIT
    end

    def jf_PORTRAIT=(value : String) : String
        @j_PORTRAIT = value
    end
    @j_LANDSCAPE : String = ""

    def jf_LANDSCAPE : String
        @j_LANDSCAPE
    end

    def jf_LANDSCAPE=(value : String) : String
        @j_LANDSCAPE = value
    end
    @displayChangeEvent : DisplayChangeEvent? = nil

    def jf_displayChangeEvent : DisplayChangeEvent?
        @displayChangeEvent
    end

    def jf_displayChangeEvent=(value : DisplayChangeEvent?) : DisplayChangeEvent?
        @displayChangeEvent = value
    end
    @j_FIRE_METHOD_NAME : String = ""

    def jf_FIRE_METHOD_NAME : String
        @j_FIRE_METHOD_NAME
    end

    def jf_FIRE_METHOD_NAME=(value : String) : String
        @j_FIRE_METHOD_NAME = value
    end
    @j_REASON : String = ""

    def jf_REASON : String
        @j_REASON
    end

    def jf_REASON=(value : String) : String
        @j_REASON = value
    end
    @j_UPDATE_FROM_ORIENTATION_CHANGE : String = ""

    def jf_UPDATE_FROM_ORIENTATION_CHANGE : String
        @j_UPDATE_FROM_ORIENTATION_CHANGE
    end

    def jf_UPDATE_FROM_ORIENTATION_CHANGE=(value : String) : String
        @j_UPDATE_FROM_ORIENTATION_CHANGE = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @j_DISPLAY_INFO : String = ""

    def jf_DISPLAY_INFO : String
        @j_DISPLAY_INFO
    end

    def jf_DISPLAY_INFO=(value : String) : String
        @j_DISPLAY_INFO = value
    end
    @j_FULL : String = ""

    def jf_FULL : String
        @j_FULL
    end

    def jf_FULL=(value : String) : String
        @j_FULL = value
    end
    @j_LAST : String = ""

    def jf_LAST : String
        @j_LAST
    end

    def jf_LAST=(value : String) : String
        @j_LAST = value
    end
    @j_LAST_HALF : String = ""

    def jf_LAST_HALF : String
        @j_LAST_HALF
    end

    def jf_LAST_HALF=(value : String) : String
        @j_LAST_HALF = value
    end

    @@jst_SINGLETON : DisplayInfoSingleton? = nil

    def self.jst_SINGLETON : DisplayInfoSingleton?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = DisplayInfoSingleton.new.jinit_DisplayInfoSingleton()
    end
    

    def self.getInstance : DisplayInfoSingleton?
        return DisplayInfoSingleton.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_DisplayInfoSingleton : Nil
    @logUtil = LogUtil.getInstance()
    @commonLabels = CommonLabels.getInstance()
    @commonSeps = CommonSeps.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_ORIENTATION = "ORIENTATION"
    @j_ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
    @j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
    @last = Array(Int32).new(4, 0)
    @lastHalf = Array(Int32).new(4, 0)
    @full = Array(Int32).new(4, 0)
    
    
    
    
    
    @j_WIDTH = 0
    @j_HEIGHT = 1
    @j_CUSTOM_WIDTH = 2
    @j_CUSTOM_HEIGHT = 3
    @scalableListener = BaseScalable.new.jinit_BaseScalable()
    
    @ratio = 1.0_f32
    @j_SET_LAST_SIZE_METHOD_NAME = "setLastSize"
    @j_FULL_WIDTH = " FullWidth: "
    @j_FULL_HEIGHT = " FullHeight: "
    @j_LAST_WIDTH = "LastWidth: "
    @j_LAST_HEIGHT = " LastHeight: "
    @j_PORTRAIT = "Portrait"
    @j_LANDSCAPE = "Landscape"
    @displayChangeEvent = DisplayChangeEvent.new.jinit_DisplayChangeEvent(self)
    @j_FIRE_METHOD_NAME = "fire"
    @j_REASON = "reason: "
    @j_UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    @j_DISPLAY_INFO = "Display Info: "
    @j_FULL = "full"
    @j_LAST = "last"
    @j_LAST_HALF = "lastHalf"
    end
    

    def jinit_DisplayInfoSingleton : self
        jfields_DisplayInfoSingleton()
        size : Int32 = @last.not_nil!.size
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            @last.not_nil![index] = 0
            @lastHalf.not_nil![index] = 0
            @full.not_nil![index] = 0
        end
        if AndroidUtil.isAndroid()
            @scaleLargestTo = 640_f32
        else
            @scaleLargestTo = 1080_f32
        end
        self
    end
    

    def getLastHalf : Array(Int32)?
        return @lastHalf
    end
    

    def getLast : Array(Int32)?
        return @last
    end
    

    def getFull : Array(Int32)?
        return @full
    end
    

    def getScaleLargestTo : Float32
        return @scaleLargestTo
    end
    

    def setScaleLargestTo(scaleLargestTo : Int) : Nil
        scaleLargestTo = scaleLargestTo.to_i32!
        @scaleLargestTo = (scaleLargestTo).to_f32
    end
    

    def setLastSize(aLastWidth : Int, aLastHeight : Int, reason : String) : Nil
        aLastWidth = aLastWidth.to_i32!
        aLastHeight = aLastHeight.to_i32!
        if @full.not_nil![@j_WIDTH] != aLastWidth || @full.not_nil![@j_HEIGHT] != aLastHeight
            self.setLastSizeForce(aLastWidth, aLastHeight, reason)
        end
    end
    

    def setLastSizeForce(aLastWidth : Int, aLastHeight : Int, reason : String) : Nil
        aLastWidth = aLastWidth.to_i32!
        aLastHeight = aLastHeight.to_i32!
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(reason).not_nil!.toString(), self, @j_SET_LAST_SIZE_METHOD_NAME)
        aFullWidth : Int32 = aLastWidth
        aFullHeight : Int32 = aLastHeight
        stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_FULL_WIDTH).not_nil!.appendint(aFullWidth).not_nil!.append(@j_FULL_HEIGHT).not_nil!.appendint(aFullHeight).not_nil!.append(self.toString()).not_nil!.toString(), self, @j_SET_LAST_SIZE_METHOD_NAME)
        operatingSystemInterface : GenericOperatingSystem? = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
        if operatingSystemInterface.not_nil!.isOverScan()
            aLastWidth = aLastWidth &* operatingSystemInterface.not_nil!.getOverScanXPercent().tdiv(100)
            aLastHeight = aLastHeight &* operatingSystemInterface.not_nil!.getOverScanYPercent().tdiv(100)
        end
        if operatingSystemInterface.not_nil!.isScalable()
            if self.isPortraitWH(aLastWidth, aLastHeight)
                if (aLastHeight).to_f32 > @scaleLargestTo
                    @displayRatio = @scaleLargestTo / (aLastHeight).to_f32
                    @ratio = (aLastHeight).to_f32 / @scaleLargestTo
                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                    @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_ADJUSTING_FOR_SCALING_IN_PORTRAIT).not_nil!.appendfloat(@displayRatio).not_nil!.toString(), self, @j_SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JR.d2i(((aLastWidth).to_f32 * @displayRatio))
                    aLastHeight = JR.d2i(((aLastHeight).to_f32 * @displayRatio))
                    @scalableListener.not_nil!.scale(@ratio)
                else
                    @ratio = 1.0_f32
                    @scalableListener.not_nil!.scale(@ratio)
                end
            else
                if (aLastWidth).to_f32 > @scaleLargestTo
                    @displayRatio = @scaleLargestTo / (aLastWidth).to_f32
                    @ratio = (aLastWidth).to_f32 / @scaleLargestTo
                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                    @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE).not_nil!.appendfloat(@displayRatio).not_nil!.toString(), self, @j_SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JR.d2i(((aLastWidth).to_f32 * @displayRatio))
                    aLastHeight = JR.d2i(((aLastHeight).to_f32 * @displayRatio))
                    @scalableListener.not_nil!.scale(@ratio)
                else
                    @ratio = 1.0_f32
                    @scalableListener.not_nil!.scale(@ratio)
                end
            end
        end
        stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_LAST_WIDTH).not_nil!.appendint(aLastWidth).not_nil!.append(@j_LAST_HEIGHT).not_nil!.appendint(aLastHeight).not_nil!.toString(), self, @j_SET_LAST_SIZE_METHOD_NAME)
        @xOffset = aFullWidth &- aLastWidth
        @yOffset = aFullHeight &- aLastHeight
        @left = @scalableListener.not_nil!.getLeft(@xOffset)
        @top = @scalableListener.not_nil!.getTop(@yOffset)
        @full.not_nil![@j_WIDTH] = aFullWidth
        @full.not_nil![@j_HEIGHT] = aFullHeight
        @last.not_nil![@j_WIDTH] = aLastWidth
        @lastHalf.not_nil![@j_WIDTH] = (JR.shr(@last.not_nil![@j_WIDTH], 1))
        @last.not_nil![@j_HEIGHT] = aLastHeight
        @lastHalf.not_nil![@j_HEIGHT] = (JR.shr(@last.not_nil![@j_HEIGHT], 1))
        SWTJOGLProcessor.getInstance().not_nil!.setCustom(aLastWidth, aLastHeight, @ratio)
        self.add(@j_SET_LAST_SIZE_METHOD_NAME)
    end
    

    def isPortraitWH(lastWidth : Int, lastHeight : Int) : Bool
        lastWidth = lastWidth.to_i32!
        lastHeight = lastHeight.to_i32!
        if lastHeight > lastWidth
            return true
        else
            return false
        end
        return false
    end
    

    def isPortrait : Bool
        return self.isPortraitWH(@last.not_nil![@j_WIDTH], @last.not_nil![@j_HEIGHT])
    end
    

    def add(reason : String) : Nil
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_REASON).not_nil!.append(reason).not_nil!.toString(), self, @j_FIRE_METHOD_NAME)
        stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
        @logUtil.not_nil!.putF(self.toStringAppend(stringMaker), self, @j_FIRE_METHOD_NAME)
        @list.not_nil!.add(reason)
    end
    

    def process : Nil
        begin
            if @list.not_nil!.size() > 0
                self.processForced()
            end
            @list.not_nil!.clear()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putOE(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_FIRE_METHOD_NAME, e)
            else
                raise jex1
            end
        end
    end
    

    def processForced : Nil
        begin
            swtJOGLProcessor : SWTJOGLProcessor? = SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.not_nil!.clear()
            DisplayChangeEventHandler.getInstance().not_nil!.fireEvent(@displayChangeEvent)
            LastDisplayChangeEventHandler.getInstance().not_nil!.fireEvent(@displayChangeEvent)
            swtJOGLProcessor.not_nil!.onSurfaceChanged()
        rescue jexc2 : ::Exception
            jex2 = JR.jthrowable(jexc2)
            if jex2.is_a?(JException)
                e = jex2.as(JException)
            PreLogUtil.putOE(@commonStrings.not_nil!.jf_EXCEPTION, self, @j_FIRE_METHOD_NAME, e)
            else
                raise jex2
            end
        end
    end
    

    def update(displayable : Displayable?, reason : String) : Nil
        aLastWidth : Int32 = displayable.not_nil!.getWidth()
        aLastHeight : Int32 = displayable.not_nil!.getHeight()
        aFullWidth : Int32 = aLastWidth
        aFullHeight : Int32 = aLastHeight
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(reason).not_nil!.append(@j_LAST_WIDTH).not_nil!.appendint(aLastWidth).not_nil!.append(@j_LAST_HEIGHT).not_nil!.appendint(aLastHeight).not_nil!.append(@commonSeps.not_nil!.jf_SPACE).not_nil!.append(self.toString()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
        if aLastWidth > 0 && aLastHeight > 0
            features : Features? = Features.getInstance()
            openGLFeatureFactory : OpenGLFeatureFactory? = OpenGLFeatureFactory.getInstance()
            if !features.not_nil!.isDefault(openGLFeatureFactory.not_nil!.jf_OPENGL) || @last.not_nil![@j_WIDTH] != aLastWidth || @last.not_nil![@j_HEIGHT] != aLastHeight
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_UPDATE_FROM_ORIENTATION_CHANGE).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                operatingSystemInterface : GenericOperatingSystem? = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
                if operatingSystemInterface.not_nil!.isOverScan()
                    aLastWidth = aLastWidth &* operatingSystemInterface.not_nil!.getOverScanXPercent().tdiv(100)
                    aLastHeight = aLastHeight &* operatingSystemInterface.not_nil!.getOverScanYPercent().tdiv(100)
                end
                if operatingSystemInterface.not_nil!.isScalable()
                    if self.isPortraitWH(aLastWidth, aLastHeight)
                        if (aLastHeight).to_f32 > @scaleLargestTo
                            @displayRatio = @scaleLargestTo / (aLastHeight).to_f32
                            @ratio = (aLastHeight).to_f32 / @scaleLargestTo
                            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                            @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_ADJUSTING_FOR_SCALING_IN_PORTRAIT).not_nil!.appendfloat(@displayRatio).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                            aLastWidth = JR.d2i(((aLastWidth).to_f32 * @displayRatio))
                            aLastHeight = JR.d2i(((aLastHeight).to_f32 * @displayRatio))
                            @scalableListener.not_nil!.scale(@ratio)
                        else
                            @ratio = 1.0_f32
                            @scalableListener.not_nil!.scale(@ratio)
                        end
                    else
                        if (aLastWidth).to_f32 > @scaleLargestTo
                            @displayRatio = @scaleLargestTo / (aLastWidth).to_f32
                            @ratio = (aLastWidth).to_f32 / @scaleLargestTo
                            stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                            @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_ADJUSTING_FOR_SCALING_IN_LANDSCAPE).not_nil!.appendfloat(@displayRatio).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                            aLastWidth = JR.d2i(((aLastWidth).to_f32 * @displayRatio))
                            aLastHeight = JR.d2i(((aLastHeight).to_f32 * @displayRatio))
                            @scalableListener.not_nil!.scale(@ratio)
                        else
                            @ratio = 1.0_f32
                            @scalableListener.not_nil!.scale(@ratio)
                        end
                    end
                end
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_UPDATE_FROM_ORIENTATION_CHANGE).not_nil!.append(@j_LAST_WIDTH).not_nil!.appendint(aLastWidth).not_nil!.append(@j_LAST_HEIGHT).not_nil!.appendint(aLastHeight).not_nil!.toString(), self, @commonStrings.not_nil!.jf_UPDATE)
                @xOffset = aFullWidth &- aLastWidth
                @yOffset = aFullHeight &- aLastHeight
                @left = @scalableListener.not_nil!.getLeft(@xOffset)
                @top = @scalableListener.not_nil!.getTop(@yOffset)
                @full.not_nil![@j_WIDTH] = aFullWidth
                @full.not_nil![@j_HEIGHT] = aFullHeight
                @last.not_nil![@j_WIDTH] = aLastWidth
                @lastHalf.not_nil![@j_WIDTH] = (JR.shr(@last.not_nil![@j_WIDTH], 1))
                @last.not_nil![@j_HEIGHT] = aLastHeight
                @lastHalf.not_nil![@j_HEIGHT] = (JR.shr(@last.not_nil![@j_HEIGHT], 1))
                SWTJOGLProcessor.getInstance().not_nil!.setCustom(aLastWidth, aLastHeight, @ratio)
                self.add(@commonStrings.not_nil!.jf_UPDATE)
            end
        end
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        return self.toStringAppend(stringBuffer)
    end
    

    def toStringAppend(stringBuffer : StringMaker?) : String
        stringBuffer.not_nil!.append(@j_DISPLAY_INFO)
        stringBuffer.not_nil!.append(@j_FULL)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(@full.not_nil![@j_WIDTH])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@j_FULL)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(@full.not_nil![@j_HEIGHT])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@j_LAST)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(@last.not_nil![@j_WIDTH])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@j_LAST)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(@last.not_nil![@j_HEIGHT])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@j_LAST_HALF)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_WIDTH_LABEL)
        stringBuffer.not_nil!.appendint(@lastHalf.not_nil![@j_WIDTH])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(@j_LAST_HALF)
        stringBuffer.not_nil!.append(@commonLabels.not_nil!.jf_HEIGHT_LABEL)
        stringBuffer.not_nil!.appendint(@lastHalf.not_nil![@j_HEIGHT])
        stringBuffer.not_nil!.append(@commonSeps.not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append((self.isPortrait() ? @j_PORTRAIT : @j_LANDSCAPE))
        return stringBuffer.not_nil!.toString()
    end
    

    def getTop : Int32
        return @top
    end
    

    def getLeft : Int32
        return @left
    end
    

    def getLastWidth : Int32
        return @last.not_nil![@j_WIDTH]
    end
    

    def getLastHeight : Int32
        return @last.not_nil![@j_HEIGHT]
    end
    

    def getLastHalfWidth : Int32
        return @lastHalf.not_nil![@j_WIDTH]
    end
    

    def getLastHalfHeight : Int32
        return @lastHalf.not_nil![@j_HEIGHT]
    end
    

    def getCustomLastWidth : Int32
        return @last.not_nil![@j_CUSTOM_WIDTH]
    end
    

    def getCustomLastHeight : Int32
        return @last.not_nil![@j_CUSTOM_HEIGHT]
    end
    

    def getRawLastWidth : Int32
        return @last.not_nil![@j_WIDTH]
    end
    

    def getRawLastHeight : Int32
        return @last.not_nil![@j_HEIGHT]
    end
    

    def setCustom(width : Int, height : Int) : Nil
        width = width.to_i32!
        height = height.to_i32!
        @last.not_nil![@j_CUSTOM_WIDTH] = width
        @lastHalf.not_nil![@j_CUSTOM_WIDTH] = (JR.shr(@last.not_nil![@j_CUSTOM_WIDTH], 1))
        @last.not_nil![@j_CUSTOM_HEIGHT] = height
        @lastHalf.not_nil![@j_CUSTOM_HEIGHT] = (JR.shr(@last.not_nil![@j_CUSTOM_HEIGHT], 1))
    end
    

    def setScalableListener(scalableListener : BaseScalable?) : Nil
        @scalableListener = scalableListener
    end
    

    def getScalableListener : ScalableListener?
        return @scalableListener
    end
    

    def getRatio : Float32
        return @ratio
    end
    

    def getDisplayRatio : Float32
        return @displayRatio
    end
    

    def setOffset(left : Int, top : Int) : Nil
        left = left.to_i32!
        top = top.to_i32!
        @left = left
    end
    

    def getxOffset : Int32
        return @xOffset
    end
    

    def getyOffset : Int32
        return @yOffset
    end
end


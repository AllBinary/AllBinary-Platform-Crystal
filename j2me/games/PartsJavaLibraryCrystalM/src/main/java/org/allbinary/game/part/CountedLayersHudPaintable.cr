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
# package org.allbinary.game.part

class CountedLayersHudPaintable < JObject
    include PaintableInterface
    include UpdateMyFontInterface
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @partInterfaceArray : Array(PartInterface?)? = nil

    def jf_partInterfaceArray : Array(PartInterface?)?
        @partInterfaceArray
    end

    def jf_partInterfaceArray=(value : Array(PartInterface?)?) : Array(PartInterface?)?
        @partInterfaceArray = value
    end
    @countedTotalStringColor : Int32 = 0

    def jf_countedTotalStringColor : Int32
        @countedTotalStringColor
    end

    def jf_countedTotalStringColor=(value : Int32) : Int32
        @countedTotalStringColor = value
    end
    @countedPartsBorder : Int32 = 0

    def jf_countedPartsBorder : Int32
        @countedPartsBorder
    end

    def jf_countedPartsBorder=(value : Int32) : Int32
        @countedPartsBorder = value
    end
    @startIndex : Int32 = 0

    def jf_startIndex : Int32
        @startIndex
    end

    def jf_startIndex=(value : Int32) : Int32
        @startIndex = value
    end
    @dropSize : Int32 = 0

    def jf_dropSize : Int32
        @dropSize
    end

    def jf_dropSize=(value : Int32) : Int32
        @dropSize = value
    end
    @myFontProcessor : MyFontProcessor? = nil

    def jf_myFontProcessor : MyFontProcessor?
        @myFontProcessor
    end

    def jf_myFontProcessor=(value : MyFontProcessor?) : MyFontProcessor?
        @myFontProcessor = value
    end
    @height : Int32 = 0

    def jf_height : Int32
        @height
    end

    def jf_height=(value : Int32) : Int32
        @height = value
    end

    @@jst_XXStringWidth : Int32 = 0

    def self.jst_XXStringWidth : Int32
        jclinit
        @@jst_XXStringWidth
    end

    def self.jst_XXStringWidth=(value : Int32) : Int32
        jclinit
        @@jst_XXStringWidth = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_XXStringWidth = 0
    end

    # Java field initializers run after the super constructor
    def jfields_CountedLayersHudPaintable : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    
    
    
    
    
    @myFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    
    end
    

    def jinit_CountedLayersHudPaintable(partInterfaceArray : Array(PartInterface?)?, dropSize : Int, startIndex : Int, countedTotalStringColor : Int, countedPartsBorder : Int) : self
        dropSize = dropSize.to_i32!
        startIndex = startIndex.to_i32!
        countedTotalStringColor = countedTotalStringColor.to_i32!
        countedPartsBorder = countedPartsBorder.to_i32!
        jfields_CountedLayersHudPaintable()
        @partInterfaceArray = partInterfaceArray
        @startIndex = startIndex
        @countedTotalStringColor = countedTotalStringColor
        @countedPartsBorder = countedPartsBorder
        @dropSize = dropSize
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        @height = font.not_nil!.getHeight()
        if @dropSize > font.not_nil!.getHeight()
            @height = @dropSize
        end
        if CountedLayersHudPaintable.jst_XXStringWidth == 0
            j_XXString : String = "XX"
            CountedLayersHudPaintable.jst_XXStringWidth = font.not_nil!.stringWidth(j_XXString)
        end
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
        lastWidth : Int32 = @displayInfoSingleton.not_nil!.getLastWidth()
        widthEdge : Int32 = lastWidth &- @dropSize
        size : Int32 = @partInterfaceArray.not_nil!.size
        count : Int32 = 0
        y : Int32 = 0
        countedLayerInterfaceFactory : CountedLayerInterfaceFactoryPart? = nil
        pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface? = nil
        layerInterface : AllBinaryLayer? = nil
        charArray : Array(UInt16)? = nil
        index : Int32 = @startIndex
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            countedLayerInterfaceFactory = JR.cast(@partInterfaceArray.not_nil![index], CountedLayerInterfaceFactoryPart)
            if countedLayerInterfaceFactory.not_nil!.getTotal() > 0
                pickedUpLayerInterfaceFactoryInterface = JR.cast(countedLayerInterfaceFactory.not_nil!.getCountedPickedUpLayerInterfaceFactory(), PickedUpLayerInterfaceFactoryInterface)
                layerInterface = JR.cast(pickedUpLayerInterfaceFactoryInterface.not_nil!.getIconLayer(), AllBinaryLayer)
                y = 40 &+ (count &* @height)
                layerInterface.not_nil!.setPosition(widthEdge, y, layerInterface.not_nil!.getZP())
                layerInterface.not_nil!.paint(graphics)
                graphics.not_nil!.setColor(@countedTotalStringColor)
                countedLayerInterfaceFactory.not_nil!.paint(graphics)
                charArray = countedLayerInterfaceFactory.not_nil!.getTotalString()
                graphics.not_nil!.drawChars(charArray, 0, charArray.not_nil!.size, widthEdge &- countedLayerInterfaceFactory.not_nil!.getXOffset(), y, 0)
                count &+= 1
            end
        end
        if count > 0
            graphics.not_nil!.setColor(@countedPartsBorder)
            graphics.not_nil!.drawRect(lastWidth &- (CountedLayersHudPaintable.jst_XXStringWidth &+ @dropSize), 40, CountedLayersHudPaintable.jst_XXStringWidth &+ @dropSize, (count &* @height) &+ 3)
        end
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end


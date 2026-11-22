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

class CountedLayerInterfaceFactoryPart < JObject
    include PartInterface
    include UpdateMyFontInterface
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
    @animationInterface : Animation? = nil

    def jf_animationInterface : Animation?
        @animationInterface
    end

    def jf_animationInterface=(value : Animation?) : Animation?
        @animationInterface = value
    end
    @total : Int32 = 0

    def jf_total : Int32
        @total
    end

    def jf_total=(value : Int32) : Int32
        @total = value
    end
    @totalString : Array(UInt16)? = nil

    def jf_totalString : Array(UInt16)?
        @totalString
    end

    def jf_totalString=(value : Array(UInt16)?) : Array(UInt16)?
        @totalString = value
    end
    @xOffset : Int32 = 0

    def jf_xOffset : Int32
        @xOffset
    end

    def jf_xOffset=(value : Int32) : Int32
        @xOffset = value
    end
    @countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory? = nil

    def jf_countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory?
        @countedPickedUpLayerInterfaceFactory
    end

    def jf_countedPickedUpLayerInterfaceFactory=(value : CountedPickedUpLayerInterfaceFactory?) : CountedPickedUpLayerInterfaceFactory?
        @countedPickedUpLayerInterfaceFactory = value
    end
    @primitiveLongUtil : PrimitiveLongUtil? = nil

    def jf_primitiveLongUtil : PrimitiveLongUtil?
        @primitiveLongUtil
    end

    def jf_primitiveLongUtil=(value : PrimitiveLongUtil?) : PrimitiveLongUtil?
        @primitiveLongUtil = value
    end

    @@jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY : CountedLayerInterfaceFactoryPart? = nil

    def self.jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY : CountedLayerInterfaceFactoryPart?
        jclinit
        @@jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY
    end

    def self.jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY=(value : CountedLayerInterfaceFactoryPart?) : CountedLayerInterfaceFactoryPart?
        jclinit
        @@jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COUNTED_LAYER_INTERFACE_FACTORY = CountedLayerInterfaceFactoryPart.new.jinit_CountedLayerInterfaceFactoryPart(0, CountedPickedUpLayerInterfaceFactory.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY)
    end

    # Java field initializers run after the super constructor
    def jfields_CountedLayerInterfaceFactoryPart : Nil
    @updateMyFontProcessor = UpdateMyFontProcessor.new.jinit_UpdateMyFontProcessor(self)
    @myFontProcessor = @updateMyFontProcessor
    @animationInterface = NullAnimationFactory.getFactoryInstance().not_nil!.getInstance(0)
    
    @totalString = NullUtil.getInstance().not_nil!.jf_NULL_CHAR_ARRAY
    
    @countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.jst_NULL_COUNTED_PICKUP_LAYER_FACTORY
    
    end
    

    def jinit_CountedLayerInterfaceFactoryPart(total : Int, countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory?) : self
        total = total.to_i32!
        jfields_CountedLayerInterfaceFactoryPart()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        self.init(total, countedPickedUpLayerInterfaceFactory)
        self
    end
    

    def updateMeasurement(graphics : Graphics?) : Nil
        font : Font? = graphics.not_nil!.getFont()
        self.setXOffset(font.not_nil!.charsWidth(@totalString, 0, @primitiveLongUtil.not_nil!.getCurrentTotalDigits()) &+ (JR.shr(font.not_nil!.getSize(), 1)))
        @myFontProcessor = MyFontProcessor.getInstance()
    end
    

    def init(total : Int, countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory?) : Nil
        total = total.to_i32!
        self.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        @total = total
    end
    

    def getInstance(hashtable : ABHashtable?, x : Int, y : Int, z : Int) : AllBinaryLayer?
        x = x.to_i32!
        y = y.to_i32!
        z = z.to_i32!
        if @total > 0
            self.setTotal(@total &- 1)
            return self.getCountedPickedUpLayerInterfaceFactory().not_nil!.getNextInstance(hashtable, x, y, z)
        else
            raise (JException.new.jinit_JException("No more left. Could use a listener to automatically remove")).not_nil!
        end
        return nil
    end
    

    def getTotal : Int32
        return @total
    end
    

    def setTotal(total : Int) : Nil
        total = total.to_i32!
        @total = total
        @totalString = @primitiveLongUtil.not_nil!.getCharArray(total)
        @myFontProcessor = @updateMyFontProcessor
    end
    

    def paint(graphics : Graphics?) : Nil
        @myFontProcessor.not_nil!.process(graphics)
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
    

    def getAnimationInterface : Animation?
        return @animationInterface
    end
    

    def setAnimationInterface(animationInterface : Animation?) : Nil
        @animationInterface = animationInterface
    end
    

    def getXOffset : Int32
        return @xOffset
    end
    

    def setXOffset(totalStringWidth : Int) : Nil
        totalStringWidth = totalStringWidth.to_i32!
        @xOffset = totalStringWidth
    end
    

    def getTotalString : Array(UInt16)?
        return @totalString
    end
    

    def getCountedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory?
        return @countedPickedUpLayerInterfaceFactory
    end
    

    def setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory?) : Nil
        @countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    end
end


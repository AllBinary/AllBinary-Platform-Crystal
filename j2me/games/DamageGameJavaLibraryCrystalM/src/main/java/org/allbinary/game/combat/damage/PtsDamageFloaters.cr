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
# package org.allbinary.game.combat.damage

class PtsDamageFloaters < DamageFloaters
    @basicSetColorUtil : BasicColorSetUtil? = nil

    def jf_basicSetColorUtil : BasicColorSetUtil?
        @basicSetColorUtil
    end

    def jf_basicSetColorUtil=(value : BasicColorSetUtil?) : BasicColorSetUtil?
        @basicSetColorUtil = value
    end
    @layerInterface : AllBinaryLayer? = nil

    def jf_layerInterface : AllBinaryLayer?
        @layerInterface
    end

    def jf_layerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @layerInterface = value
    end
    @lastDamage : Array(Int32)? = nil

    def jf_lastDamage : Array(Int32)?
        @lastDamage
    end

    def jf_lastDamage=(value : Array(Int32)?) : Array(Int32)?
        @lastDamage = value
    end
    @lastDamageString : Array(Array(UInt16)?)? = nil

    def jf_lastDamageString : Array(Array(UInt16)?)?
        @lastDamageString
    end

    def jf_lastDamageString=(value : Array(Array(UInt16)?)?) : Array(Array(UInt16)?)?
        @lastDamageString = value
    end
    @lastDamageStringSizeArray : Array(Int32)? = nil

    def jf_lastDamageStringSizeArray : Array(Int32)?
        @lastDamageStringSizeArray
    end

    def jf_lastDamageStringSizeArray=(value : Array(Int32)?) : Array(Int32)?
        @lastDamageStringSizeArray = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @primitiveLongUtil : PrimitiveLongUtil? = nil

    def jf_primitiveLongUtil : PrimitiveLongUtil?
        @primitiveLongUtil
    end

    def jf_primitiveLongUtil=(value : PrimitiveLongUtil?) : PrimitiveLongUtil?
        @primitiveLongUtil = value
    end
    @myRandomFactory : MyRandomFactory? = nil

    def jf_myRandomFactory : MyRandomFactory?
        @myRandomFactory
    end

    def jf_myRandomFactory=(value : MyRandomFactory?) : MyRandomFactory?
        @myRandomFactory = value
    end

    @@jst_basicColorArrayIndexer : BasicColorArrayIndexer? = nil

    def self.jst_basicColorArrayIndexer : BasicColorArrayIndexer?
        jclinit
        @@jst_basicColorArrayIndexer
    end

    def self.jst_basicColorArrayIndexer=(value : BasicColorArrayIndexer?) : BasicColorArrayIndexer?
        jclinit
        @@jst_basicColorArrayIndexer = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_basicColorArrayIndexer = BasicColorArrayIndexer.new.jinit_BasicColorArrayIndexer([BasicColorFactory.getInstance().not_nil!.jf_WHITE, BasicColorFactory.getInstance().not_nil!.jf_RED, BasicColorFactory.getInstance().not_nil!.jf_YELLOW, BasicColorFactory.getInstance().not_nil!.jf_BLUE] of BasicColor?)
    end

    # Java field initializers run after the super constructor
    def jfields_PtsDamageFloaters : Nil
    @basicSetColorUtil = BasicColorSetUtil.getInstance()
    
    @lastDamage = Array(Int32).new(5, 0)
    @lastDamageString = Array(Array(UInt16)?).new(5) { Array(UInt16).new(0, 0_u16).as(Array(UInt16)?) }
    @lastDamageStringSizeArray = Array(Int32).new(5, 0)
    @circularIndexUtil = CircularIndexUtil.createInstance(5)
    
    @myRandomFactory = MyRandomFactory.getInstance()
    end
    

    def jinit_PtsDamageFloaters(layerInterface : AllBinaryLayer?) : self
        jinit_DamageFloaters()
        jfields_PtsDamageFloaters()
        @primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000)
        @layerInterface = layerInterface
        j_CHAR_ARRAY : Array(UInt16)? = CharArrayFactory.getInstance().not_nil!.getZeroCharArray()
        index : Int32 = @lastDamageString.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @lastDamageString.not_nil![index] = j_CHAR_ARRAY
        end
        self
    end
    

    def add(damage : Int) : Nil
        damage = damage.to_i32!
        index : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @lastDamage.not_nil![index] = damage
        @lastDamageString.not_nil![index] = @primitiveLongUtil.not_nil!.getCharArray(@lastDamage.not_nil![index])
        @lastDamageStringSizeArray.not_nil![index] = @primitiveLongUtil.not_nil!.getCurrentTotalDigits()
        @circularIndexUtil.not_nil!.next_()
    end
    

    def paint(graphics : Graphics?) : Nil
        viewPosition : ViewPositionBase? = @layerInterface.not_nil!.getViewPosition()
        x : Int32 = viewPosition.not_nil!.getX()
        y : Int32 = viewPosition.not_nil!.getY()
        index : Int32 = @lastDamage.not_nil!.size &- 1
        jfor2 = false
        while true
            if jfor2
                index &-= 1
            end
            jfor2 = true
            break unless index >= 0
            if @lastDamage.not_nil![index] != 0
                delta : Int32 = 10 &* (index &+ 2)
                @basicSetColorUtil.not_nil!.setBasicColorP(graphics, PtsDamageFloaters.jst_basicColorArrayIndexer.not_nil!.get())
                graphics.not_nil!.drawChars(@lastDamageString.not_nil![index], 0, @lastDamageStringSizeArray.not_nil![index], x &- @myRandomFactory.not_nil!.getNextInt(delta), y &- delta, 0)
                PtsDamageFloaters.jst_basicColorArrayIndexer.not_nil!.next_()
            end
            @lastDamage.not_nil![index] = 0
        end
    end
end


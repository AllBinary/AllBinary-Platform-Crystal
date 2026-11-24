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
# package org.allbinary.game.layer.weapon

class WeaponLayerArrayLayerCircularStaticPool < JObject
    @j_MAX : Int32 = 0

    def jf_MAX : Int32
        @j_MAX
    end

    def jf_MAX=(value : Int32) : Int32
        @j_MAX = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @j_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)? = nil

    def jf_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)?
        @j_WEAPONLAYER_ARRAY
    end

    def jf_WEAPONLAYER_ARRAY=(value : Array(Array(WeaponLayer?)?)?) : Array(Array(WeaponLayer?)?)?
        @j_WEAPONLAYER_ARRAY = value
    end
    @j_TWO_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)? = nil

    def jf_TWO_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)?
        @j_TWO_WEAPONLAYER_ARRAY
    end

    def jf_TWO_WEAPONLAYER_ARRAY=(value : Array(Array(WeaponLayer?)?)?) : Array(Array(WeaponLayer?)?)?
        @j_TWO_WEAPONLAYER_ARRAY = value
    end
    @j_THREE_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)? = nil

    def jf_THREE_WEAPONLAYER_ARRAY : Array(Array(WeaponLayer?)?)?
        @j_THREE_WEAPONLAYER_ARRAY
    end

    def jf_THREE_WEAPONLAYER_ARRAY=(value : Array(Array(WeaponLayer?)?)?) : Array(Array(WeaponLayer?)?)?
        @j_THREE_WEAPONLAYER_ARRAY = value
    end

    @@jst_instance : WeaponLayerArrayLayerCircularStaticPool? = nil

    def self.jst_instance : WeaponLayerArrayLayerCircularStaticPool?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : WeaponLayerArrayLayerCircularStaticPool?) : WeaponLayerArrayLayerCircularStaticPool?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = WeaponLayerArrayLayerCircularStaticPool.new.jinit_WeaponLayerArrayLayerCircularStaticPool()
    end
    

    def self.getInstance : WeaponLayerArrayLayerCircularStaticPool?
        return WeaponLayerArrayLayerCircularStaticPool.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_WeaponLayerArrayLayerCircularStaticPool : Nil
    @j_MAX = 5
    @circularIndexUtil = CircularIndexUtil.createInstance(@j_MAX)
    @j_WEAPONLAYER_ARRAY = Array(Array(WeaponLayer?)?).new(@j_MAX &* 2, nil)
    @j_TWO_WEAPONLAYER_ARRAY = Array(Array(WeaponLayer?)?).new(@j_MAX, nil)
    @j_THREE_WEAPONLAYER_ARRAY = Array(Array(WeaponLayer?)?).new(@j_MAX, nil)
    end

    def jinit_WeaponLayerArrayLayerCircularStaticPool : self
        jfields_WeaponLayerArrayLayerCircularStaticPool()
        self
    end
    

    def init : Nil
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @j_MAX
            @j_WEAPONLAYER_ARRAY.not_nil![index] = Array(WeaponLayer?).new(1, nil)
            @j_TWO_WEAPONLAYER_ARRAY.not_nil![index] = Array(WeaponLayer?).new(2, nil)
            @j_THREE_WEAPONLAYER_ARRAY.not_nil![index] = Array(WeaponLayer?).new(3, nil)
        end
        nil
        nil
        nil
    end
    

    def getWeaponLayerArrays(size : Int) : Array(Array(WeaponLayer?)?)?
        size = size.to_i32!
        if size == 1
            return @j_WEAPONLAYER_ARRAY
        elsif size == 2
            return @j_TWO_WEAPONLAYER_ARRAY
        elsif size == 3
            return @j_THREE_WEAPONLAYER_ARRAY
        end
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getInstanceArray(size : Int) : Array(WeaponLayer?)?
        size = size.to_i32!
        weaponLayerArray : Array(WeaponLayer?)? = self.getWeaponLayerArrays(size).not_nil![@circularIndexUtil.not_nil!.getIndex()]
        @circularIndexUtil.not_nil!.next_()
        return weaponLayerArray
    end
end


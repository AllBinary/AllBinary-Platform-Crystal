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
# package org.allbinary.game.layer.pickup

class PickedUpLayerTypeFactory < JObject
    @j_NONE : PickedUpLayerType? = nil

    def jf_NONE : PickedUpLayerType?
        @j_NONE
    end

    def jf_NONE=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_NONE = value
    end
    @j_BEAM : PickedUpLayerType? = nil

    def jf_BEAM : PickedUpLayerType?
        @j_BEAM
    end

    def jf_BEAM=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_BEAM = value
    end
    @j_MINE : PickedUpLayerType? = nil

    def jf_MINE : PickedUpLayerType?
        @j_MINE
    end

    def jf_MINE=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_MINE = value
    end
    @j_PROJECTILE : PickedUpLayerType? = nil

    def jf_PROJECTILE : PickedUpLayerType?
        @j_PROJECTILE
    end

    def jf_PROJECTILE=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_PROJECTILE = value
    end
    @j_ENHANCEMENT : PickedUpLayerType? = nil

    def jf_ENHANCEMENT : PickedUpLayerType?
        @j_ENHANCEMENT
    end

    def jf_ENHANCEMENT=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_ENHANCEMENT = value
    end
    @j_MORPH : PickedUpLayerType? = nil

    def jf_MORPH : PickedUpLayerType?
        @j_MORPH
    end

    def jf_MORPH=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_MORPH = value
    end
    @j_PART : PickedUpLayerType? = nil

    def jf_PART : PickedUpLayerType?
        @j_PART
    end

    def jf_PART=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_PART = value
    end
    @j_HEAL : PickedUpLayerType? = nil

    def jf_HEAL : PickedUpLayerType?
        @j_HEAL
    end

    def jf_HEAL=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_HEAL = value
    end
    @j_LIFE : PickedUpLayerType? = nil

    def jf_LIFE : PickedUpLayerType?
        @j_LIFE
    end

    def jf_LIFE=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_LIFE = value
    end
    @j_POINTS : PickedUpLayerType? = nil

    def jf_POINTS : PickedUpLayerType?
        @j_POINTS
    end

    def jf_POINTS=(value : PickedUpLayerType?) : PickedUpLayerType?
        @j_POINTS = value
    end

    @@jst_instance : PickedUpLayerTypeFactory? = nil

    def self.jst_instance : PickedUpLayerTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PickedUpLayerTypeFactory?) : PickedUpLayerTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PickedUpLayerTypeFactory.new.jinit_PickedUpLayerTypeFactory()
    end
    

    def self.getInstance : PickedUpLayerTypeFactory?
        return PickedUpLayerTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PickedUpLayerTypeFactory : Nil
    @j_NONE = PickedUpLayerType.new.jinit_PickedUpLayerType(StringUtil.getInstance().not_nil!.jf_NULL_STRING)
    @j_BEAM = PickedUpLayerType.new.jinit_PickedUpLayerType("BEAM")
    @j_MINE = PickedUpLayerType.new.jinit_PickedUpLayerType("MINE")
    @j_PROJECTILE = PickedUpLayerType.new.jinit_PickedUpLayerType("PROJECTILE")
    @j_ENHANCEMENT = PickedUpLayerType.new.jinit_PickedUpLayerType("Enhancement")
    @j_MORPH = PickedUpLayerType.new.jinit_PickedUpLayerType("Morph")
    @j_PART = PickedUpLayerType.new.jinit_PickedUpLayerType("Part")
    @j_HEAL = PickedUpLayerType.new.jinit_PickedUpLayerType("Heal")
    @j_LIFE = PickedUpLayerType.new.jinit_PickedUpLayerType("Life")
    @j_POINTS = PickedUpLayerType.new.jinit_PickedUpLayerType("Points")
    end

    def jinit_PickedUpLayerTypeFactory : self
        jfields_PickedUpLayerTypeFactory()
        self
    end
end


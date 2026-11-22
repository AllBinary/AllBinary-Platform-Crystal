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

class LayerPlacementTypeFactory < JObject
    @j_MAP : LayerPlacementType? = nil

    def jf_MAP : LayerPlacementType?
        @j_MAP
    end

    def jf_MAP=(value : LayerPlacementType?) : LayerPlacementType?
        @j_MAP = value
    end
    @j_LEFT : LayerPlacementType? = nil

    def jf_LEFT : LayerPlacementType?
        @j_LEFT
    end

    def jf_LEFT=(value : LayerPlacementType?) : LayerPlacementType?
        @j_LEFT = value
    end
    @j_DOWN : LayerPlacementType? = nil

    def jf_DOWN : LayerPlacementType?
        @j_DOWN
    end

    def jf_DOWN=(value : LayerPlacementType?) : LayerPlacementType?
        @j_DOWN = value
    end
    @j_UP : LayerPlacementType? = nil

    def jf_UP : LayerPlacementType?
        @j_UP
    end

    def jf_UP=(value : LayerPlacementType?) : LayerPlacementType?
        @j_UP = value
    end
    @j_RIGHT : LayerPlacementType? = nil

    def jf_RIGHT : LayerPlacementType?
        @j_RIGHT
    end

    def jf_RIGHT=(value : LayerPlacementType?) : LayerPlacementType?
        @j_RIGHT = value
    end

    @@jst_instance : LayerPlacementTypeFactory? = nil

    def self.jst_instance : LayerPlacementTypeFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LayerPlacementTypeFactory?) : LayerPlacementTypeFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LayerPlacementTypeFactory.new.jinit_LayerPlacementTypeFactory()
    end
    

    def self.getInstance : LayerPlacementTypeFactory?
        return LayerPlacementTypeFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_LayerPlacementTypeFactory : Nil
    @j_MAP = LayerPlacementType.new.jinit_LayerPlacementType(JInteger.jst_MAX_VALUE)
    @j_LEFT = LayerPlacementType.new.jinit_LayerPlacementType(DirectionFactory.getInstance().not_nil!.jf_LEFT.not_nil!.getValue())
    @j_DOWN = LayerPlacementType.new.jinit_LayerPlacementType(DirectionFactory.getInstance().not_nil!.jf_DOWN.not_nil!.getValue())
    @j_UP = LayerPlacementType.new.jinit_LayerPlacementType(DirectionFactory.getInstance().not_nil!.jf_UP.not_nil!.getValue())
    @j_RIGHT = LayerPlacementType.new.jinit_LayerPlacementType(DirectionFactory.getInstance().not_nil!.jf_RIGHT.not_nil!.getValue())
    end

    def jinit_LayerPlacementTypeFactory : self
        jfields_LayerPlacementTypeFactory()
        self
    end
end


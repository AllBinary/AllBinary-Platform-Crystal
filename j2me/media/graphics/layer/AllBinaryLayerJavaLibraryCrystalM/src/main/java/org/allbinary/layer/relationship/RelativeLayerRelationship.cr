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
# package org.allbinary.layer.relationship

class RelativeLayerRelationship < RelativeRelationship
    @layer : AllBinaryLayer? = nil

    def jf_layer : AllBinaryLayer?
        @layer
    end

    def jf_layer=(value : AllBinaryLayer?) : AllBinaryLayer?
        @layer = value
    end

    # Java field initializers run after the super constructor
    def jfields_RelativeLayerRelationship : Nil
    @layer = AllBinaryLayer.jst_NULL_ALLBINARY_LAYER
    end
    

    def jinit_RelativeLayerRelationship(layer : AllBinaryLayer?, point : GPoint?, typesAllowedList : BasicArrayList?) : self
        jinit_RelativeRelationship(point, typesAllowedList)
        jfields_RelativeLayerRelationship()
        @layer = layer
        self
    end
    

    def getX : Int32
        return @layer.not_nil!.getXP() + super()
    end
    

    def getY : Int32
        return @layer.not_nil!.getYP() + super()
    end
    

    def getZ : Int32
        return @layer.not_nil!.getZP() + super()
    end
end


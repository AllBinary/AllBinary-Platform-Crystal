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

class CollidableCompositeLayer < AllBinaryGameLayer
    include CollidableInterfaceCompositeInterface
    @collidableInferface : CollidableBaseBehavior? = nil

    def jf_collidableInferface : CollidableBaseBehavior?
        @collidableInferface
    end

    def jf_collidableInferface=(value : CollidableBaseBehavior?) : CollidableBaseBehavior?
        @collidableInferface = value
    end

    @@jst_NULL_COLLIDABLE_COMPOSITE_LAYER : JAny = nil

    def self.jst_NULL_COLLIDABLE_COMPOSITE_LAYER : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_COMPOSITE_LAYER
    end

    def self.jst_NULL_COLLIDABLE_COMPOSITE_LAYER=(value : JAny) : JAny
        jclinit
        @@jst_NULL_COLLIDABLE_COMPOSITE_LAYER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getNullInstance : CollidableCompositeLayer?
        if CollidableCompositeLayer.jst_NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            CollidableCompositeLayer.jst_NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer.new.jinit_CollidableCompositeLayer(StringUtil.getInstance().not_nil!.jf_EMPTY_STRING, RectangleFactory.jst_SINGLETON, ViewPositionBase.jst_NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())
        end
        return JR.cast(CollidableCompositeLayer.jst_NULL_COLLIDABLE_COMPOSITE_LAYER, CollidableCompositeLayer)
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableCompositeLayer : Nil
    @collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().not_nil!.createBehavior()
    end
    

    def jinit_CollidableCompositeLayer(name : String, layerInfo : Rectangle?, viewPosition : ViewPositionBase?, collidableBaseBehaviorFactory : CollidableBaseBehaviorFactory?) : self
        jinit_AllBinaryGameLayer(name, layerInfo, viewPosition)
        jfields_CollidableCompositeLayer()
        if collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance()
            self.setCollidableInferface(collidableBaseBehaviorFactory.not_nil!.createBehavior())
        end
        self
    end
    

    def getArtificialIntelligenceInterface : ArtificialIntelligenceInterface?
        ForcedLogUtil.log(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self)
        return ArtificialIntelligence.getInstance()
    end
    

    def getCollidableInferface : CollidableBaseBehavior?
        return @collidableInferface
    end
    

    def setCollidableInferface(collidableInferface : CollidableBaseBehavior?) : Nil
        @collidableInferface = collidableInferface
    end
    

    def implmentsCollidableInterface : Bool
        return true
    end
    

    def toStringAppend(stringBuffer : StringMaker?) : Nil
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        super(stringBuffer)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_NEW_LINE)
        stringBuffer.not_nil!.append(self.getCollidableInferface().not_nil!.toString())
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        self.toStringAppend(stringBuffer)
        return stringBuffer.not_nil!.toString()
    end
end


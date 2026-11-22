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
# package org.allbinary.game.resource

class FeaturedResourceRelativeRelationshipFactory < FeaturedResourceFactory
    @basicArrayListUtil : BasicArrayListUtil? = nil

    def jf_basicArrayListUtil : BasicArrayListUtil?
        @basicArrayListUtil
    end

    def jf_basicArrayListUtil=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        @basicArrayListUtil = value
    end

    @@jst_INSTANCE : FeaturedResourceRelativeRelationshipFactory? = nil

    def self.jst_INSTANCE : FeaturedResourceRelativeRelationshipFactory?
        jclinit
        @@jst_INSTANCE
    end

    def self.jst_INSTANCE=(value : FeaturedResourceRelativeRelationshipFactory?) : FeaturedResourceRelativeRelationshipFactory?
        jclinit
        @@jst_INSTANCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_INSTANCE = FeaturedResourceRelativeRelationshipFactory.new.jinit_FeaturedResourceRelativeRelationshipFactory()
    end
    

    def self.getInstance : FeaturedResourceRelativeRelationshipFactory?
        return FeaturedResourceRelativeRelationshipFactory.jst_INSTANCE
    end

    # Java field initializers run after the super constructor
    def jfields_FeaturedResourceRelativeRelationshipFactory : Nil
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    end
    

    def jinit_FeaturedResourceRelativeRelationshipFactory : self
        jinit_FeaturedResourceFactory()
        jfields_FeaturedResourceRelativeRelationshipFactory()
        self
    end
    

    def getRelativeRelationshipList(resource : String, layer : AllBinaryLayer?) : BasicArrayList?
        featureReleaseList : BasicArrayList? = self.getList()
        size : Int32 = self.getList().not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            featureInterface : ResourceRelativeRelationshipFactoryInterface? = JR.cast(featureReleaseList.not_nil!.jf_objectArray.not_nil![index], ResourceRelativeRelationshipFactoryInterface)
            if featureInterface.not_nil!.isFeature()
                list : BasicArrayList? = featureInterface.not_nil!.getResourceRelativeRelationshipList(resource)
                if list != @basicArrayListUtil.not_nil!.getImmutableInstance()
                    return self.duplicate(list, layer)
                end
            end
        end
        raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Not available for current feature selection or Resource: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
    end
    

    def duplicate(list : BasicArrayList?, layer : AllBinaryLayer?) : BasicArrayList?
        pointFactory : PointFactory? = PointFactory.getInstance()
        newList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        size : Int32 = list.not_nil!.size()
        index : Int32 = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            relativeRelationship : RelativeRelationship? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], RelativeRelationship)
            newList.not_nil!.add(RelativeLayerRelationship.new.jinit_RelativeLayerRelationship(layer, pointFactory.not_nil!.createXY(relativeRelationship.not_nil!.getX(), relativeRelationship.not_nil!.getY()), BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()))
        end
        return newList
    end
end


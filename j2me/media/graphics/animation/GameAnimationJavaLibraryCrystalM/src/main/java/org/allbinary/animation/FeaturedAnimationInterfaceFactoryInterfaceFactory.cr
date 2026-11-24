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
# package org.allbinary.animation

class FeaturedAnimationInterfaceFactoryInterfaceFactory < FeaturedResourceFactory

    @@jst_INSTANCE : FeaturedAnimationInterfaceFactoryInterfaceFactory? = nil

    def self.jst_INSTANCE : FeaturedAnimationInterfaceFactoryInterfaceFactory?
        jclinit
        @@jst_INSTANCE
    end

    def self.jst_INSTANCE=(value : FeaturedAnimationInterfaceFactoryInterfaceFactory?) : FeaturedAnimationInterfaceFactoryInterfaceFactory?
        jclinit
        @@jst_INSTANCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory.new.jinit_FeaturedAnimationInterfaceFactoryInterfaceFactory()
    end
    

    def self.getInstance : FeaturedAnimationInterfaceFactoryInterfaceFactory?
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.jst_INSTANCE
    end
    

    def jinit_FeaturedAnimationInterfaceFactoryInterfaceFactory : self
        jinit_FeaturedResourceFactory()
        self
    end
    

    def getRectangle(resource : String) : Rectangle?
        return self.getRectangleXY(resource, 0, 0)
    end
    

    def getRectangleXY(resource : String, x : Int, y : Int) : Rectangle?
        x = x.to_i32!
        y = y.to_i32!
        pointFactory : PointFactory? = PointFactory.getInstance()
        list : BasicArrayList? = self.getList()
        scale : Int32 = GameConfigurationCentral.getInstance().not_nil!.jf_SCALE.not_nil!.getValue().not_nil!.intValue()
        size : Int32 = self.getList().not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            featureInterface : FeatureResourceAnimationInterfaceFactoryInterface? = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], FeatureResourceAnimationInterfaceFactoryInterface)
            if featureInterface.not_nil!.isFeature()
                rectangle : Rectangle? = featureInterface.not_nil!.getRectangle(resource)
                if rectangle != RectangleFactory.jst_SINGLETON
                    return Rectangle.new.jinit_Rectangle(pointFactory.not_nil!.createXY(x, y), (JR.shr((rectangle.not_nil!.getWidth() &* scale), 1)), (JR.shr((rectangle.not_nil!.getHeight() &* scale), 1)))
                end
            end
        end
        raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("No rectangle available for current feature selection or Resource: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
    end
    

    def getProcedural(resource : String) : ProceduralAnimationInterfaceFactoryInterface?
        return JR.cast(JR.cast(self.getBasicAnimationInterfaceFactoryInstance(resource), ProceduralAnimationInterfaceFactoryInterface), ProceduralAnimationInterfaceFactoryInterface)
    end
    

    def get(resource : String) : AnimationInterfaceFactoryInterface?
        return JR.cast(JR.cast(self.getBasicAnimationInterfaceFactoryInstance(resource), AnimationInterfaceFactoryInterface), AnimationInterfaceFactoryInterface)
    end
    

    def getBasicAnimationInterfaceFactoryInstance(resource : String) : BasicAnimationInterfaceFactoryInterface?
        list : BasicArrayList? = self.getList()
        resourceTypeAvailableList : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        size : Int32 = self.getList().not_nil!.size()
        featureInterface : FeatureResourceAnimationInterfaceFactoryInterface? = nil
        animationInterfaceFactoryInterface : BasicAnimationInterfaceFactoryInterface? = nil
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < size
            featureInterface = JR.cast(JR.cast(list.not_nil!.jf_objectArray.not_nil![index], FeatureResourceAnimationInterfaceFactoryInterface), FeatureResourceAnimationInterfaceFactoryInterface)
            if featureInterface.not_nil!.isFeature()
                resourceTypeAvailableList.not_nil!.add(featureInterface)
                animationInterfaceFactoryInterface = JR.cast(JR.cast(featureInterface.not_nil!.getBasicAnimationInterfaceFactoryInstance(resource), BasicAnimationInterfaceFactoryInterface), BasicAnimationInterfaceFactoryInterface)
                if animationInterfaceFactoryInterface != NullAnimationFactory.jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY
                    return JR.cast(animationInterfaceFactoryInterface, BasicAnimationInterfaceFactoryInterface)
                end
            end
        end
        if resourceTypeAvailableList.not_nil!.size() > 0
            j_NO_ANIMATION_AVAILABLE_FROM : String = "No animation available from: "
            j_FOR_FACTORIES : String = " factories: "
            j_FOR_RESOURCE : String = " for Resource: "
            j_HAS_KEY : String = " has: "
            j_RESOURCES_LABEL : String = " resources "
            stringBuffer = (StringMaker.new.jinit_StringMaker()).as(StringMaker?)
            stringBuffer.not_nil!.append(j_NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.not_nil!.appendint(resourceTypeAvailableList.not_nil!.size())
            stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_FORWARD_SLASH)
            stringBuffer.not_nil!.appendint(size)
            stringBuffer.not_nil!.append(j_FOR_FACTORIES)
            size2 : Int32 = resourceTypeAvailableList.not_nil!.size()
            index = 0
            jfor4 = false
            while true
                if jfor4
                    index &+= 1
                end
                jfor4 = true
                break unless index < size2
                stringBuffer.not_nil!.append(resourceTypeAvailableList.not_nil!.get(index).not_nil!.toString())
                stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_COMMA_SEP)
            end
            stringBuffer.not_nil!.append(j_FOR_RESOURCE)
            stringBuffer.not_nil!.append(resource)
            index = 0
            jfor5 = false
            while true
                if jfor5
                    index &+= 1
                end
                jfor5 = true
                break unless index < size
                stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_NEW_LINE)
                featureInterface = JR.cast(JR.cast(list.not_nil!.jf_objectArray.not_nil![index], FeatureResourceAnimationInterfaceFactoryInterface), FeatureResourceAnimationInterfaceFactoryInterface)
                if featureInterface.not_nil!.isFeature()
                    stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(featureInterface))
                    stringBuffer.not_nil!.append(j_HAS_KEY)
                    stringBuffer.not_nil!.appendint(JR.cast(featureInterface.not_nil!.getHashtable(), ABHashtable).not_nil!.size())
                    stringBuffer.not_nil!.append(j_RESOURCES_LABEL)
                end
            end
            raise (JException.new.jinit_JException(stringBuffer.not_nil!.toString())).not_nil!
        else
            stringBuffer = (StringMaker.new.jinit_StringMaker()).as(StringMaker?)
            index = 0
            jfor3 = false
            while true
                if jfor3
                    index &+= 1
                end
                jfor3 = true
                break unless index < size
                featureInterface = JR.cast(JR.cast(list.not_nil!.jf_objectArray.not_nil![index], FeatureResourceAnimationInterfaceFactoryInterface), FeatureResourceAnimationInterfaceFactoryInterface)
                stringBuffer.not_nil!.append(featureInterface.not_nil!.toString())
                stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
            end
            result : String = stringBuffer.not_nil!.toString()
            stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
            raise (JException.new.jinit_JException(stringBuffer.not_nil!.append("No feature resource type available for Resource: ").not_nil!.append(resource).not_nil!.append(" Resource Factories Available: ").not_nil!.append(result).not_nil!.toString())).not_nil!
        end
        return nil
    end
end


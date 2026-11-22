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
# package org.allbinary.animation.resource

class BaseResourceAnimationInterfaceFactoryInterfaceFactory < JObject
    include FeatureResourceAnimationInterfaceFactoryInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @rectangleHashtable : ABHashtable? = nil

    def jf_rectangleHashtable : ABHashtable?
        @rectangleHashtable
    end

    def jf_rectangleHashtable=(value : ABHashtable?) : ABHashtable?
        @rectangleHashtable = value
    end
    @rectangleArrayOfArraysHashtable : ABHashtable? = nil

    def jf_rectangleArrayOfArraysHashtable : ABHashtable?
        @rectangleArrayOfArraysHashtable
    end

    def jf_rectangleArrayOfArraysHashtable=(value : ABHashtable?) : ABHashtable?
        @rectangleArrayOfArraysHashtable = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end

    # Java field initializers run after the super constructor
    def jfields_BaseResourceAnimationInterfaceFactoryInterfaceFactory : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    
    
    end
    

    def jinit_BaseResourceAnimationInterfaceFactoryInterfaceFactory(name : String, hashtable : ABHashtable?, rectangleHashtable : ABHashtable?, rectangleArrayHashtable : ABHashtable?) : self
        jfields_BaseResourceAnimationInterfaceFactoryInterfaceFactory()
        @hashtable = hashtable
        @rectangleHashtable = rectangleHashtable
        @rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        @name = name
        self
    end
    

    def getName : String
        return @name
    end
    

    def init(level : Int) : Nil
        level = level.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("Available List of Animations: ").not_nil!.append(@hashtable.not_nil!.toString()).not_nil!.toString(), self, commonStrings.not_nil!.jf_INIT)
        self.setInitialized(true)
    end
    

    def initImageCache(imageCache : ImageCache?, level : Int) : Nil
        level = level.to_i32!
    end
    

    def add(resource : String, animationInterfaceFactoryInterface : BasicAnimationInterfaceFactoryInterface?) : Nil
        if @hashtable.not_nil!.containsKey(resource)
            raise (JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Resource Already Created: ").not_nil!.append(resource).not_nil!.toString())).not_nil!
        end
        @hashtable.not_nil!.put(resource, animationInterfaceFactoryInterface)
    end
    

    def getBasicAnimationInterfaceFactoryInstance(resource : String) : BasicAnimationInterfaceFactoryInterface?
        basicAnimationInterfaceFactoryInterfaceCanBeNull : JAny = @hashtable.not_nil!.get(resource)
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull).nil?
            return NullAnimationFactory.jst_NULL_NOT_FOR_USE_ANIMATION_FACTORY
        end
        return JR.cast(basicAnimationInterfaceFactoryInterfaceCanBeNull, BasicAnimationInterfaceFactoryInterface)
    end
    

    def getRectangle(resource : String) : Rectangle?
        rectangleCanBeNull : JAny = @rectangleHashtable.not_nil!.get(resource)
        if (rectangleCanBeNull).nil?
            return RectangleFactory.jst_SINGLETON
        end
        return JR.cast(rectangleCanBeNull, Rectangle)
    end
    

    def addRectangle(resource : String, rectangle : Rectangle?) : Nil
        @rectangleHashtable.not_nil!.put(resource, rectangle)
    end
    

    def getRectangleArrayOfArrays(resource : String) : Array(Array(Rectangle?)?)?
        valueCanBeNull : JAny = @rectangleArrayOfArraysHashtable.not_nil!.get(resource)
        if !(valueCanBeNull).nil?
            rectangleArrayOfArrays : Array(Array(Rectangle?)?)? = JR.unbox(valueCanBeNull, Array(Array(Rectangle?)?))
            return rectangleArrayOfArrays
        else
            return RectangleFactory.jst_ARRAY_OF_ARRAYS
        end
        return nil
    end
    

    def addRectangleArrayOfArrays(resource : String, rectangleArrayOfArrays : Array(Array(Rectangle?)?)?) : Nil
        @rectangleArrayOfArraysHashtable.not_nil!.put(resource, JR.box(rectangleArrayOfArrays))
    end
    

    def isFeature : Bool
        return false
    end
    

    def isLoadingLevel(level : Int) : Bool
        level = level.to_i32!
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel()
            return true
        else
            return false
        end
        return false
    end
    

    def toString : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(JR.jclass(self)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SEMICOLON).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.append(@name).not_nil!.toString()
    end
    

    def getHashtable : ABHashtable?
        return @hashtable
    end
    

    def getRectangleHashtable : ABHashtable?
        return @rectangleHashtable
    end
    

    def getRectangleArrayOfArraysHashtable : ABHashtable?
        return @rectangleArrayOfArraysHashtable
    end
    

    def setInitialized(initialized : Bool) : Nil
        @initialized = initialized
    end
    

    def isInitialized : Bool
        return @initialized
    end
end


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
# package org.allbinary.input.motion.button

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory < BaseResourceAnimationInterfaceFactoryInterfaceFactory
    

    def self.createFactory : TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory?
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new.jinit_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory("TouchButton Animations")
    end
    

    def jinit_TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory(name : String) : self
        jinit_BaseResourceAnimationInterfaceFactoryInterfaceFactory(name, StdUtil.getInstance().not_nil!.createHashtable(), StdUtil.getInstance().not_nil!.createHashtable(), StdUtil.getInstance().not_nil!.createHashtable())
        self
    end
    

    def init(level : Int) : Nil
        level = level.to_i32!
        self.initImageCache(ImageCacheFactory.getInstance(), level)
    end
    

    def initImageCache(imageCache : ImageCache?, level : Int) : Nil
        level = level.to_i32!
        if self.isInitialized()
            return
        end
        portion : Int32 = 140
        loadingString : String = StringMaker.new.jinit_StringMaker().not_nil!.append(self.toString()).not_nil!.append(" Loading: ").not_nil!.toString()
        index : Int32 = 0
        progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        touchButtonBlankResource : TouchButtonResource? = TouchButtonBlankResource.getInstance()
        touchButtonGenericActionResource : TouchButtonResource? = TouchButtonGenericActionResource.getInstance()
        touchButtonStartResource : TouchButtonResource? = TouchButtonStartResource.getInstance()
        touchButtonUpResource : TouchButtonResource? = TouchButtonUpResource.getInstance()
        touchButtonDownResource : TouchButtonResource? = TouchButtonDownResource.getInstance()
        touchButtonTurnLeftResource : TouchButtonResource? = TouchButtonTurnLeftResource.getInstance()
        touchButtonTurnRightResource : TouchButtonResource? = TouchButtonTurnRightResource.getInstance()
        touchButtonStrafeLeftResource : TouchButtonResource? = TouchButtonStrafeLeftResource.getInstance()
        touchButtonStrafeRightResource : TouchButtonResource? = TouchButtonStrafeRightResource.getInstance()
        touchButtonBlankResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonBlankResource.not_nil!.jf_RESOURCE)
        touchButtonGenericActionResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonGenericActionResource.not_nil!.jf_RESOURCE)
        touchButtonStartResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonStartResource.not_nil!.jf_RESOURCE)
        touchButtonUpResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonUpResource.not_nil!.jf_RESOURCE)
        touchButtonDownResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonDownResource.not_nil!.jf_RESOURCE)
        touchButtonTurnLeftResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonTurnLeftResource.not_nil!.jf_RESOURCE)
        touchButtonTurnRightResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonTurnRightResource.not_nil!.jf_RESOURCE)
        touchButtonStrafeLeftResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonStrafeLeftResource.not_nil!.jf_RESOURCE)
        touchButtonStrafeRightResourceImage : Image? = imageCache.not_nil!.getWithKey(touchButtonStrafeRightResource.not_nil!.jf_RESOURCE)
        nullAnimationFactory : NullAnimationFactory? = NullAnimationFactory.getFactoryInstance()
        if OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance().not_nil!.isOverScan()
            imageCache.not_nil!.getWithKey(TouchButtonStartResource.getInstance().not_nil!.jf_HINT)
        end
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil : ImageCompleteUtil? = ImageCompleteUtil.getInstance()
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonBlankResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonBlankResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonGenericActionResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonGenericActionResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonStartResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()))
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonUpResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonUpResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonDownResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonDownResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonTurnLeftResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnLeftResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonTurnRightResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonTurnRightResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonStrafeLeftResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeLeftResource.not_nil!.jf_HINT, nullAnimationFactory)
        progressCanvas.not_nil!.addPortion(portion, loadingString, ((index &+= 1) &- 1))
        imageCompleteUtil.not_nil!.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.not_nil!.jf_RESOURCE)
        self.add(touchButtonStrafeRightResource.not_nil!.jf_RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()))
        self.add(touchButtonStrafeRightResource.not_nil!.jf_HINT, nullAnimationFactory)
        if OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance().not_nil!.isOverScan()
            touchButtonStartHintResource : Image? = imageCache.not_nil!.getWithKey(TouchButtonStartResource.getInstance().not_nil!.jf_HINT)
            self.add(touchButtonStartResource.not_nil!.jf_HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()))
        else
            self.add(touchButtonStartResource.not_nil!.jf_HINT, nullAnimationFactory)
        end
        init(level)
    end
    

    def isLoadingLevel(level : Int) : Bool
        level = level.to_i32!
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_TOUCH.not_nil!.getLevel()
            return true
        else
            return super(level)
        end
        return false
    end
    

    def isFeature : Bool
        if !Features.getInstance().not_nil!.isDefault(OpenGLFeatureFactory.getInstance().not_nil!.jf_OPENGL)
            return true
        else
            return false
        end
        return false
    end
end


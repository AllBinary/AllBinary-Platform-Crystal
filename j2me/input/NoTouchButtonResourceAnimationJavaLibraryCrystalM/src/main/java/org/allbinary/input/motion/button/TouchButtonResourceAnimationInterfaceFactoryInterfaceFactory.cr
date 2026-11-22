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


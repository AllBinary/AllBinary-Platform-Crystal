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
# package org.allbinary.animation.image

class ImageArraySingletonAnimationInterfaceFactory < SingletonAnimationInterfaceFactory
    

    def jinit_ImageArraySingletonAnimationInterfaceFactory(imageArray : Array(Image?)?) : self
        jinit_SingletonAnimationInterfaceFactory(ImageArrayAnimation.new.jinit_ImageArrayAnimation(imageArray, AnimationBehavior.getInstance()))
        self
    end
end


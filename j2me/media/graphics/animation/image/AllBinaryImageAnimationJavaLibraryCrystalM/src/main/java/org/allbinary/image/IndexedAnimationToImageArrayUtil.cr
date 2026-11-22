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
# package org.allbinary.image

class IndexedAnimationToImageArrayUtil < JObject
    

    def self.getInstance(width : Int, height : Int, sequentialAnimationInterface : IndexedAnimation?) : Array(Image?)?
        width = width.to_i32!
        height = height.to_i32!
        size : Int32 = sequentialAnimationInterface.not_nil!.getAnimationSize()
        imageArray : Array(Image?)? = Array(Image?).new(size, nil)
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            sequentialAnimationInterface.not_nil!.setFrame(index)
            imageArray.not_nil![index] = AnimationFrameToImageUtil.getInstance().not_nil!.getInstanceWH(width, height, sequentialAnimationInterface)
        end
        return imageArray
    end

    def jinit_IndexedAnimationToImageArrayUtil : self
        self
    end
end


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
# package org.allbinary.animation.vector

class LineAnimationFactory < JObject
    include AnimationInterfaceFactoryInterface
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    

    def jinit_LineAnimationFactory(basicColor : BasicColor?) : self
        @basicColor = basicColor
        self
    end
    

    def getInstance(instanceId : Int) : Animation?
        instanceId = instanceId.to_i32!
        return LineAnimation.new.jinit_LineAnimation(@basicColor)
    end
    

    def setInitialScale(scaleProperties : ScaleProperties?) : Nil
    end
end


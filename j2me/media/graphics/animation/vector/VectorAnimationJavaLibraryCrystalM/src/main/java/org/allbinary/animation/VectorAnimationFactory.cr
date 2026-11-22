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

class VectorAnimationFactory < JObject
    include VectorAnimationFactoryInterface

    def jinit_VectorAnimationFactory : self
        self
    end
    

    def getInstance(points : Array(Array(Array(Int32)?)?)?, basicColor : BasicColor?) : VectorAnimation?
        return VectorAnimation.new.jinit_VectorAnimation(points, basicColor, AnimationBehavior.getInstance())
    end
end


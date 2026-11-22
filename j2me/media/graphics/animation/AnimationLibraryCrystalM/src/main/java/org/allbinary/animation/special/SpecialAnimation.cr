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
# package org.allbinary.animation.special

class SpecialAnimation < IndexedAnimation
    include SpecialAnimationInterface

    @@jst_NULL_SPECIAL_ANIMATION : SpecialAnimation? = nil

    def self.jst_NULL_SPECIAL_ANIMATION : SpecialAnimation?
        jclinit
        @@jst_NULL_SPECIAL_ANIMATION
    end

    def self.jst_NULL_SPECIAL_ANIMATION=(value : SpecialAnimation?) : SpecialAnimation?
        jclinit
        @@jst_NULL_SPECIAL_ANIMATION = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_SPECIAL_ANIMATION = SpecialAnimation.new.jinit_SpecialAnimation(IndexedAnimationBehavior.new.jinit_IndexedAnimationBehavior(1, 250))
    end
    

    def self.getInstance : SpecialAnimation?
        return SpecialAnimation.jst_NULL_SPECIAL_ANIMATION
    end
    

    def jinit_SpecialAnimation(animationBehavior : AnimationBehavior?) : self
        jinit_IndexedAnimation(animationBehavior)
        self
    end
    

    def nextFrame : Nil
        indexedAnimationBehavior : IndexedAnimationBehavior? = (JR.cast(@animationBehaviorP, IndexedAnimationBehavior))
        indexedAnimationBehavior.not_nil!.jf_loopIndex &+= 1
    end
    

    def setLastFrame : Nil
    end
    

    def isComplete : Bool
        return false
    end
    

    def open : Nil
    end
    

    def close : Nil
    end
    

    def process : Nil
    end
end


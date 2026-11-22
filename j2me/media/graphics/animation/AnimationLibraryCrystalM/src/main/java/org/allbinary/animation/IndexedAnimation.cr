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

class IndexedAnimation < Animation
    include IndexedAnimationInterface
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
    @animationBehaviorP : AnimationBehavior? = nil

    def jf_animationBehaviorP : AnimationBehavior?
        @animationBehaviorP
    end

    def jf_animationBehaviorP=(value : AnimationBehavior?) : AnimationBehavior?
        @animationBehaviorP = value
    end

    # Java field initializers run after the super constructor
    def jfields_IndexedAnimation : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    end
    

    def jinit_IndexedAnimation(animationBehavior : AnimationBehavior?) : self
        jinit_Animation()
        jfields_IndexedAnimation()
        @animationBehaviorP = animationBehavior
        self
    end
    

    def getAnimationBehavior : AnimationBehavior?
        return @animationBehaviorP
    end
    

    def reset : Nil
        @animationBehaviorP.not_nil!.reset()
        self.setFrame(0)
    end
    

    def setFrame(index : Int) : Nil
        index = index.to_i32!
    end
    

    def getFrame : Int32
        return 0
    end
    

    def getAnimationSize : Int32
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def getSize : Int32
        return 0
    end
    

    def previousFrame : Nil
    end
    

    def isLastFrame : Bool
        if self.getFrame() == self.getSize() &- 1
            return true
        else
            return false
        end
        return false
    end
    

    def setSequence(sequence : Array(Int32)?) : Nil
    end
    

    def getSequence : Array(Int32)?
        return PrimitiveIntUtil.getArrayInstance()
    end
    

    def setState(indexedAnimation : IndexedAnimation?) : Nil
        self.setFrame(indexedAnimation.not_nil!.getFrame())
        self.setDx(indexedAnimation.not_nil!.getDx())
        self.setDy(indexedAnimation.not_nil!.getDy())
    end
    

    def getWidth : Int32
        return 0
    end
    

    def getHeight : Int32
        return 0
    end
end


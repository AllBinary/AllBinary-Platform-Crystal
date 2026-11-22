# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.animation.caption

class CaptionAnimationHelperBase < Animation

    @@jst_INSTANCE : CaptionAnimationHelperBase? = nil

    def self.jst_INSTANCE : CaptionAnimationHelperBase?
        jclinit
        @@jst_INSTANCE
    end

    def self.jst_INSTANCE=(value : CaptionAnimationHelperBase?) : CaptionAnimationHelperBase?
        jclinit
        @@jst_INSTANCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_INSTANCE = CaptionAnimationHelperBase.new.jinit_CaptionAnimationHelperBase()
    end

    def jinit_CaptionAnimationHelperBase : self
        jinit_Animation()
        self
    end
    

    def isShowing : Bool
        return false
    end
    

    def tick : Nil
    end
    

    def update(message : String, basicColor : BasicColor?) : Nil
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
end


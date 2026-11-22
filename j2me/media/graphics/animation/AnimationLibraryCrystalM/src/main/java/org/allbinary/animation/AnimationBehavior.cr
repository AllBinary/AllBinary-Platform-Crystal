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
# package org.allbinary.animation

class AnimationBehavior < JObject

    @@jst_instance : AnimationBehavior? = nil

    def self.jst_instance : AnimationBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnimationBehavior?) : AnimationBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnimationBehavior.new.jinit_AnimationBehavior()
    end
    

    def self.getInstance : AnimationBehavior?
        return AnimationBehavior.jst_instance
    end

    def jinit_AnimationBehavior : self
        self
    end
    

    def reset : Nil
    end
end


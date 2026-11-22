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

class AnimationBehaviorFactory < JObject

    @@jst_instance : AnimationBehaviorFactory? = nil

    def self.jst_instance : AnimationBehaviorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AnimationBehaviorFactory?) : AnimationBehaviorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AnimationBehaviorFactory.new.jinit_AnimationBehaviorFactory()
    end
    

    def self.getInstance : AnimationBehaviorFactory?
        return AnimationBehaviorFactory.jst_instance
    end

    def jinit_AnimationBehaviorFactory : self
        self
    end
    

    def getOrCreateInstance : AnimationBehavior?
        return AnimationBehavior.getInstance()
    end
end


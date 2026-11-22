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
# package org.allbinary.game.physics.velocity

class NoDragVelocityBehavior < VelocityBehaviorBase

    @@jst_instance : NoDragVelocityBehavior? = nil

    def self.jst_instance : NoDragVelocityBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoDragVelocityBehavior?) : NoDragVelocityBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoDragVelocityBehavior.new.jinit_NoDragVelocityBehavior()
    end

    def jinit_NoDragVelocityBehavior : self
        jinit_VelocityBehaviorBase()
        self
    end
end


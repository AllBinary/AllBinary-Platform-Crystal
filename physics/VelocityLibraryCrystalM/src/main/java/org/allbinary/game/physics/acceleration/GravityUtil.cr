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
# package org.allbinary.game.physics.acceleration

class GravityUtil < JObject
    @j_GAME_GRAVITY_VELOCITY : Int32 = 0

    def jf_GAME_GRAVITY_VELOCITY : Int32
        @j_GAME_GRAVITY_VELOCITY
    end

    def jf_GAME_GRAVITY_VELOCITY=(value : Int32) : Int32
        @j_GAME_GRAVITY_VELOCITY = value
    end
    @j_MAX_GAME_VELOCITY : Int32 = 0

    def jf_MAX_GAME_VELOCITY : Int32
        @j_MAX_GAME_VELOCITY
    end

    def jf_MAX_GAME_VELOCITY=(value : Int32) : Int32
        @j_MAX_GAME_VELOCITY = value
    end

    @@jst_instance : GravityUtil? = nil

    def self.jst_instance : GravityUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GravityUtil?) : GravityUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GravityUtil.new.jinit_GravityUtil()
    end
    

    def self.getInstance : GravityUtil?
        return GravityUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GravityUtil : Nil
    @j_GAME_GRAVITY_VELOCITY = 1800
    @j_MAX_GAME_VELOCITY = 18000
    end

    def jinit_GravityUtil : self
        jfields_GravityUtil()
        self
    end
    

    def process(velocityProperties : BasicVelocityProperties?, customGravity : Int) : Nil
        customGravity = customGravity.to_i32!
        velocityProperties.not_nil!.getVelocityYBasicDecimalP().not_nil!.addint(customGravity)
    end
end


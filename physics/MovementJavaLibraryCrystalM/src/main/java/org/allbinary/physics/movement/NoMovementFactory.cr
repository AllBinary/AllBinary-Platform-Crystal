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
# package org.allbinary.physics.movement

class NoMovementFactory < JObject
    @movement : Movement? = nil

    def jf_movement : Movement?
        @movement
    end

    def jf_movement=(value : Movement?) : Movement?
        @movement = value
    end

    @@jst_instance : NoMovementFactory? = nil

    def self.jst_instance : NoMovementFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoMovementFactory?) : NoMovementFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoMovementFactory.new.jinit_NoMovementFactory()
    end
    

    def self.getInstance : NoMovementFactory?
        return NoMovementFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_NoMovementFactory : Nil
    @movement = Movement.new.jinit_Movement()
    end

    def jinit_NoMovementFactory : self
        jfields_NoMovementFactory()
        self
    end
    

    def getMovmentInstance : Movement?
        return @movement
    end
end


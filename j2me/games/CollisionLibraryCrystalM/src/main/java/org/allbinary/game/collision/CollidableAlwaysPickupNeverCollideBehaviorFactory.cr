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
# package org.allbinary.game.collision

class CollidableAlwaysPickupNeverCollideBehaviorFactory < CollidableBaseBehaviorFactory
    @instance : CollidableAlwaysPickupNeverCollideBehavior? = nil

    def jf_instance : CollidableAlwaysPickupNeverCollideBehavior?
        @instance
    end

    def jf_instance=(value : CollidableAlwaysPickupNeverCollideBehavior?) : CollidableAlwaysPickupNeverCollideBehavior?
        @instance = value
    end

    @@jst_instanceC : CollidableAlwaysPickupNeverCollideBehaviorFactory? = nil

    def self.jst_instanceC : CollidableAlwaysPickupNeverCollideBehaviorFactory?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : CollidableAlwaysPickupNeverCollideBehaviorFactory?) : CollidableAlwaysPickupNeverCollideBehaviorFactory?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = CollidableAlwaysPickupNeverCollideBehaviorFactory.new.jinit_CollidableAlwaysPickupNeverCollideBehaviorFactory()
    end
    

    def self.getInstance : CollidableAlwaysPickupNeverCollideBehaviorFactory?
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.jst_instanceC
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableAlwaysPickupNeverCollideBehaviorFactory : Nil
    @instance = CollidableAlwaysPickupNeverCollideBehavior.new.jinit_CollidableAlwaysPickupNeverCollideBehavior()
    end

    def jinit_CollidableAlwaysPickupNeverCollideBehaviorFactory : self
        jinit_CollidableBaseBehaviorFactory()
        jfields_CollidableAlwaysPickupNeverCollideBehaviorFactory()
        self
    end
    

    def createBehavior : CollidableBaseBehavior?
        return @instance
    end
end


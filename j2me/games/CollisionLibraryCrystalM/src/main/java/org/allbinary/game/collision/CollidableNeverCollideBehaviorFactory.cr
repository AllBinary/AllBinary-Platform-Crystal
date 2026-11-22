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

class CollidableNeverCollideBehaviorFactory < CollidableBaseBehaviorFactory
    @instance : CollidableNeverCollideBehavior? = nil

    def jf_instance : CollidableNeverCollideBehavior?
        @instance
    end

    def jf_instance=(value : CollidableNeverCollideBehavior?) : CollidableNeverCollideBehavior?
        @instance = value
    end

    @@jst_instanceC : CollidableNeverCollideBehaviorFactory? = nil

    def self.jst_instanceC : CollidableNeverCollideBehaviorFactory?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : CollidableNeverCollideBehaviorFactory?) : CollidableNeverCollideBehaviorFactory?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = CollidableNeverCollideBehaviorFactory.new.jinit_CollidableNeverCollideBehaviorFactory()
    end
    

    def self.getInstance : CollidableNeverCollideBehaviorFactory?
        return CollidableNeverCollideBehaviorFactory.jst_instanceC
    end

    # Java field initializers run after the super constructor
    def jfields_CollidableNeverCollideBehaviorFactory : Nil
    @instance = CollidableNeverCollideBehavior.new.jinit_CollidableNeverCollideBehavior(false)
    end

    def jinit_CollidableNeverCollideBehaviorFactory : self
        jinit_CollidableBaseBehaviorFactory()
        jfields_CollidableNeverCollideBehaviorFactory()
        self
    end
    

    def createBehavior : CollidableBaseBehavior?
        return @instance
    end
end


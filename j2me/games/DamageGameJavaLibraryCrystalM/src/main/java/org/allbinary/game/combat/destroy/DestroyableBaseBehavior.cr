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
# package org.allbinary.game.combat.destroy

class DestroyableBaseBehavior < JObject
    include DestroyableInterface

    @@jst_instance : DestroyableBaseBehavior? = nil

    def self.jst_instance : DestroyableBaseBehavior?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DestroyableBaseBehavior?) : DestroyableBaseBehavior?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DestroyableBaseBehavior.new.jinit_DestroyableBaseBehavior()
    end
    

    def self.getInstance : DestroyableBaseBehavior?
        return DestroyableBaseBehavior.jst_instance
    end

    def jinit_DestroyableBaseBehavior : self
        self
    end
    

    def getName : String
        return JR.jclass(self)
    end
    

    def isDestroyed : Bool
        raise (JException.new.jinit_JException(CommonStrings.getInstance().not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
    

    def setDestroyed(destroyed : Bool) : Nil
    end
end


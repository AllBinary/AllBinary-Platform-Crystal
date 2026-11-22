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
# package org.allbinary.game.input

class PlatformKeyFactory < JObject

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : PlatformKeyFactory?
        if PlatformKeyFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            PlatformKeyFactory.jst_instance = PlatformKeyFactory.new.jinit_PlatformKeyFactory()
        end
        return JR.cast(PlatformKeyFactory.jst_instance, PlatformKeyFactory)
    end

    def jinit_PlatformKeyFactory : self
        self
    end
    

    def getString(keyCode : Int) : String
        keyCode = keyCode.to_i32!
        return PCGameKey.getString(keyCode)
    end
    

    def isSubmission(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isSubmission(input)
    end
    

    def isDelete(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isDelete(input)
    end
    

    def isBackSpace(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isBackSpace(input)
    end
    

    def isUp(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isUp(input)
    end
    

    def isDown(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isDown(input)
    end
    

    def isEnter(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isEnter(input)
    end
    

    def isLeft(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isLeft(input)
    end
    

    def isRight(input : Input?) : Bool
        return PCKeyFactory.getInstance().not_nil!.isRight(input)
    end
end


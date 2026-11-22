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
# package org.allbinary.game.layer

class SpriteFactory < JObject
    include SpriteFactoryInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : SpriteFactory? = nil

    def self.jst_instance : SpriteFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : SpriteFactory?) : SpriteFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = SpriteFactory.new.jinit_SpriteFactory()
    end
    

    def self.getInstance : SpriteFactory?
        return SpriteFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_SpriteFactory : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_SpriteFactory : self
        jfields_SpriteFactory()
        self
    end
    

    def createSprite(image : Image?, frameWidth : Int, frameHeight : Int) : Sprite?
        frameWidth = frameWidth.to_i32!
        frameHeight = frameHeight.to_i32!
        return Sprite.new.jinit_Sprite(image, frameWidth, frameHeight)
    end
end


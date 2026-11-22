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
# package org.allbinary.graphics.displayable

class GameTickDisplayInfoSingleton < JObject
    @displayInfoSingleton : DisplayInfoSingleton? = nil

    def jf_displayInfoSingleton : DisplayInfoSingleton?
        @displayInfoSingleton
    end

    def jf_displayInfoSingleton=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfoSingleton = value
    end
    @lastWidth : Int32 = 0

    def jf_lastWidth : Int32
        @lastWidth
    end

    def jf_lastWidth=(value : Int32) : Int32
        @lastWidth = value
    end
    @lastHeight : Int32 = 0

    def jf_lastHeight : Int32
        @lastHeight
    end

    def jf_lastHeight=(value : Int32) : Int32
        @lastHeight = value
    end
    @lastHalfWidth : Int32 = 0

    def jf_lastHalfWidth : Int32
        @lastHalfWidth
    end

    def jf_lastHalfWidth=(value : Int32) : Int32
        @lastHalfWidth = value
    end
    @lastHalfHeight : Int32 = 0

    def jf_lastHalfHeight : Int32
        @lastHalfHeight
    end

    def jf_lastHalfHeight=(value : Int32) : Int32
        @lastHalfHeight = value
    end

    @@jst_instance : GameTickDisplayInfoSingleton? = nil

    def self.jst_instance : GameTickDisplayInfoSingleton?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameTickDisplayInfoSingleton?) : GameTickDisplayInfoSingleton?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameTickDisplayInfoSingleton.new.jinit_GameTickDisplayInfoSingleton()
    end
    

    def self.getInstance : GameTickDisplayInfoSingleton?
        return GameTickDisplayInfoSingleton.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameTickDisplayInfoSingleton : Nil
    @displayInfoSingleton = DisplayInfoSingleton.getInstance()
    @lastWidth = @displayInfoSingleton.not_nil!.getLastWidth()
    @lastHeight = @displayInfoSingleton.not_nil!.getLastHeight()
    @lastHalfWidth = @displayInfoSingleton.not_nil!.getLastHalfWidth()
    @lastHalfHeight = @displayInfoSingleton.not_nil!.getLastHalfHeight()
    end

    def jinit_GameTickDisplayInfoSingleton : self
        jfields_GameTickDisplayInfoSingleton()
        self
    end
    

    def update : Nil
        @lastWidth = @displayInfoSingleton.not_nil!.getLastWidth()
        @lastHeight = @displayInfoSingleton.not_nil!.getLastHeight()
        @lastHalfWidth = @displayInfoSingleton.not_nil!.getLastHalfWidth()
        @lastHalfHeight = @displayInfoSingleton.not_nil!.getLastHalfHeight()
    end
    

    def getLastWidth : Int32
        return @lastWidth
    end
    

    def getLastHeight : Int32
        return @lastHeight
    end
    

    def getLastHalfWidth : Int32
        return @lastHalfWidth
    end
    

    def getLastHalfHeight : Int32
        return @lastHalfHeight
    end
end


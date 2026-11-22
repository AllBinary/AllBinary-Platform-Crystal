# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.displayable.canvas

class NullAllBinaryGameCanvas < JObject
    include AllBinaryGameCanvasInterface

    @@jst_NULL_ALLBINARY_GAME_CANVAS : NullAllBinaryGameCanvas? = nil

    def self.jst_NULL_ALLBINARY_GAME_CANVAS : NullAllBinaryGameCanvas?
        jclinit
        @@jst_NULL_ALLBINARY_GAME_CANVAS
    end

    def self.jst_NULL_ALLBINARY_GAME_CANVAS=(value : NullAllBinaryGameCanvas?) : NullAllBinaryGameCanvas?
        jclinit
        @@jst_NULL_ALLBINARY_GAME_CANVAS = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ALLBINARY_GAME_CANVAS = NullAllBinaryGameCanvas.new.jinit_NullAllBinaryGameCanvas()
    end

    def jinit_NullAllBinaryGameCanvas : self
        self
    end
    

    def getLayerManager : AllBinaryGameLayerManager?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def addCommand(cmd : Command?) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getHeight : Int32
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def getWidth : Int32
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def removeCommand(cmd : Command?) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def setCommandListener(l : CommandListener?) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
end


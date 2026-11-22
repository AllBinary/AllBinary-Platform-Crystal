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

class GameInputProcessor < JObject

    @@jst_instance : GameInputProcessor? = nil

    def self.jst_instance : GameInputProcessor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameInputProcessor?) : GameInputProcessor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameInputProcessor.new.jinit_GameInputProcessor()
    end
    

    def self.getInstance : GameInputProcessor?
        return GameInputProcessor.jst_instance
    end
    

    def jinit_GameInputProcessor : self
        self
    end
    

    def processEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def processReleasedEvent(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?) : Nil
    end
    

    def processAnalog(allbinaryLayerManager : AllBinaryLayerManager?, gameKeyEvent : GameKeyEvent?, analogValue : Int) : Nil
        analogValue = analogValue.to_i32!
    end
    

    def process(allbinaryLayerManager : AllBinaryLayerManager?, keyAsInteger : JInteger?) : Nil
    end
    

    def processReleased(allbinaryLayerManager : AllBinaryLayerManager?, keyAsInteger : JInteger?) : Nil
    end
end


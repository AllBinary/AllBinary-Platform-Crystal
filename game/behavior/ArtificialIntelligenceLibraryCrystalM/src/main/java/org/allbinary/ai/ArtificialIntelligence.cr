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
# package org.allbinary.ai

class ArtificialIntelligence < JObject
    include ArtificialIntelligenceInterface

    def self.jst_AI_ID : Int32
        2
    end

    @@jst_instance : ArtificialIntelligence? = nil

    def self.jst_instance : ArtificialIntelligence?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ArtificialIntelligence?) : ArtificialIntelligence?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        
        @@jst_instance = ArtificialIntelligence.new.jinit_ArtificialIntelligence()
    end
    

    def self.getInstance : ArtificialIntelligence?
        return ArtificialIntelligence.jst_instance
    end
    

    def jinit_ArtificialIntelligence : self
        self
    end
    

    def processAI(layerManager : AllBinaryLayerManager?) : Nil
    end
    

    def getId : Int32
        return 1
    end
end


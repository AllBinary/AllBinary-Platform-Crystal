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
# package org.allbinary.game.ag.ai

class NullAIFactory < JObject
    include ArtificialIntelligenceInterfaceFactoryInterface

    @@jst_NULL_AI : NullAI? = nil

    def self.jst_NULL_AI : NullAI?
        jclinit
        @@jst_NULL_AI
    end

    def self.jst_NULL_AI=(value : NullAI?) : NullAI?
        jclinit
        @@jst_NULL_AI = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_AI = NullAI.new.jinit_NullAI()
    end
    

    def self.getInstance : ArtificialIntelligenceInterface?
        return JR.cast(NullAIFactory.jst_NULL_AI, ArtificialIntelligenceInterface)
    end

    def jinit_NullAIFactory : self
        self
    end
    

    def getInstance(hashtable : ABHashtable?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        return JR.cast(NullAIFactory.jst_NULL_AI, ArtificialIntelligenceInterface)
    end
end


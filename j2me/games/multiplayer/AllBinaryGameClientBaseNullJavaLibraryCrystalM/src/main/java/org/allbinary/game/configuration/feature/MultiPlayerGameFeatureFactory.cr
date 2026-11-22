# Generated Code Do Not Modify
# package org.allbinary.game.configuration.feature

class MultiPlayerGameFeatureFactory < JObject

    @@jst_instance : MultiPlayerGameFeatureFactory? = nil

    def self.jst_instance : MultiPlayerGameFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : MultiPlayerGameFeatureFactory?) : MultiPlayerGameFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = MultiPlayerGameFeatureFactory.new.jinit_MultiPlayerGameFeatureFactory()
    end
    

    def self.getInstance : MultiPlayerGameFeatureFactory?
        return MultiPlayerGameFeatureFactory.jst_instance
    end
    

    def jinit_MultiPlayerGameFeatureFactory : self
        self
    end
    

    def addCommands(anyType : JAny) : Nil
        gameCommandsFactory : GameCommandsFactory? = GameCommandsFactory.getInstance()
        canvas : Canvas? = JR.cast(anyType, Canvas)
        canvas.not_nil!.addCommand(gameCommandsFactory.not_nil!.jf_QUIT_COMMAND)
    end
end


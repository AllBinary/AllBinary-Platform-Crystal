# Generated Code Do Not Modify
# package javax.microedition.lcdui

class NullCommandListener < JObject
    include CommandListener

    @@jst_NULL_COMMAND_LISTENER : NullCommandListener? = nil

    def self.jst_NULL_COMMAND_LISTENER : NullCommandListener?
        jclinit
        @@jst_NULL_COMMAND_LISTENER
    end

    def self.jst_NULL_COMMAND_LISTENER=(value : NullCommandListener?) : NullCommandListener?
        jclinit
        @@jst_NULL_COMMAND_LISTENER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_COMMAND_LISTENER = NullCommandListener.new.jinit_NullCommandListener()
    end

    def jinit_NullCommandListener : self
        self
    end
    

    def commandAction(c : Command?, d : Displayable?) : Nil
    end
end


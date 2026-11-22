# Generated Code Do Not Modify
# package javax.microedition.lcdui

class NullCanvas < Canvas

    @@jst_NULL_CANVAS : NullCanvas? = nil

    def self.jst_NULL_CANVAS : NullCanvas?
        jclinit
        @@jst_NULL_CANVAS
    end

    def self.jst_NULL_CANVAS=(value : NullCanvas?) : NullCanvas?
        jclinit
        @@jst_NULL_CANVAS = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_CANVAS = NullCanvas.new.jinit_NullCanvas()
    end
    

    def jinit_NullCanvas : self
        jinit_Canvas()
        self
    end
    

    def setFullScreenMode(mode : Bool) : Nil
    end
    

    def sizeChanged(w : Int, h : Int) : Nil
        w = w.to_i32!
        h = h.to_i32!
    end
    

    def getCommandStack : JStack?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def isCommand(command : Command?) : Bool
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def addCommand(command : Command?) : Nil
    end
    

    def removeCommand(command : Command?) : Nil
    end
    

    def removeAllCommands : Nil
    end
    

    def setCommandListener(l : CommandListener?) : Nil
    end
    

    def getCustomCommandListener : CommandListener?
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def isPaused : Bool
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def removePauseCommand : Nil
    end
    

    def pause : Nil
    end
    

    def unPause : Nil
    end
    

    def process : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def destroy : Nil
    end
    

    def setPaused(isPaused : Bool) : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def pointerDragged(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def pointerPressed(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
    

    def pointerReleased(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
    end
end


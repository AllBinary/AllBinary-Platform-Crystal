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
# package org.allbinary.graphics.displayable

class MyCanvas < Canvas
    include DisplayableInterface
    include MyCommandInterface
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @canvasStrings : CanvasStrings? = nil

    def jf_canvasStrings : CanvasStrings?
        @canvasStrings
    end

    def jf_canvasStrings=(value : CanvasStrings?) : CanvasStrings?
        @canvasStrings = value
    end
    @stringUtil : StringUtil? = nil

    def jf_stringUtil : StringUtil?
        @stringUtil
    end

    def jf_stringUtil=(value : StringUtil?) : StringUtil?
        @stringUtil = value
    end
    @displayInfo : DisplayInfoSingleton? = nil

    def jf_displayInfo : DisplayInfoSingleton?
        @displayInfo
    end

    def jf_displayInfo=(value : DisplayInfoSingleton?) : DisplayInfoSingleton?
        @displayInfo = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @childNameList : BasicArrayList? = nil

    def jf_childNameList : BasicArrayList?
        @childNameList
    end

    def jf_childNameList=(value : BasicArrayList?) : BasicArrayList?
        @childNameList = value
    end
    @commandStack : ABStack? = nil

    def jf_commandStack : ABStack?
        @commandStack
    end

    def jf_commandStack=(value : ABStack?) : ABStack?
        @commandStack = value
    end
    @commandListener : CommandListener? = nil

    def jf_commandListener : CommandListener?
        @commandListener
    end

    def jf_commandListener=(value : CommandListener?) : CommandListener?
        @commandListener = value
    end
    @paused : Bool = false

    def jf_paused : Bool
        @paused
    end

    def jf_paused=(value : Bool) : Bool
        @paused = value
    end
    @touchME : TouchJ2ME? = nil

    def jf_touchME : TouchJ2ME?
        @touchME
    end

    def jf_touchME=(value : TouchJ2ME?) : TouchJ2ME?
        @touchME = value
    end

    # Java field initializers run after the super constructor
    def jfields_MyCanvas : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @canvasStrings = CanvasStrings.getInstance()
    @stringUtil = StringUtil.getInstance()
    @displayInfo = DisplayInfoSingleton.getInstance()
    
    
    
    @commandListener = NullCommandListener.jst_NULL_COMMAND_LISTENER
    
    @touchME = TouchJ2ME.new.jinit_TouchJ2ME()
    end
    

    def jinit_MyCanvas(name : String, childNameList : BasicArrayList?) : self
        jinit_Canvas()
        jfields_MyCanvas()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_CONSTRUCTOR, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @displayInfo.not_nil!.update(self, @canvasStrings.not_nil!.jf_CONSTRUCTOR)
        @name = name
        @childNameList = childNameList
        @commandStack = StdUtil.getInstance().not_nil!.createStack()
        self
    end
    

    def getWidth : Int32
        return super()
    end
    

    def getHeight : Int32
        return super()
    end
    

    def setFullScreenMode(mode : Bool) : Nil
        super(mode)
        @displayInfo.not_nil!.update(self, @canvasStrings.not_nil!.jf_SET_FULL_SCREEN_MODE)
    end
    

    def sizeChanged(w : Int, h : Int) : Nil
        w = w.to_i32!
        h = h.to_i32!
        @displayInfo.not_nil!.update(self, @canvasStrings.not_nil!.jf_SIZE_CHANGED)
    end
    

    def getCommandStack : ABStack?
        return @commandStack
    end
    

    def isCommand(command : Command?) : Bool
        return @commandStack.not_nil!.contains(command)
    end
    

    def addCommand(command : Command?) : Nil
        if !@commandStack.not_nil!.contains(command)
            @commandStack.not_nil!.push(command)
            super(command)
        end
    end
    

    def removeCommand(command : Command?) : Nil
        @commandStack.not_nil!.removeElement(command)
        super(command)
    end
    

    def removeAllCommands : Nil
        size : Int32 = @commandStack.not_nil!.size()
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < size
            removeCommand(JR.cast(@commandStack.not_nil!.pop(), Command))
        end
    end
    

    def setCommandListener(l : CommandListener?) : Nil
        super(l)
        @commandListener = l
    end
    

    def getCustomCommandListener : CommandListener?
        return @commandListener
    end
    

    def isPaused : Bool
        return @paused
    end
    

    def removePauseCommand : Nil
        self.removeCommand(MyCommandsFactory.getInstance().not_nil!.jf_PAUSE_COMMAND)
    end
    

    def pause : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @canvasStrings.not_nil!.jf_PAUSE)
        self.removePauseCommand()
        self.addCommand(MyCommandsFactory.getInstance().not_nil!.jf_RESUME_COMMAND)
        self.setPaused(true)
    end
    

    def unPause : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @canvasStrings.not_nil!.jf_UN_PAUSE)
        self.removeCommand(MyCommandsFactory.getInstance().not_nil!.jf_RESUME_COMMAND)
        self.addCommand(MyCommandsFactory.getInstance().not_nil!.jf_PAUSE_COMMAND)
        self.setPaused(false)
    end
    

    def process : Nil
        @displayInfo.not_nil!.process()
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def draw(graphics : Graphics?) : Nil
    end
    

    def hasChild(displayable : MyCanvas?) : Bool
        return @childNameList.not_nil!.contains(displayable.not_nil!.jf_name)
    end
    

    def destroy : Nil
        @logUtil.not_nil!.putF("Destroyed MyCanvas", self, "destroy")
    end
    

    def setPaused(isPaused : Bool) : Nil
        @paused = isPaused
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def keyRepeatedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def keyReleasedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def pointerDragged(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @touchME.not_nil!.pointerDragged(x, y)
    end
    

    def pointerPressed(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @touchME.not_nil!.pointerPressed(x, y)
    end
    

    def pointerReleased(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @touchME.not_nil!.pointerReleased(x, y)
    end
    

    def nextSong(nextSongSound : Sound?, leftVolume : Int, rightVolume : Int) : Nil
        leftVolume = leftVolume.to_i32!
        rightVolume = rightVolume.to_i32!
    end
end


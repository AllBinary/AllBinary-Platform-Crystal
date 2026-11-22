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
# package org.allbinary.game.score.displayable

class HighScoreTextBox < CustomTextBox
    @virtualKeyboardEventHandler : VirtualKeyboardEventHandler? = nil

    def jf_virtualKeyboardEventHandler : VirtualKeyboardEventHandler?
        @virtualKeyboardEventHandler
    end

    def jf_virtualKeyboardEventHandler=(value : VirtualKeyboardEventHandler?) : VirtualKeyboardEventHandler?
        @virtualKeyboardEventHandler = value
    end
    @highScoreUtil : HighScoreUtil? = nil

    def jf_highScoreUtil : HighScoreUtil?
        @highScoreUtil
    end

    def jf_highScoreUtil=(value : HighScoreUtil?) : HighScoreUtil?
        @highScoreUtil = value
    end
    @pleaseWait : Paintable? = nil

    def jf_pleaseWait : Paintable?
        @pleaseWait
    end

    def jf_pleaseWait=(value : Paintable?) : Paintable?
        @pleaseWait = value
    end
    @paintable : Paintable? = nil

    def jf_paintable : Paintable?
        @paintable
    end

    def jf_paintable=(value : Paintable?) : Paintable?
        @paintable = value
    end
    @submitted : Bool = false

    def jf_submitted : Bool
        @submitted
    end

    def jf_submitted=(value : Bool) : Bool
        @submitted = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScoreTextBox : Nil
    @virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
    
    @pleaseWait = SimpleTextPaintable.new.jinit_SimpleTextPaintable(@commonStrings.not_nil!.jf_PLEASE_WAIT, BasicColorFactory.getInstance().not_nil!.jf_WHITE)
    @paintable = NullPaintable.getInstance()
    @submitted = false
    end
    

    def jinit_HighScoreTextBox(highScoresFactoryInterface : HighScoresFactoryInterface?, highScoresHelper : HighScoresHelperBaseInterface?, abeClientInformation : AbeClientInformationInterface?, gameInfo : GameInfo?, cmdListener : CommandListener?, name : String, highScore : HighScore?, backgrounBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        jinit_CustomTextBox(cmdListener, "New High Score Enter Name:", name, 12, TextField.jst_ANY, Font.getDefaultFont(), backgrounBasicColor, foregroundBasicColor)
        jfields_HighScoreTextBox()
        @highScoreUtil = HighScoreUtil.new.jinit_HighScoreUtil(highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore)
        operatingSystemInterface : GenericOperatingSystem? = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
        if operatingSystemInterface.not_nil!.isOverScan()
            username : String = InApplicationPurchaseFactory.getInstance().not_nil!.getUserName()
            self.getTextFieldItem().not_nil!.setString(username)
        end
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        self.removeAllCommands()
        PostGameCommandFactory.getInstance().not_nil!.addCommands(self)
        self.addCommand(HighScoreUtil.jst_SUBMIT_TEXTBOX_COMMAND)
        self.setCommandListener(cmdListener)
    end
    

    def open : Nil
        @virtualKeyboardEventHandler.not_nil!.open()
        @paintable = NullPaintable.getInstance()
        super()
    end
    

    def close : Nil
        @virtualKeyboardEventHandler.not_nil!.close()
        @paintable = @pleaseWait
        @repaintBehavior.not_nil!.onChangeRepaint(self)
        super()
        self.removeCommand(HighScoreUtil.jst_SUBMIT_TEXTBOX_COMMAND)
        self.update()
        if @submitted
            @highScoreUtil.not_nil!.saveHighScore()
        else
        end
        @paintable = NullPaintable.getInstance()
        @repaintBehavior.not_nil!.onChangeRepaint(self)
    end
    

    def update : Nil
        name : String = self.getTextFieldItem().not_nil!.getString()
        @highScoreUtil.not_nil!.update(name)
        super()
    end
    

    def paint(graphics : Graphics?) : Nil
        super(graphics)
        @paintable.not_nil!.paint(graphics)
    end
    

    def saveHighScore : Nil
        @highScoreUtil.not_nil!.saveHighScore()
    end
    

    def submit : Nil
        @highScoreUtil.not_nil!.submit(self)
    end
end


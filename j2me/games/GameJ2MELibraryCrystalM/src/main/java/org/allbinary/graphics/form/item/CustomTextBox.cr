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
# package org.allbinary.graphics.form.item

class CustomTextBox < GameCommandCanvas
    include RawKeyEventListener
    @textFieldItem : ABTextFieldItem? = nil

    def jf_textFieldItem : ABTextFieldItem?
        @textFieldItem
    end

    def jf_textFieldItem=(value : ABTextFieldItem?) : ABTextFieldItem?
        @textFieldItem = value
    end
    @inputFactory : InputFactory? = nil

    def jf_inputFactory : InputFactory?
        @inputFactory
    end

    def jf_inputFactory=(value : InputFactory?) : InputFactory?
        @inputFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_CustomTextBox : Nil
    
    @inputFactory = InputFactory.getInstance()
    end
    

    def jinit_CustomTextBox(cmdListener : CommandListener?, label : String, text : String, maxSize : Int, constraints : Int, font : Font?, backgroundBasicColor : BasicColor?, foregroundBasicColor : BasicColor?) : self
        maxSize = maxSize.to_i32!
        constraints = constraints.to_i32!
        jinit_GameCommandCanvas(cmdListener, label, backgroundBasicColor, foregroundBasicColor)
        jfields_CustomTextBox()
        stringUtil : StringUtil? = StringUtil.getInstance()
        textFieldItem : ABTextFieldItem? = ABTextFieldItem.new.jinit_ABTextFieldItem(self, TextItemVisitor.new.jinit_TextItemVisitor(), stringUtil.not_nil!.jf_EMPTY_STRING, stringUtil.not_nil!.jf_EMPTY_STRING, maxSize, 0, stringUtil.not_nil!.jf_EMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)
        textFieldItem.not_nil!.setString(text)
        @textFieldItem = textFieldItem
        self.setTitle(label)
        self
    end
    

    def submit : Nil
    end
    

    def onEventRaw(keyCode : Int, deviceId : Int, repeated : Bool) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_START).not_nil!.appendint(keyCode).not_nil!.toString(), self, "onEvent")
        self.keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyPressed(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyPressedByDevice(keyCode, 0)
    end
    

    def keyReleased(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyReleasedByDevice(keyCode, 0)
    end
    

    def keyRepeated(keyCode : Int) : Nil
        keyCode = keyCode.to_i32!
        self.keyRepeatedByDevice(keyCode, 0)
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
        begin
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.appendint(keyCode).not_nil!.toString(), self, @gameInputStrings.not_nil!.jf_KEY_PRESSED)
            platformKeyFactory : PlatformKeyFactory? = PlatformKeyFactory.getInstance()
            input : Input? = @inputFactory.not_nil!.getInstanceById(keyCode)
            if platformKeyFactory.not_nil!.isSubmission(input)
                self.submit()
            else
                @textFieldItem.not_nil!.keyPressed(keyCode)
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @gameInputStrings.not_nil!.jf_KEY_PRESSED, e)
            else
                raise jex1
            end
        end
    end
    

    def keyReleasedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def paint(graphics : Graphics?) : Nil
        graphics.not_nil!.setColor(@backgroundColor)
        graphics.not_nil!.fillRect(0, 0, @displayInfo.not_nil!.getLastWidth(), @displayInfo.not_nil!.getLastHeight())
        graphics.not_nil!.setColor(@foregroundColor)
        if !J2MEUtil.isJ2ME()
            graphics.not_nil!.drawString(self.getTitle(), 8, 1, 0)
        end
        self.paintXY(graphics, 8, graphics.not_nil!.getFont().not_nil!.getHeight() &+ 2)
        super(graphics)
    end
    

    def paintXY(graphics : Graphics?, x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @textFieldItem.not_nil!.paintXY(graphics, x, y)
    end
    

    def getTextFieldItem : ABTextFieldItem?
        return @textFieldItem
    end
end


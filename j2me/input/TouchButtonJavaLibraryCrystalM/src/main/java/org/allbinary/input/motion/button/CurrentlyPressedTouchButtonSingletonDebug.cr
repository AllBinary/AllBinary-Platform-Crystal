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
# package org.allbinary.input.motion.button

class CurrentlyPressedTouchButtonSingletonDebug < CurrentlyPressedTouchButtonSingleton
    @string : String = ""

    def jf_string : String
        @string
    end

    def jf_string=(value : String) : String
        @string = value
    end
    @listString : String = ""

    def jf_listString : String
        @listString
    end

    def jf_listString=(value : String) : String
        @listString = value
    end
    @appendText : String = ""

    def jf_appendText : String
        @appendText
    end

    def jf_appendText=(value : String) : String
        @appendText = value
    end
    @j_PRESSED_AND_FIRED : String = ""

    def jf_PRESSED_AND_FIRED : String
        @j_PRESSED_AND_FIRED
    end

    def jf_PRESSED_AND_FIRED=(value : String) : String
        @j_PRESSED_AND_FIRED = value
    end
    @j_PRESSED_AND_NOT_FIRED : String = ""

    def jf_PRESSED_AND_NOT_FIRED : String
        @j_PRESSED_AND_NOT_FIRED
    end

    def jf_PRESSED_AND_NOT_FIRED=(value : String) : String
        @j_PRESSED_AND_NOT_FIRED = value
    end
    @j_ASSOCIATED_RELEASED_AND_FIRED : String = ""

    def jf_ASSOCIATED_RELEASED_AND_FIRED : String
        @j_ASSOCIATED_RELEASED_AND_FIRED
    end

    def jf_ASSOCIATED_RELEASED_AND_FIRED=(value : String) : String
        @j_ASSOCIATED_RELEASED_AND_FIRED = value
    end
    @j_RELEASED_AND_FIRED : String = ""

    def jf_RELEASED_AND_FIRED : String
        @j_RELEASED_AND_FIRED
    end

    def jf_RELEASED_AND_FIRED=(value : String) : String
        @j_RELEASED_AND_FIRED = value
    end
    @j_RELEASED_AND_FIRED_2 : String = ""

    def jf_RELEASED_AND_FIRED_2 : String
        @j_RELEASED_AND_FIRED_2
    end

    def jf_RELEASED_AND_FIRED_2=(value : String) : String
        @j_RELEASED_AND_FIRED_2 = value
    end
    @j_RELEASED_AND_NOT_FIRED : String = ""

    def jf_RELEASED_AND_NOT_FIRED : String
        @j_RELEASED_AND_NOT_FIRED
    end

    def jf_RELEASED_AND_NOT_FIRED=(value : String) : String
        @j_RELEASED_AND_NOT_FIRED = value
    end

    @@jst_instanceC : CurrentlyPressedTouchButtonSingletonDebug? = nil

    def self.jst_instanceC : CurrentlyPressedTouchButtonSingletonDebug?
        jclinit
        @@jst_instanceC
    end

    def self.jst_instanceC=(value : CurrentlyPressedTouchButtonSingletonDebug?) : CurrentlyPressedTouchButtonSingletonDebug?
        jclinit
        @@jst_instanceC = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceC = CurrentlyPressedTouchButtonSingletonDebug.new.jinit_CurrentlyPressedTouchButtonSingletonDebug()
    end
    

    def self.getInstance : CurrentlyPressedTouchButtonSingleton?
        return CurrentlyPressedTouchButtonSingletonDebug.jst_instanceC
    end

    # Java field initializers run after the super constructor
    def jfields_CurrentlyPressedTouchButtonSingletonDebug : Nil
    @string = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @listString = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @appendText = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    @j_PRESSED_AND_FIRED = "pressed & fired"
    @j_PRESSED_AND_NOT_FIRED = "pressed in button but not fired"
    @j_ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired"
    @j_RELEASED_AND_FIRED = "rel & fired 1"
    @j_RELEASED_AND_FIRED_2 = "rel & fired 2"
    @j_RELEASED_AND_NOT_FIRED = "rel & not fired"
    end

    def jinit_CurrentlyPressedTouchButtonSingletonDebug : self
        jinit_CurrentlyPressedTouchButtonSingleton()
        jfields_CurrentlyPressedTouchButtonSingletonDebug()
        self
    end
    

    def appendTouchButtonInput(append : String, touchButtonInput : TouchButtonInput?) : Nil
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append(touchButtonInput.not_nil!.toString())
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(append)
        @appendText = stringBuffer.not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
    end
    

    def append(append : String) : Nil
        @appendText = StringMaker.new.jinit_StringMaker().not_nil!.append(@appendText).not_nil!.append(append).not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
    end
    

    def clearLog(x : Int, y : Int) : Nil
        x = x.to_i32!
        y = y.to_i32!
        @appendText = StringMaker.new.jinit_StringMaker().not_nil!.append(GPoint.toStringStatic(x, y, 0)).not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE).not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
    end
    

    def releaseAndNotFired : Nil
        self.append(@j_RELEASED_AND_NOT_FIRED)
    end
    

    def releaseAndFired(touchButtonInput : TouchButtonInput?) : Nil
        self.appendTouchButtonInput(@j_RELEASED_AND_FIRED, touchButtonInput)
    end
    

    def releaseAndFired2(touchButtonInput : TouchButtonInput?) : Nil
        self.appendTouchButtonInput(@j_RELEASED_AND_FIRED_2, touchButtonInput)
    end
    

    def releaseAndFiredAssociated(touchButtonInput : TouchButtonInput?) : Nil
        self.appendTouchButtonInput(@j_ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput)
    end
    

    def pressedAndFired(touchButtonInput : TouchButtonInput?) : Nil
        self.appendTouchButtonInput(@j_PRESSED_AND_FIRED, touchButtonInput)
    end
    

    def pressedAndNotFired(touchButtonInput : TouchButtonInput?) : Nil
        self.appendTouchButtonInput(@j_PRESSED_AND_NOT_FIRED, touchButtonInput)
    end
    

    def removeAt(index : Int) : TouchButtonInput?
        index = index.to_i32!
        touchButtonInput : TouchButtonInput? = super(index)
        @listString = @list.not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
        return touchButtonInput
    end
    

    def remove(touchButtonInput : TouchButtonInput?) : Bool
        isRemoved : Bool = super(touchButtonInput)
        @listString = @list.not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
        return isRemoved
    end
    

    def add(touchButtonInput : TouchButtonInput?) : Nil
        super(touchButtonInput)
        @listString = @list.not_nil!.toString()
        @string = StringMaker.new.jinit_StringMaker().not_nil!.append(@listString).not_nil!.append(@appendText).not_nil!.toString()
    end
    

    def toString : String
        return @string
    end
end


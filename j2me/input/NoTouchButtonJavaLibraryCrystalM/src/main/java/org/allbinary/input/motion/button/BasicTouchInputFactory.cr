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

class BasicTouchInputFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_SPECIAL_BUTTON_SIX : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_SIX : TouchButtonInput?
        @j_SPECIAL_BUTTON_SIX
    end

    def jf_SPECIAL_BUTTON_SIX=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_SIX = value
    end
    @j_SPECIAL_BUTTON_FIVE : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_FIVE : TouchButtonInput?
        @j_SPECIAL_BUTTON_FIVE
    end

    def jf_SPECIAL_BUTTON_FIVE=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_FIVE = value
    end
    @j_SPECIAL_BUTTON_FOUR : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_FOUR : TouchButtonInput?
        @j_SPECIAL_BUTTON_FOUR
    end

    def jf_SPECIAL_BUTTON_FOUR=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_FOUR = value
    end
    @j_SPECIAL_BUTTON_THREE : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_THREE : TouchButtonInput?
        @j_SPECIAL_BUTTON_THREE
    end

    def jf_SPECIAL_BUTTON_THREE=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_THREE = value
    end
    @j_SPECIAL_BUTTON_TWO : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_TWO : TouchButtonInput?
        @j_SPECIAL_BUTTON_TWO
    end

    def jf_SPECIAL_BUTTON_TWO=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_TWO = value
    end
    @j_SPECIAL_BUTTON_ONE : TouchButtonInput? = nil

    def jf_SPECIAL_BUTTON_ONE : TouchButtonInput?
        @j_SPECIAL_BUTTON_ONE
    end

    def jf_SPECIAL_BUTTON_ONE=(value : TouchButtonInput?) : TouchButtonInput?
        @j_SPECIAL_BUTTON_ONE = value
    end
    @j_UP : TouchButtonInput? = nil

    def jf_UP : TouchButtonInput?
        @j_UP
    end

    def jf_UP=(value : TouchButtonInput?) : TouchButtonInput?
        @j_UP = value
    end
    @j_LEFT : TouchButtonInput? = nil

    def jf_LEFT : TouchButtonInput?
        @j_LEFT
    end

    def jf_LEFT=(value : TouchButtonInput?) : TouchButtonInput?
        @j_LEFT = value
    end
    @j_RIGHT : TouchButtonInput? = nil

    def jf_RIGHT : TouchButtonInput?
        @j_RIGHT
    end

    def jf_RIGHT=(value : TouchButtonInput?) : TouchButtonInput?
        @j_RIGHT = value
    end
    @j_DOWN : TouchButtonInput? = nil

    def jf_DOWN : TouchButtonInput?
        @j_DOWN
    end

    def jf_DOWN=(value : TouchButtonInput?) : TouchButtonInput?
        @j_DOWN = value
    end
    @j_NONE : TouchButtonInput? = nil

    def jf_NONE : TouchButtonInput?
        @j_NONE
    end

    def jf_NONE=(value : TouchButtonInput?) : TouchButtonInput?
        @j_NONE = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_instance : JAny = nil

    def self.jst_instance : JAny
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : JAny) : JAny
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : BasicTouchInputFactory?
        if BasicTouchInputFactory.jst_instance == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            BasicTouchInputFactory.jst_instance = BasicTouchInputFactory.new.jinit_BasicTouchInputFactory()
        end
        return JR.cast(BasicTouchInputFactory.jst_instance, BasicTouchInputFactory)
    end

    # Java field initializers run after the super constructor
    def jfields_BasicTouchInputFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_SPECIAL_BUTTON_SIX = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 30, "Button 6")
    @j_SPECIAL_BUTTON_FIVE = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 31, "Button 5")
    @j_SPECIAL_BUTTON_FOUR = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 32, "Button 4")
    @j_SPECIAL_BUTTON_THREE = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 33, "Button 3")
    @j_SPECIAL_BUTTON_TWO = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 34, "Button 2")
    @j_SPECIAL_BUTTON_ONE = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 35, "Button 1")
    @j_UP = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 36, "Up Button")
    @j_LEFT = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 37, "Left Button")
    @j_RIGHT = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 38, "Right Button")
    @j_DOWN = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 39, "Down Button")
    @j_NONE = TouchButtonInput.new.jinit_TouchButtonInput(InputFactory.getInstance().not_nil!.jf_MAX &- 40, "No Button")
    @initialized = false
    @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end

    def jinit_BasicTouchInputFactory : self
        jfields_BasicTouchInputFactory()
        self
    end
    

    def init(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        if !@initialized
            @initialized = true
            @list.not_nil!.add(@j_UP)
            @list.not_nil!.add(@j_LEFT)
            @list.not_nil!.add(@j_RIGHT)
            @list.not_nil!.add(@j_DOWN)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_TWO)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_FOUR)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_THREE)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_ONE)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_FIVE)
            @list.not_nil!.add(@j_SPECIAL_BUTTON_SIX)
            self.updateAllList(@list, inputToGameKeyMapping)
        end
    end
    

    def updateAll(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        self.updateAllList(self.getList(), inputToGameKeyMapping)
    end
    

    def updateAllList(list : BasicArrayList?, inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START).not_nil!.appendint(list.not_nil!.size()).not_nil!.toString(), self, "updateAll")
        index : Int32 = list.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            touchButtonInput : TouchButtonInput? = JR.cast(list.not_nil!.get(index), TouchButtonInput)
            touchButtonInput.not_nil!.update(inputToGameKeyMapping)
        end
    end
    

    def getList : BasicArrayList?
        return @list
    end
end


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
# package org.allbinary.graphics.form.item.validation

class TextFieldItemValidator < ValidatorBase
    @textFieldItem : ABTextFieldItem? = nil

    def jf_textFieldItem : ABTextFieldItem?
        @textFieldItem
    end

    def jf_textFieldItem=(value : ABTextFieldItem?) : ABTextFieldItem?
        @textFieldItem = value
    end
    @min : Int32 = 0

    def jf_min : Int32
        @min
    end

    def jf_min=(value : Int32) : Int32
        @min = value
    end
    @max : Int32 = 0

    def jf_max : Int32
        @max
    end

    def jf_max=(value : Int32) : Int32
        @max = value
    end
    @allowOnEmpty : Bool = false

    def jf_allowOnEmpty : Bool
        @allowOnEmpty
    end

    def jf_allowOnEmpty=(value : Bool) : Bool
        @allowOnEmpty = value
    end
    

    def jinit_TextFieldItemValidator(textFieldItem : ABTextFieldItem?, min : Int, max : Int, allowOnEmpty : Bool) : self
        min = min.to_i32!
        max = max.to_i32!
        jinit_ValidatorBase()
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @allowOnEmpty = allowOnEmpty
        self
    end
    

    def isValid : JBoolean?
        booleanFactory : BooleanFactory? = BooleanFactory.getInstance()
        result : JBoolean? = booleanFactory.not_nil!.jf_TRUE
        string : String = @textFieldItem.not_nil!.getString()
        textLength : Int32 = string.not_nil!.length()
        if (textLength == 0 && @allowOnEmpty) || textLength > @min && textLength < @max
        else
            if textLength < @min
                result = booleanFactory.not_nil!.jf_FALSE
            elsif textLength > @max
                result = booleanFactory.not_nil!.jf_FALSE
            end
        end
        return result
    end
    

    def toList : BasicArrayList?
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        string : String = @textFieldItem.not_nil!.getString()
        textLength : Int32 = string.not_nil!.length()
        if textLength > @min && textLength < @max
        else
            label : String = @textFieldItem.not_nil!.getLabel()
            name : String = label.not_nil!.substring(0, label.not_nil!.length() &- 2)
            if textLength < @min
                list.not_nil!.add(StringMaker.new.jinit_StringMaker().not_nil!.append(name).not_nil!.append(" is to short").not_nil!.toString())
            elsif textLength > @max
                list.not_nil!.add(StringMaker.new.jinit_StringMaker().not_nil!.append(name).not_nil!.append(" is to long").not_nil!.toString())
            end
        end
        return list
    end
end


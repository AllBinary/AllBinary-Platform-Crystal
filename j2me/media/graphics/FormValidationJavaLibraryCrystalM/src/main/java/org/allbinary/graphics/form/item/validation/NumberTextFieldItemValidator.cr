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

class NumberTextFieldItemValidator < ValidatorBase
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
    @maxChars : Int32 = 0

    def jf_maxChars : Int32
        @maxChars
    end

    def jf_maxChars=(value : Int32) : Int32
        @maxChars = value
    end
    

    def jinit_NumberTextFieldItemValidator(textFieldItem : ABTextFieldItem?, maxChars : Int, min : Int, max : Int) : self
        maxChars = maxChars.to_i32!
        min = min.to_i32!
        max = max.to_i32!
        jinit_ValidatorBase()
        @textFieldItem = textFieldItem
        @min = min
        @max = max
        @maxChars = maxChars
        self
    end
    

    def isNumberValid(value : JInteger?) : JBoolean?
        return BooleanFactory.getInstance().not_nil!.jf_TRUE
    end
    

    def toNumberVector(value : JInteger?) : BasicArrayList?
        return BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def isValid : JBoolean?
        result : JBoolean? = BooleanFactory.getInstance().not_nil!.jf_TRUE
        string : String = @textFieldItem.not_nil!.getString()
        textLength : Int32 = string.not_nil!.length()
        if textLength > 0 && textLength < @maxChars
            begin
                JInteger.parseInt(@textFieldItem.not_nil!.getString())
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JNumberFormatException)
                    e = jex1.as(JNumberFormatException)
                result = BooleanFactory.getInstance().not_nil!.jf_FALSE
                else
                    raise jex1
                end
            end
        else
            if textLength < 1
                result = BooleanFactory.getInstance().not_nil!.jf_FALSE
            elsif textLength > @maxChars
                result = BooleanFactory.getInstance().not_nil!.jf_FALSE
            end
        end
        return result
    end
    

    def toList : BasicArrayList?
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        string : String = @textFieldItem.not_nil!.getString()
        textLength : Int32 = string.not_nil!.length()
        label : String = @textFieldItem.not_nil!.getLabel()
        name : String = label.not_nil!.substring(0, label.not_nil!.length() &- 2)
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
        if textLength > 0 && textLength < @maxChars
            begin
                number : JInteger? = smallIntegerSingletonFactory.not_nil!.createInstance(JInteger.parseInt(@textFieldItem.not_nil!.getString()))
                if number.not_nil!.intValue() > @min
                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                    list.not_nil!.add(stringMaker.not_nil!.append(name).not_nil!.append(" is to small").not_nil!.toString())
                elsif number.not_nil!.intValue() > @max
                    stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                    list.not_nil!.add(stringMaker.not_nil!.append(name).not_nil!.append(" is to large").not_nil!.toString())
                end
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JNumberFormatException)
                    e = jex2.as(JNumberFormatException)
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                list.not_nil!.add(stringMaker.not_nil!.append(name).not_nil!.append(" is not a number").not_nil!.toString())
                else
                    raise jex2
                end
            end
        else
            if textLength < 1
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                list.not_nil!.add(stringMaker.not_nil!.append(name).not_nil!.append(" is to short").not_nil!.toString())
            elsif textLength > @maxChars
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                list.not_nil!.add(stringMaker.not_nil!.append(name).not_nil!.append(" is to long").not_nil!.toString())
            end
        end
        return list
    end
end


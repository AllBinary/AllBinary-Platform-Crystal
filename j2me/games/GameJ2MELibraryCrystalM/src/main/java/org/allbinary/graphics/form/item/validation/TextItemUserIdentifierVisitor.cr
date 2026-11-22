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

class TextItemUserIdentifierVisitor < Visitor
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_TextItemUserIdentifierVisitor : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_TextItemUserIdentifierVisitor : self
        jinit_Visitor()
        jfields_TextItemUserIdentifierVisitor()
        self
    end
    

    def visit(anyType : JAny) : JAny
        value : String = JR.castString(anyType)
        if value.not_nil!.length() < 2
            charValue : UInt16 = value.not_nil!.charAt(0)
            stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
            if stringValidationUtil.not_nil!.isNumber(value)
                return BooleanFactory.getInstance().not_nil!.jf_TRUE
            elsif self.isLetter(charValue)
                return BooleanFactory.getInstance().not_nil!.jf_TRUE
            else
                begin
                    TextNotificationUtil.getInstance().not_nil!.fireError("Only Letters & Numbers Allowed")
                rescue jexc1 : ::Exception
                    jex1 = JR.jthrowable(jexc1)
                    if jex1.is_a?(JException)
                        e = jex1.as(JException)
                    commonStrings : CommonStrings? = CommonStrings.getInstance()
                    @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_VISIT, e)
                    else
                        raise jex1
                    end
                end
                return BooleanFactory.getInstance().not_nil!.jf_FALSE
            end
        else
            return BooleanFactory.getInstance().not_nil!.jf_FALSE
        end
        return nil
    end
    

    def isLetter(charValue : Int) : Bool
        charValue = charValue.to_u16!
        value : Int32 = (charValue).to_i32!
        return (value > 64 && value < 91) || (value > 96 && value < 123)
    end
end


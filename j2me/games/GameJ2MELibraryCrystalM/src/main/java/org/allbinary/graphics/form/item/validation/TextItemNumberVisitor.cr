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

class TextItemNumberVisitor < Visitor
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_TextItemNumberVisitor : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_TextItemNumberVisitor : self
        jinit_Visitor()
        jfields_TextItemNumberVisitor()
        self
    end
    

    def visit(anyType : JAny) : JAny
        value : String = JR.castString(anyType)
        if value.not_nil!.length() < 2
            stringValidationUtil : StringValidationUtil? = StringValidationUtil.getInstance()
            if stringValidationUtil.not_nil!.isNumber(value)
                return BooleanFactory.getInstance().not_nil!.jf_TRUE
            else
                begin
                    TextNotificationUtil.getInstance().not_nil!.fireError("Numbers Only")
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
end


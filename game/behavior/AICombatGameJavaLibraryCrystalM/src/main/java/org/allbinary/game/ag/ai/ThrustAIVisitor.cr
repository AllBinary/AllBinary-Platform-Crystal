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
# package org.allbinary.game.ag.ai

class ThrustAIVisitor < Visitor
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_TRUE : JBoolean? = nil

    def jf_TRUE : JBoolean?
        @j_TRUE
    end

    def jf_TRUE=(value : JBoolean?) : JBoolean?
        @j_TRUE = value
    end

    # Java field initializers run after the super constructor
    def jfields_ThrustAIVisitor : Nil
    @logUtil = LogUtil.getInstance()
    @j_TRUE = BooleanFactory.getInstance().not_nil!.jf_TRUE
    end
    

    def jinit_ThrustAIVisitor : self
        jinit_Visitor()
        jfields_ThrustAIVisitor()
        self
    end
    

    def visit(anyType : JAny) : JAny
        begin
            basicAI : BasicAI? = JR.cast(anyType, BasicAI)
            basicAI.not_nil!.processKeyAI(Canvas.jst_UP)
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
        return @j_TRUE
    end
end


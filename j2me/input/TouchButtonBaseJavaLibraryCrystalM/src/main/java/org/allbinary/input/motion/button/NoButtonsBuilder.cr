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

class NoButtonsBuilder < BaseTouchInput
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_NoButtonsBuilder : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_NoButtonsBuilder : self
        jinit_BaseTouchInput()
        jfields_NoButtonsBuilder()
        self
    end
    

    def getList : BasicArrayList?
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
            list : BasicArrayList? = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
            return list
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_GET_LIST, e)
            return BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
            else
                raise jex1
            end
        end
        return nil
    end
end


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

class BasicTouchButtonsBuilder < BaseTouchInput
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_SINGLETON : BasicTouchButtonsBuilder? = nil

    def self.jst_SINGLETON : BasicTouchButtonsBuilder?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : BasicTouchButtonsBuilder?) : BasicTouchButtonsBuilder?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = BasicTouchButtonsBuilder.new.jinit_BasicTouchButtonsBuilder()
    end
    

    def self.getInstance : BaseTouchInput?
        return BasicTouchButtonsBuilder.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_BasicTouchButtonsBuilder : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_BasicTouchButtonsBuilder : self
        jinit_BaseTouchInput()
        jfields_BasicTouchButtonsBuilder()
        self
    end
    

    def getList : BasicArrayList?
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_GET_LIST)
            list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
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


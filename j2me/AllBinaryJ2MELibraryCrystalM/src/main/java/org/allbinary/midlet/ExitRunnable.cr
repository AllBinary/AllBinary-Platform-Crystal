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
# package org.allbinary.midlet

class ExitRunnable < JObject
    include JRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @midlet : AllBinaryMidlet? = nil

    def jf_midlet : AllBinaryMidlet?
        @midlet
    end

    def jf_midlet=(value : AllBinaryMidlet?) : AllBinaryMidlet?
        @midlet = value
    end
    @processor : Processor? = nil

    def jf_processor : Processor?
        @processor
    end

    def jf_processor=(value : Processor?) : Processor?
        @processor = value
    end
    @isProgress : Bool = false

    def jf_isProgress : Bool
        @isProgress
    end

    def jf_isProgress=(value : Bool) : Bool
        @isProgress = value
    end

    # Java field initializers run after the super constructor
    def jfields_ExitRunnable : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    
    end
    

    def jinit_ExitRunnable(midlet : AllBinaryMidlet?, processor : Processor?, isProgress : Bool) : self
        jfields_ExitRunnable()
        @midlet = midlet
        @isProgress = isProgress
        @processor = processor
        self
    end
    

    def run : Nil
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            @midlet.not_nil!.destroyAppInRunnable(false, @isProgress)
            @midlet.not_nil!.setDisplay(NullCanvas.jst_NULL_CANVAS)
            @midlet.not_nil!.notifyDestroyed()
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_END_RUNNABLE, self, @commonStrings.not_nil!.jf_RUN)
            @processor.not_nil!.process()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
            begin
                @processor.not_nil!.process()
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e2 = jex2.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN, e)
                else
                    raise jex2
                end
            end
            else
                raise jex1
            end
        end
    end
end


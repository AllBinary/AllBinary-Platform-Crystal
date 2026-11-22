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
# package org.allbinary.game.displayable.canvas

class DemoGameStartupRunnable < ABRunnable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @demoCanvas : DemoCanvas? = nil

    def jf_demoCanvas : DemoCanvas?
        @demoCanvas
    end

    def jf_demoCanvas=(value : DemoCanvas?) : DemoCanvas?
        @demoCanvas = value
    end

    def self.jst_TYPE : Int32
        4
    end

    # Java field initializers run after the super constructor
    def jfields_DemoGameStartupRunnable : Nil
    @logUtil = LogUtil.getInstance()
    
    end
    

    def jinit_DemoGameStartupRunnable(demoCanvas : DemoCanvas?) : self
        jinit_ABRunnable()
        jfields_DemoGameStartupRunnable()
        @demoCanvas = demoCanvas
        self
    end
    

    def run : Nil
        begin
            self.setRunning(true)
            @demoCanvas.not_nil!.stopGameDemo()
            @demoCanvas.not_nil!.create()
            @demoCanvas.not_nil!.start()
            self.setRunning(false)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            self.setRunning(false)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, commonStrings.not_nil!.jf_RUN, e)
            else
                raise jex1
            end
        end
    end
    

    def getType : Int32
        return DemoGameStartupRunnable.jst_TYPE
    end
end


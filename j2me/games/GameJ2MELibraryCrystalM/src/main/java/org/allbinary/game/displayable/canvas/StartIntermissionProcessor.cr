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

class StartIntermissionProcessor < Processor
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
    @gameCanvas : AllBinaryGameCanvas? = nil

    def jf_gameCanvas : AllBinaryGameCanvas?
        @gameCanvas
    end

    def jf_gameCanvas=(value : AllBinaryGameCanvas?) : AllBinaryGameCanvas?
        @gameCanvas = value
    end
    @j_WAIT : Int64 = 0_i64

    def jf_WAIT : Int64
        @j_WAIT
    end

    def jf_WAIT=(value : Int64) : Int64
        @j_WAIT = value
    end

    # Java field initializers run after the super constructor
    def jfields_StartIntermissionProcessor : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    @j_WAIT = 5000_i64
    end
    

    def jinit_StartIntermissionProcessor(gameCanvas : AllBinaryGameCanvas?) : self
        jinit_Processor()
        jfields_StartIntermissionProcessor()
        @gameCanvas = gameCanvas
        self
    end
    

    def process : Nil
        if JR.cast(@gameCanvas.not_nil!.getStartIntermissionInterface().not_nil!.getTimeDelayHelper(), TimeDelayHelper).not_nil!.isElapsedTNT(@j_WAIT)
            @logUtil.not_nil!.putF("Intermission End", self, @commonStrings.not_nil!.jf_PROCESS)
            @gameCanvas.not_nil!.getStartIntermissionInterface().not_nil!.setEnabled(false)
        end
    end
end


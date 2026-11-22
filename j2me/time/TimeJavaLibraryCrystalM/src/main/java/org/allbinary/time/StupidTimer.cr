# Generated Code Do Not Modify
# package org.allbinary.time

class StupidTimer < JObject
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
    @nullUtil : NullUtil? = nil

    def jf_nullUtil : NullUtil?
        @nullUtil
    end

    def jf_nullUtil=(value : NullUtil?) : NullUtil?
        @nullUtil = value
    end
    @threadObjectUtil : ThreadObjectUtil? = nil

    def jf_threadObjectUtil : ThreadObjectUtil?
        @threadObjectUtil
    end

    def jf_threadObjectUtil=(value : ThreadObjectUtil?) : ThreadObjectUtil?
        @threadObjectUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_StupidTimer : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @nullUtil = NullUtil.getInstance()
    @threadObjectUtil = ThreadObjectUtil.getInstance()
    end

    def jinit_StupidTimer : self
        jfields_StupidTimer()
        self
    end
    

    def visitBool(visitorInterface : Visitor?) : Bool
        result : JBoolean? = JR.cast(visitorInterface.not_nil!.visit(@nullUtil.not_nil!.jf_NULL_OBJECT), JBoolean)
        result2 : Bool = result.not_nil!.booleanValue()
        return result2
    end
    

    def visit(visitorInterface : Visitor?, timeDelayHelper : TimeDelayHelper?) : Nil
        tookTooLong : Bool = false
        j_WAITING_FOR : String = "Waiting for: "
        PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(j_WAITING_FOR).not_nil!.append(StringUtil.getInstance().not_nil!.toString(visitorInterface)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_VISIT)
        index : Int32 = 0
        while self.visitBool(visitorInterface)
            if index.remainder(10) == 0
                PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append(j_WAITING_FOR).not_nil!.appendint(index).not_nil!.toString(), self, @commonStrings.not_nil!.jf_VISIT)
            end
            index &+= 1
            begin
                @threadObjectUtil.not_nil!.waitObjectFor(self, 1800)
            end
            if timeDelayHelper.not_nil!.isTimeTNT()
                tookTooLong = true
                break
            end
        end
        if tookTooLong
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_VISIT, JException.new.jinit_JException(StringMaker.new.jinit_StringMaker().not_nil!.append("Took Too Long: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(visitorInterface)).not_nil!.toString()))
        else
            PreLogUtil.put(timeDelayHelper.not_nil!.toString(), self, @commonStrings.not_nil!.jf_VISIT)
        end
    end
    

    def stopWaiting : Nil
        begin
            @threadObjectUtil.not_nil!.notifyObject(self)
        end
    end
end


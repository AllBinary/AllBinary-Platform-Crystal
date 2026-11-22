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
# package org.allbinary.canvas

class RunnableCanvas < MyCanvas
    include RunnableInterface
    @nullUtil : NullUtil? = nil

    def jf_nullUtil : NullUtil?
        @nullUtil
    end

    def jf_nullUtil=(value : NullUtil?) : NullUtil?
        @nullUtil = value
    end
    @stdUtil : StdUtil? = nil

    def jf_stdUtil : StdUtil?
        @stdUtil
    end

    def jf_stdUtil=(value : StdUtil?) : StdUtil?
        @stdUtil = value
    end
    @systemWrapper : ABSystemWrapper? = nil

    def jf_systemWrapper : ABSystemWrapper?
        @systemWrapper
    end

    def jf_systemWrapper=(value : ABSystemWrapper?) : ABSystemWrapper?
        @systemWrapper = value
    end
    @tsUtil : TsUtil? = nil

    def jf_tsUtil : TsUtil?
        @tsUtil
    end

    def jf_tsUtil=(value : TsUtil?) : TsUtil?
        @tsUtil = value
    end
    @thread : JThread? = nil

    def jf_thread : JThread?
        @thread
    end

    def jf_thread=(value : JThread?) : JThread?
        @thread = value
    end
    @currentThread : JThread? = nil

    def jf_currentThread : JThread?
        @currentThread
    end

    def jf_currentThread=(value : JThread?) : JThread?
        @currentThread = value
    end
    @running : Bool = false

    def jf_running : Bool
        @running
    end

    def jf_running=(value : Bool) : Bool
        @running = value
    end
    @loopTimeHelper : TimeDelayHelper? = nil

    def jf_loopTimeHelper : TimeDelayHelper?
        @loopTimeHelper
    end

    def jf_loopTimeHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @loopTimeHelper = value
    end
    @runnableCanvasRefreshHelper : Processor? = nil

    def jf_runnableCanvasRefreshHelper : Processor?
        @runnableCanvasRefreshHelper
    end

    def jf_runnableCanvasRefreshHelper=(value : Processor?) : Processor?
        @runnableCanvasRefreshHelper = value
    end
    @commonLabels : CommonLabels? = nil

    def jf_commonLabels : CommonLabels?
        @commonLabels
    end

    def jf_commonLabels=(value : CommonLabels?) : CommonLabels?
        @commonLabels = value
    end
    @threadObjectUtil : ThreadObjectUtil? = nil

    def jf_threadObjectUtil : ThreadObjectUtil?
        @threadObjectUtil
    end

    def jf_threadObjectUtil=(value : ThreadObjectUtil?) : ThreadObjectUtil?
        @threadObjectUtil = value
    end
    @j_SET_RUNNING : String = ""

    def jf_SET_RUNNING : String
        @j_SET_RUNNING
    end

    def jf_SET_RUNNING=(value : String) : String
        @j_SET_RUNNING = value
    end
    @j_IS_RUNNING : String = ""

    def jf_IS_RUNNING : String
        @j_IS_RUNNING
    end

    def jf_IS_RUNNING=(value : String) : String
        @j_IS_RUNNING = value
    end
    @j_THREAD : String = ""

    def jf_THREAD : String
        @j_THREAD
    end

    def jf_THREAD=(value : String) : String
        @j_THREAD = value
    end
    @j_NOT_EQUAL : String = ""

    def jf_NOT_EQUAL : String
        @j_NOT_EQUAL
    end

    def jf_NOT_EQUAL=(value : String) : String
        @j_NOT_EQUAL = value
    end
    @j_PAUSE_SLEEP : String = ""

    def jf_PAUSE_SLEEP : String
        @j_PAUSE_SLEEP
    end

    def jf_PAUSE_SLEEP=(value : String) : String
        @j_PAUSE_SLEEP = value
    end
    @j_START_PAUSE : String = ""

    def jf_START_PAUSE : String
        @j_START_PAUSE
    end

    def jf_START_PAUSE=(value : String) : String
        @j_START_PAUSE = value
    end
    @j_END_PAUSE : String = ""

    def jf_END_PAUSE : String
        @j_END_PAUSE
    end

    def jf_END_PAUSE=(value : String) : String
        @j_END_PAUSE = value
    end
    @j_PROCESS_LOOP_SLEEP : String = ""

    def jf_PROCESS_LOOP_SLEEP : String
        @j_PROCESS_LOOP_SLEEP
    end

    def jf_PROCESS_LOOP_SLEEP=(value : String) : String
        @j_PROCESS_LOOP_SLEEP = value
    end
    @pauseWait : Int64 = 0_i64

    def jf_pauseWait : Int64
        @pauseWait
    end

    def jf_pauseWait=(value : Int64) : Int64
        @pauseWait = value
    end
    @notified : Bool = false

    def jf_notified : Bool
        @notified
    end

    def jf_notified=(value : Bool) : Bool
        @notified = value
    end

    # Java field initializers run after the super constructor
    def jfields_RunnableCanvas : Nil
    @nullUtil = NullUtil.getInstance()
    @stdUtil = StdUtil.getInstance()
    @systemWrapper = ABSystemWrapper.getInstance()
    @tsUtil = TsUtil.getInstance()
    @thread = NullThread.jst_NULL_THREAD
    @currentThread = NullThread.jst_NULL_THREAD
    
    @loopTimeHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(NullWaitGameRunnable.getInstance().not_nil!.jf_WAIT)
    @runnableCanvasRefreshHelper = Processor.getInstance()
    @commonLabels = CommonLabels.getInstance()
    @threadObjectUtil = ThreadObjectUtil.getInstance()
    @j_SET_RUNNING = "setRunning"
    @j_IS_RUNNING = "isRunning"
    @j_THREAD = "Thread: "
    @j_NOT_EQUAL = " != "
    @j_PAUSE_SLEEP = "pause sleep"
    @j_START_PAUSE = "start pause - game thread sleep at: "
    @j_END_PAUSE = "end pause - game thread sleep at: "
    @j_PROCESS_LOOP_SLEEP = "processLoopSleep"
    @pauseWait = 0_i64
    @notified = false
    end
    

    def jinit_RunnableCanvas(commandListener : CommandListener?, childNameList : BasicArrayList?, hasParam : Bool) : self
        jinit_MyCanvas(CommonStrings.getInstance().not_nil!.jf_UNKNOWN, childNameList)
        jfields_RunnableCanvas()
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("RunnableCanvas delay: ").not_nil!.appendint(@loopTimeHelper.not_nil!.jf_delay).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper.new.jinit_RunnableCanvasRefreshHelper(self)
        if !(commandListener).nil?
            self.initCommands(commandListener)
        elsif hasParam
            @logUtil.not_nil!.putF("commandListener was null", self, "initCommands")
        end
        self
    end
    

    def initCommands(cmdListener : CommandListener?) : Nil
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED, self, "initCommands")
    end
    

    def isMainCanvas : Bool
        if !(self.getCustomCommandListener()).nil?
            return true
        else
            return false
        end
        return false
    end
    

    def setThread(thread : JThread?) : Nil
        @thread = thread
    end
    

    def setRunning(running : Bool) : Nil
        @running = running
        if !@running
            @thread = NullThread.jst_NULL_THREAD
            begin
                @threadObjectUtil.not_nil!.notifyObject(self)
            end
        end
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@j_IS_RUNNING).not_nil!.appendboolean(@running).not_nil!.toString(), self, @j_SET_RUNNING)
    end
    

    def isRunning : Bool
        if @thread == @currentThread
            return @running
        else
            stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
            stringBuffer.not_nil!.append(@j_THREAD)
            if !(@thread).nil?
                stringBuffer.not_nil!.append(@thread.not_nil!.toString())
            end
            stringBuffer.not_nil!.append(@j_NOT_EQUAL)
            if !(@currentThread).nil?
                stringBuffer.not_nil!.append(StringUtil.getInstance().not_nil!.toString(@currentThread))
            end
            @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, @j_IS_RUNNING)
            return false
        end
        return false
    end
    

    def getLoopTimeHelperP : TimeDelayHelper?
        return @loopTimeHelper
    end
    

    def setWait(wait : Int) : Nil
        wait = wait.to_i32!
        @loopTimeHelper.not_nil!.jf_delay = wait
        @pauseWait = (wait).to_i64! &* 3_i64
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append("setWait - delay: ").not_nil!.appendint(@loopTimeHelper.not_nil!.jf_delay).not_nil!.toString(), self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
    end
    

    def getWait : Int32
        return @loopTimeHelper.not_nil!.jf_delay
    end
    

    def setCurrentThread : Nil
        @currentThread = JThread.currentThread()
    end
    

    def setCurrentThreadFake : Nil
        @currentThread = @thread
    end
    

    def showNotify : Nil
        begin
            self.stopWaiting()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "showNotify", e)
            else
                raise jex1
            end
        end
    end
    

    def stopWaiting : Nil
        @notified = true
        begin
            @threadObjectUtil.not_nil!.notifyObject(self)
        end
        self.repaint()
    end
    

    def waitOnNotify(wait : Int) : Nil
        wait = wait.to_i64!
        if !@notified
            if wait > 0_i64
                @threadObjectUtil.not_nil!.waitObjectFor(self, wait)
            else
                @threadObjectUtil.not_nil!.waitObject(self)
            end
        end
    end
    

    def processSleep : Nil
        JThread.sleep_j(@pauseWait)
    end
    

    def isPausable : Bool
        return false
    end
    

    def processGameSleep(sleep : Int) : Nil
        sleep = sleep.to_i64!
        JThread.sleep_j(sleep)
    end
    

    def processLoopSleep : Nil
        @runnableCanvasRefreshHelper.not_nil!.process()
        if self.isPaused()
            stringMaker : StringMaker? = StringMaker.new.jinit_StringMaker()
            if self.isRunning() && !self.isSingleThread()
                stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                currentTimeMillis : Int64 = @systemWrapper.not_nil!.currentTimeMillis()
                @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_START_PAUSE).not_nil!.appendlong(currentTimeMillis).not_nil!.append(@j_PAUSE_SLEEP).not_nil!.appendlong(@pauseWait).not_nil!.toString(), self, @j_PROCESS_LOOP_SLEEP)
                while self.isPaused() && self.isRunning() && !self.isSingleThread()
                    self.processSleep()
                    if !self.isPausable()
                        stringMaker.not_nil!.delete(0, stringMaker.not_nil!.length())
                        @logUtil.not_nil!.putF(stringMaker.not_nil!.append(@j_END_PAUSE).not_nil!.appendlong(currentTimeMillis).not_nil!.toString(), self, @j_PROCESS_LOOP_SLEEP)
                        return
                    end
                end
            end
        end
        elapsedTime : Int64 = @loopTimeHelper.not_nil!.getElapsedTNT()
        wait : Int64 = (@loopTimeHelper.not_nil!.jf_delay).to_i64!
        if elapsedTime > wait
            elapsedTime = wait
        else
            self.processGameSleep(wait &- elapsedTime)
        end
    end
    

    def isSingleThread : Bool
        return false
    end
    

    def run : Nil
        self.setCurrentThread()
    end
    

    def end2 : Nil
    end
    

    def getType : Int32
        return -1
    end
end


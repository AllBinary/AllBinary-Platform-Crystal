# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.thread

class PooledThread < JThread
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
    @threadObjectUtil : ThreadObjectUtil? = nil

    def jf_threadObjectUtil : ThreadObjectUtil?
        @threadObjectUtil
    end

    def jf_threadObjectUtil=(value : ThreadObjectUtil?) : ThreadObjectUtil?
        @threadObjectUtil = value
    end
    @threadPool : ThreadPool? = nil

    def jf_threadPool : ThreadPool?
        @threadPool
    end

    def jf_threadPool=(value : ThreadPool?) : ThreadPool?
        @threadPool = value
    end
    @j_INTERRUPT_EXCEPTION : String = ""

    def jf_INTERRUPT_EXCEPTION : String
        @j_INTERRUPT_EXCEPTION
    end

    def jf_INTERRUPT_EXCEPTION=(value : String) : String
        @j_INTERRUPT_EXCEPTION = value
    end

    # Java field initializers run after the super constructor
    def jfields_PooledThread : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @threadObjectUtil = ThreadObjectUtil.getInstance()
    
    @j_INTERRUPT_EXCEPTION = "Exit InterruptedException"
    end
    

    def jinit_PooledThread(threadPool : ThreadPool?) : self
        jinit_JThread(threadPool.not_nil!.createName())
        jfields_PooledThread()
        @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_CONSTRUCTOR, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
        @threadPool = threadPool
        self
    end
    

    def run : Nil
        @threadPool.not_nil!.threadStarted()
        while true
            task2 : JRunnable? = @threadObjectUtil.not_nil!.jf_NULL_PRIORITY_RUNNABLE
            begin
                task2 = JR.cast(@threadPool.not_nil!.getTask(), JRunnable)
                @threadPool.not_nil!.jf_runningTask = true
                @threadPool.not_nil!.startTask(task2)
            rescue jexc1 : ::Exception
                jex1 = JR.jthrowable(jexc1)
                if jex1.is_a?(JInterruptedException)
                    ex = jex1.as(JInterruptedException)
                logUtil = (LogUtil.getInstance()).as(LogUtil?)
                logUtil.not_nil!.putF(@j_INTERRUPT_EXCEPTION, self, @commonStrings.not_nil!.jf_RUN)
                break
                else
                    raise jex1
                end
            end
            if task2 == @threadObjectUtil.not_nil!.jf_NULL_PRIORITY_RUNNABLE
                break
            end
            begin
                task2.not_nil!.run()
                @threadPool.not_nil!.completedTask(task2)
                @threadPool.not_nil!.jf_runningTask = false
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e = jex2.as(JException)
                logUtil = (LogUtil.getInstance()).as(LogUtil?)
                logUtil.not_nil!.put(StringMaker.new.jinit_StringMaker().not_nil!.append(@commonStrings.not_nil!.jf_EXCEPTION_LABEL).not_nil!.append(StringUtil.getInstance().not_nil!.toString(task2)).not_nil!.toString(), self, @commonStrings.not_nil!.jf_RUN, e)
                else
                    raise jex2
                end
            end
        end
        @threadPool.not_nil!.threadStopped()
    end
end


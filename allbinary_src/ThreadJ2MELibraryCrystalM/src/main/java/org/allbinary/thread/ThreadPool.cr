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
# package org.allbinary.thread

class ThreadPool < JObject
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
    @j_NULL_RUNNABLE : NullRunnable? = nil

    def jf_NULL_RUNNABLE : NullRunnable?
        @j_NULL_RUNNABLE
    end

    def jf_NULL_RUNNABLE=(value : NullRunnable?) : NullRunnable?
        @j_NULL_RUNNABLE = value
    end
    @threadPoolStrings : ThreadPoolStrings? = nil

    def jf_threadPoolStrings : ThreadPoolStrings?
        @threadPoolStrings
    end

    def jf_threadPoolStrings=(value : ThreadPoolStrings?) : ThreadPoolStrings?
        @threadPoolStrings = value
    end
    @threadObjectUtil : ThreadObjectUtil? = nil

    def jf_threadObjectUtil : ThreadObjectUtil?
        @threadObjectUtil
    end

    def jf_threadObjectUtil=(value : ThreadObjectUtil?) : ThreadObjectUtil?
        @threadObjectUtil = value
    end
    @poolName : String = ""

    def jf_poolName : String
        @poolName
    end

    def jf_poolName=(value : String) : String
        @poolName = value
    end
    @priority : Int32 = 0

    def jf_priority : Int32
        @priority
    end

    def jf_priority=(value : Int32) : Int32
        @priority = value
    end
    @isAlive : Bool = false

    def jf_isAlive : Bool
        @isAlive
    end

    def jf_isAlive=(value : Bool) : Bool
        @isAlive = value
    end
    @taskQueue : BasicArrayList? = nil

    def jf_taskQueue : BasicArrayList?
        @taskQueue
    end

    def jf_taskQueue=(value : BasicArrayList?) : BasicArrayList?
        @taskQueue = value
    end
    @threadID : Int32 = 0

    def jf_threadID : Int32
        @threadID
    end

    def jf_threadID=(value : Int32) : Int32
        @threadID = value
    end
    @numThreads : Int32 = 0

    def jf_numThreads : Int32
        @numThreads
    end

    def jf_numThreads=(value : Int32) : Int32
        @numThreads = value
    end
    @runningTask : Bool = false

    def jf_runningTask : Bool
        @runningTask
    end

    def jf_runningTask=(value : Bool) : Bool
        @runningTask = value
    end

    def self.jst_ROOT_NAME : String
        "-PooledThread-"
    end

    @@jst_NORMAL_PRIORITY : Int32 = 0

    def self.jst_NORMAL_PRIORITY : Int32
        jclinit
        @@jst_NORMAL_PRIORITY
    end

    def self.jst_NORMAL_PRIORITY=(value : Int32) : Int32
        jclinit
        @@jst_NORMAL_PRIORITY = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        
        @@jst_NORMAL_PRIORITY = JThread.jst_NORM_PRIORITY
    end

    # Java field initializers run after the super constructor
    def jfields_ThreadPool : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    @j_NULL_RUNNABLE = NullRunnable.getInstance()
    @threadPoolStrings = ThreadPoolStrings.getInstance()
    @threadObjectUtil = ThreadObjectUtil.getInstance()
    
    
    @isAlive = false
    @taskQueue = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    
    
    
    end
    

    def jinit_ThreadPool(poolName : String, numThreads : Int, priority : Int) : self
        numThreads = numThreads.to_i32!
        priority = priority.to_i32!
        jfields_ThreadPool()
        @poolName = poolName
        @priority = priority
        @numThreads = numThreads
        self
    end
    

    def init : Nil
        if !@isAlive
            @isAlive = true
            @taskQueue = BasicArrayListD.new.jinit_BasicArrayListD()
            pooledThread : PooledThread? = nil
            i : Int32 = 0
            jfor1 = false
            while true
                if jfor1
                    i &+= 1
                end
                jfor1 = true
                break unless i < @numThreads
                pooledThread = PooledThread.new.jinit_PooledThread(self)
                pooledThread.not_nil!.setPriority(@priority)
                pooledThread.not_nil!.start()
            end
        end
    end
    

    def runAPriorityTask : Nil
        raise (JRuntimeException.new.jinit_JRuntimeException()).not_nil!
    end
    

    def runTaskWithPriority(task : PriorityRunnable?) : Nil
        begin
            if !@isAlive
                self.init()
            end
            if !(task).nil?
                size : Int32 = @taskQueue.not_nil!.size()
                runnable : PriorityRunnable? = nil
                lowerPriorityRunnable : PriorityRunnable? = @threadObjectUtil.not_nil!.jf_NULL_PRIORITY_RUNNABLE
                index = 0
                jfor2 = false
                while true
                    if jfor2
                        index &+= 1
                    end
                    jfor2 = true
                    break unless index < size
                    runnable = JR.cast(JR.cast(@taskQueue.not_nil!.get(index), PriorityRunnable), PriorityRunnable)
                    if (runnable.not_nil!.getPriority()).as(Int32) > (task.not_nil!.getPriority()).as(Int32)
                        lowerPriorityRunnable = JR.cast(runnable, PriorityRunnable)
                        break
                    end
                end
                if lowerPriorityRunnable == @threadObjectUtil.not_nil!.jf_NULL_PRIORITY_RUNNABLE
                    @taskQueue.not_nil!.add(task)
                else
                    index = @taskQueue.not_nil!.indexOf(lowerPriorityRunnable)
                    @taskQueue.not_nil!.addAt(index, task)
                end
                self.notify()
            end
        end
    end
    

    def runTask(task : JRunnable?) : Nil
        begin
            if !@isAlive
                self.init()
            end
            if !(task).nil?
                @taskQueue.not_nil!.add(task)
                self.notify()
            end
        end
    end
    

    def getTask : JRunnable?
        begin
            while @taskQueue.not_nil!.size() == 0
                if !@isAlive
                    return JR.cast(@j_NULL_RUNNABLE, JRunnable)
                end
                self.wait()
            end
            runnable : JRunnable? = JR.cast(@taskQueue.not_nil!.removeAt(0), JRunnable)
            return JR.cast(runnable, JRunnable)
        end
        return nil
    end
    

    def clear : Nil
        begin
            if @isAlive
                @taskQueue.not_nil!.clear()
            end
        end
    end
    

    def close : Nil
        begin
            if @isAlive
                @isAlive = false
                @taskQueue.not_nil!.clear()
            end
        end
    end
    

    def join : Nil
        begin
            @isAlive = false
            @taskQueue.not_nil!.clear()
            self.notifyAll()
        end
    end
    

    def isBusy : Bool
        if !@isAlive
            return false
        end
        if @taskQueue.not_nil!.size() > 0
            return true
        end
        if @runningTask
            return true
        end
        return false
    end
    

    def threadStarted : Nil
    end
    

    def threadStopped : Nil
        if @numThreads == 1
            @isAlive = false
            @taskQueue.not_nil!.clear()
        end
    end
    

    def startTask(task : JRunnable?) : Nil
    end
    

    def completedTask(task : JRunnable?) : Nil
    end
    

    def createName : String
        return StringMaker.new.jinit_StringMaker().not_nil!.append(@poolName).not_nil!.append(ThreadPool.jst_ROOT_NAME).not_nil!.appendint(((@threadID &+= 1) &- 1)).not_nil!.toString()
    end
end


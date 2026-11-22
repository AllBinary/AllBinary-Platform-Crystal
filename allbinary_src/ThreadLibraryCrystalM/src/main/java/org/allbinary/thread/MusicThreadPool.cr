# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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

class MusicThreadPool < ThreadPool

    @@jst_THREAD_POOL : ThreadPool? = nil

    def self.jst_THREAD_POOL : ThreadPool?
        jclinit
        @@jst_THREAD_POOL
    end

    def self.jst_THREAD_POOL=(value : ThreadPool?) : ThreadPool?
        jclinit
        @@jst_THREAD_POOL = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_THREAD_POOL = ThreadPool.new.jinit_ThreadPool("Music", 2, ThreadPool.jst_NORMAL_PRIORITY)
    end
    

    def self.getInstance : ThreadPool?
        return MusicThreadPool.jst_THREAD_POOL
    end
    

    def jinit_MusicThreadPool(poolName : String, numThreads : Int, priority : Int) : self
        numThreads = numThreads.to_i32!
        priority = priority.to_i32!
        jinit_ThreadPool(poolName, numThreads, priority)
        self
    end
    

    def runTask(task : JRunnable?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(StringUtil.getInstance().not_nil!.toString(task)).not_nil!.appendlong(JSystem.currentTimeMillis()).not_nil!.toString(), self, @threadPoolStrings.not_nil!.jf_ADD_TASK)
        super(task)
    end
    

    def startTask(task : JRunnable?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@threadPoolStrings.not_nil!.jf_START_TASK).not_nil!.append(StringUtil.getInstance().not_nil!.toString(task)).not_nil!.appendlong(JSystem.currentTimeMillis()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_RUN)
    end
    

    def completedTask(task : JRunnable?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(@threadPoolStrings.not_nil!.jf_COMPLETE_TASK).not_nil!.append(StringUtil.getInstance().not_nil!.toString(task)).not_nil!.appendlong(JSystem.currentTimeMillis()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_RUN)
    end
end


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

class PathFindingThreadPool < ThreadPool

    @@jst_instance : ThreadPool? = nil

    def self.jst_instance : ThreadPool?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThreadPool?) : ThreadPool?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PathFindingThreadPool.new.jinit_PathFindingThreadPool("PathFinding", 1, 1)
    end
    

    def self.getInstance : ThreadPool?
        return PathFindingThreadPool.jst_instance
    end
    

    def jinit_PathFindingThreadPool(poolName : String, numThreads : Int, priority : Int) : self
        numThreads = numThreads.to_i32!
        priority = priority.to_i32!
        jinit_ThreadPool(poolName, numThreads, ThreadPool.jst_NORMAL_PRIORITY)
        self
    end
    

    def runTaskWithPriority(task : PriorityRunnable?) : Nil
        super(task)
    end
    

    def runTask(task : JRunnable?) : Nil
        super(task)
    end
    

    def startTask(task : JRunnable?) : Nil
    end
    

    def completedTask(task : JRunnable?) : Nil
    end
end


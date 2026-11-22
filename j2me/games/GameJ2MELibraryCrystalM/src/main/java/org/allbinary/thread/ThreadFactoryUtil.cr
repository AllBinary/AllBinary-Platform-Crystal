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

class ThreadFactoryUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : ThreadFactoryUtil? = nil

    def self.jst_instance : ThreadFactoryUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThreadFactoryUtil?) : ThreadFactoryUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ThreadFactoryUtil.new.jinit_ThreadFactoryUtil()
    end
    

    def self.getInstance : ThreadFactoryUtil?
        return ThreadFactoryUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ThreadFactoryUtil : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_ThreadFactoryUtil : self
        jfields_ThreadFactoryUtil()
        self
    end
    

    def getInstanceGameCanvasRunnable(runnable : GameCanvasRunnableInterface?) : JThread?
        return self.getInstanceType(runnable, runnable.not_nil!.getType())
    end
    

    def getInstanceForRunnable(runnable : ABRunnable?) : JThread?
        return self.getInstanceType(runnable, runnable.not_nil!.getType())
    end
    

    def getInstanceType(runnable : JRunnable?, type_ : Int) : JThread?
        type_ = type_.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        if J2MEUtil.isHTML()
            if type_ == DemoCanvas.jst_TYPE || type_ == AllBinaryGameCanvas.jst_TYPE
                demoGameSingleThreadStartRunnable : RunnableCanvasSingleThreadStartRunnable? = RunnableCanvasSingleThreadStartRunnable.new.jinit_RunnableCanvasSingleThreadStartRunnable(JR.cast(runnable, RunnableCanvas))
                PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(runnable)).not_nil!.toString(), self, commonStrings.not_nil!.jf_CONSTRUCTOR)
                primaryThreadPool = (PrimaryThreadPool.getInstance()).as(ThreadPool?)
                primaryThreadPool.not_nil!.runTask(demoGameSingleThreadStartRunnable)
            else
                PreLogUtil.put(StringMaker.new.jinit_StringMaker().not_nil!.append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").not_nil!.append(StringUtil.getInstance().not_nil!.toString(runnable)).not_nil!.toString(), self, commonStrings.not_nil!.jf_CONSTRUCTOR)
                primaryThreadPool = (PrimaryThreadPool.getInstance()).as(ThreadPool?)
                primaryThreadPool.not_nil!.runTask(runnable)
            end
        end
        thread : JThread? = JThread.new.jinit_JThread(runnable, runnable.not_nil!.toString())
        @logUtil.not_nil!.putF(thread.not_nil!.toString(), self, commonStrings.not_nil!.jf_CONSTRUCTOR)
        return thread
    end
    

    def start(thread : JThread?) : Nil
        thread.not_nil!.start()
    end
end


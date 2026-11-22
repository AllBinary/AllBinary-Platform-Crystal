# Generated Code Do Not Modify
# package org.allbinary.thread

class ThreadObjectUtil < JObject
    @j_NULL_PRIORITY_RUNNABLE : PriorityRunnable? = nil

    def jf_NULL_PRIORITY_RUNNABLE : PriorityRunnable?
        @j_NULL_PRIORITY_RUNNABLE
    end

    def jf_NULL_PRIORITY_RUNNABLE=(value : PriorityRunnable?) : PriorityRunnable?
        @j_NULL_PRIORITY_RUNNABLE = value
    end

    @@jst_instance : ThreadObjectUtil? = nil

    def self.jst_instance : ThreadObjectUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThreadObjectUtil?) : ThreadObjectUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ThreadObjectUtil.new.jinit_ThreadObjectUtil()
    end
    

    def self.getInstance : ThreadObjectUtil?
        return ThreadObjectUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ThreadObjectUtil : Nil
    @j_NULL_PRIORITY_RUNNABLE = NullPriorityRunnable.new.jinit_NullPriorityRunnable()
    end

    def jinit_ThreadObjectUtil : self
        jfields_ThreadObjectUtil()
        self
    end
    

    def notifyObject(anyType : JAny) : Nil
        anyType.not_nil!.notify()
    end
    

    def waitObject(anyType : JAny) : Nil
        anyType.not_nil!.wait()
    end
    

    def waitObjectFor(anyType : JAny, delay : Int) : Nil
        delay = delay.to_i64!
        TsUtil.getInstance().not_nil!.waitFor(anyType, delay)
    end
    

    def processThread(runnable : JRunnable?) : Nil
        thread : JThread? = JThread.new.jinit_JThread(runnable)
        thread.not_nil!.start()
    end
end


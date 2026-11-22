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

class ThreadUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_JOIN : String = ""

    def jf_JOIN : String
        @j_JOIN
    end

    def jf_JOIN=(value : String) : String
        @j_JOIN = value
    end

    @@jst_instance : ThreadUtil? = nil

    def self.jst_instance : ThreadUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThreadUtil?) : ThreadUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ThreadUtil.new.jinit_ThreadUtil()
    end
    

    def self.getInstance : ThreadUtil?
        return ThreadUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ThreadUtil : Nil
    @logUtil = LogUtil.getInstance()
    @j_JOIN = "join"
    end

    def jinit_ThreadUtil : self
        jfields_ThreadUtil()
        self
    end
    

    def isRunning(thread : JThread?) : Bool
        if !(thread).nil? && thread.not_nil!.isAlive()
            return true
        else
            return false
        end
        return false
    end
    

    def join(thread : JThread?) : Nil
        if ThreadUtil.getInstance().not_nil!.isRunning(thread)
            @logUtil.not_nil!.putF("Waiting for Thread To Join/End", self, @j_JOIN)
            thread.not_nil!.join()
        end
    end
end


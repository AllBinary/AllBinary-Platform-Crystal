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

class ThreadPoolStrings < JObject
    @j_ADD_TASK : String = ""

    def jf_ADD_TASK : String
        @j_ADD_TASK
    end

    def jf_ADD_TASK=(value : String) : String
        @j_ADD_TASK = value
    end
    @j_START_TASK : String = ""

    def jf_START_TASK : String
        @j_START_TASK
    end

    def jf_START_TASK=(value : String) : String
        @j_START_TASK = value
    end
    @j_COMPLETE_TASK : String = ""

    def jf_COMPLETE_TASK : String
        @j_COMPLETE_TASK
    end

    def jf_COMPLETE_TASK=(value : String) : String
        @j_COMPLETE_TASK = value
    end

    @@jst_instance : ThreadPoolStrings? = nil

    def self.jst_instance : ThreadPoolStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ThreadPoolStrings?) : ThreadPoolStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ThreadPoolStrings.new.jinit_ThreadPoolStrings()
    end
    

    def self.getInstance : ThreadPoolStrings?
        return ThreadPoolStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ThreadPoolStrings : Nil
    @j_ADD_TASK = "addTask"
    @j_START_TASK = "Started Task: "
    @j_COMPLETE_TASK = "Completed Task: "
    end

    def jinit_ThreadPoolStrings : self
        jfields_ThreadPoolStrings()
        self
    end
end


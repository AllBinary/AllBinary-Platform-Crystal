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
# package org.allbinary.logic.io

class AbIOSystem < JObject
    @type_ : String = ""

    def jf_type : String
        @type_
    end

    def jf_type=(value : String) : String
        @type_ = value
    end

    @@jst_instance : AbIOSystem? = nil

    def self.jst_instance : AbIOSystem?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AbIOSystem?) : AbIOSystem?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AbIOSystem.new.jinit_AbIOSystem()
    end
    

    def self.getInstance : AbIOSystem?
        return AbIOSystem.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AbIOSystem : Nil
    @type_ = "java.io"
    end

    def jinit_AbIOSystem : self
        jfields_AbIOSystem()
        self
    end
    

    def getType : String
        return @type_
    end
    

    def isType(type_ : String) : Bool
        if @type_.not_nil!.compareTo(type_) == 0
            return true
        else
            return false
        end
        return false
    end
end


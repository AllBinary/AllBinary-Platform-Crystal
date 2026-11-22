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
# package org.allbinary.logic

class StdUtil < JObject
    @j_EMPTY_VECTOR : ABVector? = nil

    def jf_EMPTY_VECTOR : ABVector?
        @j_EMPTY_VECTOR
    end

    def jf_EMPTY_VECTOR=(value : ABVector?) : ABVector?
        @j_EMPTY_VECTOR = value
    end
    @j_NULL_TABLE : ABHashtable? = nil

    def jf_NULL_TABLE : ABHashtable?
        @j_NULL_TABLE
    end

    def jf_NULL_TABLE=(value : ABHashtable?) : ABHashtable?
        @j_NULL_TABLE = value
    end
    @j_NULL_MAP : ABHashMap? = nil

    def jf_NULL_MAP : ABHashMap?
        @j_NULL_MAP
    end

    def jf_NULL_MAP=(value : ABHashMap?) : ABHashMap?
        @j_NULL_MAP = value
    end

    @@jst_instance : StdUtil? = nil

    def self.jst_instance : StdUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : StdUtil?) : StdUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = StdUtil.new.jinit_StdUtil()
    end
    

    def self.getInstance : StdUtil?
        return StdUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_StdUtil : Nil
    @j_EMPTY_VECTOR = self.createVector()
    @j_NULL_TABLE = self.createHashtable()
    @j_NULL_MAP = self.createHashMap()
    end

    def jinit_StdUtil : self
        jfields_StdUtil()
        self
    end
    

    def createStack : ABStack?
        return ABStack.new.jinit_ABStack()
    end
    

    def createVector : ABVector?
        return ABVector.new.jinit_ABVector()
    end
    

    def createHashtable : ABHashtable?
        return ABHashtable.new.jinit_ABHashtable()
    end
    

    def createHashMap : ABHashMap?
        return ABHashMap.new.jinit_ABHashMap()
    end
end


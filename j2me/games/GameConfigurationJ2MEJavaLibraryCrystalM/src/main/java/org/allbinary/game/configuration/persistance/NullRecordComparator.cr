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
# package org.allbinary.game.configuration.persistance

class NullRecordComparator < JObject
    include RecordComparator

    @@jst_NULL_RECORD_COMPARATOR : NullRecordComparator? = nil

    def self.jst_NULL_RECORD_COMPARATOR : NullRecordComparator?
        jclinit
        @@jst_NULL_RECORD_COMPARATOR
    end

    def self.jst_NULL_RECORD_COMPARATOR=(value : NullRecordComparator?) : NullRecordComparator?
        jclinit
        @@jst_NULL_RECORD_COMPARATOR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_RECORD_COMPARATOR = NullRecordComparator.new.jinit_NullRecordComparator()
    end

    def jinit_NullRecordComparator : self
        self
    end
    

    def compare(rec1 : Array(Int8)?, rec2 : Array(Int8)?) : Int32
        return 0
    end
end


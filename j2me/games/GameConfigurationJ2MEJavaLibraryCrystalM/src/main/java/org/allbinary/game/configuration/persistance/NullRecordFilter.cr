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

class NullRecordFilter < JObject
    include RecordFilter

    @@jst_NULL_RECORD_FILTER : NullRecordFilter? = nil

    def self.jst_NULL_RECORD_FILTER : NullRecordFilter?
        jclinit
        @@jst_NULL_RECORD_FILTER
    end

    def self.jst_NULL_RECORD_FILTER=(value : NullRecordFilter?) : NullRecordFilter?
        jclinit
        @@jst_NULL_RECORD_FILTER = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_RECORD_FILTER = NullRecordFilter.new.jinit_NullRecordFilter()
    end

    def jinit_NullRecordFilter : self
        self
    end
    

    def matches(candidate : Array(Int8)?) : Bool
        return true
    end
end


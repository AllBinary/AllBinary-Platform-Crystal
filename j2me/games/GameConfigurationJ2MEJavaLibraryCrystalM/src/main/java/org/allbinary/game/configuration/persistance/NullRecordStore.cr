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

class NullRecordStore < RecordStore

    @@jst_NULL_RECORD_STORE : NullRecordStore? = nil

    def self.jst_NULL_RECORD_STORE : NullRecordStore?
        jclinit
        @@jst_NULL_RECORD_STORE
    end

    def self.jst_NULL_RECORD_STORE=(value : NullRecordStore?) : NullRecordStore?
        jclinit
        @@jst_NULL_RECORD_STORE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_RECORD_STORE = NullRecordStore.new.jinit_NullRecordStore()
    end

    def jinit_NullRecordStore : self
        jinit_RecordStore()
        self
    end
end


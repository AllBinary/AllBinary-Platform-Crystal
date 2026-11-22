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
# package org.allbinary.logic.communication.log.config.type

class LogConfigTypes < JObject

    @@jst_LOGGING : BasicArrayList? = nil

    def self.jst_LOGGING : BasicArrayList?
        jclinit
        @@jst_LOGGING
    end

    def self.jst_LOGGING=(value : BasicArrayList?) : BasicArrayList?
        jclinit
        @@jst_LOGGING = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_LOGGING = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def jinit_LogConfigTypes : self
        self
    end
end


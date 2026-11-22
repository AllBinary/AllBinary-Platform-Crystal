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
# package org.allbinary.midlet

class MidletIcon < JObject

    @@jst_RESOURCE : String = ""

    def self.jst_RESOURCE : String
        jclinit
        @@jst_RESOURCE
    end

    def self.jst_RESOURCE=(value : String) : String
        jclinit
        @@jst_RESOURCE = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_RESOURCE = "icon"
    end

    def jinit_MidletIcon : self
        self
    end
end


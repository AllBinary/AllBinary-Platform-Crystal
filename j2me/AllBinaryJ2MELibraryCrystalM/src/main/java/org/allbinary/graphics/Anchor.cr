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
# package org.allbinary.graphics

class Anchor < JObject

    @@jst_TOP_LEFT : Int32 = 0

    def self.jst_TOP_LEFT : Int32
        jclinit
        @@jst_TOP_LEFT
    end

    def self.jst_TOP_LEFT=(value : Int32) : Int32
        jclinit
        @@jst_TOP_LEFT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_TOP_LEFT = Graphics.jst_TOP & Graphics.jst_LEFT
    end

    def jinit_Anchor : self
        self
    end
end


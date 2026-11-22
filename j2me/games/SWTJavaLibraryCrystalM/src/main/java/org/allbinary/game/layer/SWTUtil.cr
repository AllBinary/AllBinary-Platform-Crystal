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
# package org.allbinary.game.layer

class SWTUtil < JObject

    @@jst_isSWT : Bool = false

    def self.jst_isSWT : Bool
        jclinit
        @@jst_isSWT
    end

    def self.jst_isSWT=(value : Bool) : Bool
        jclinit
        @@jst_isSWT = value
    end

    @@jst_SWT : String = ""

    def self.jst_SWT : String
        jclinit
        @@jst_SWT
    end

    def self.jst_SWT=(value : String) : String
        jclinit
        @@jst_SWT = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_isSWT = true
        @@jst_SWT = "SWT"
    end

    def jinit_SWTUtil : self
        self
    end
end


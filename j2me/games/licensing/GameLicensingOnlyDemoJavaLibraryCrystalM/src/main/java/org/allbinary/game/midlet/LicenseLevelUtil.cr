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
# package org.allbinary.game.midlet

class LicenseLevelUtil < JObject

    @@jst_instance : LicenseLevelUtil? = nil

    def self.jst_instance : LicenseLevelUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LicenseLevelUtil?) : LicenseLevelUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LicenseLevelUtil.new.jinit_LicenseLevelUtil()
    end
    

    def self.getInstance : LicenseLevelUtil?
        return LicenseLevelUtil.jst_instance
    end

    def jinit_LicenseLevelUtil : self
        self
    end
    

    def getMaxLevel(maxLevel : Int, demoLevel : Int) : Int32
        maxLevel = maxLevel.to_i32!
        demoLevel = demoLevel.to_i32!
        return demoLevel
    end
end


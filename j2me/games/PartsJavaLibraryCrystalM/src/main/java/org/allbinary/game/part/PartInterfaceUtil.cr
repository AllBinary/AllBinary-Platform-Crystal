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
# package org.allbinary.game.part

class PartInterfaceUtil < JObject

    @@jst_SINGLETON : Array(PartInterface?)? = nil

    def self.jst_SINGLETON : Array(PartInterface?)?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : Array(PartInterface?)?) : Array(PartInterface?)?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = Array(PartInterface?).new(0, nil)
    end
    

    def self.getZeroArray : Array(PartInterface?)?
        return PartInterfaceUtil.jst_SINGLETON
    end

    def jinit_PartInterfaceUtil : self
        self
    end
end


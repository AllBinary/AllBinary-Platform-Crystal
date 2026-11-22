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
# package org.allbinary.logic.system.os

class NoOperatingSystem < GenericOperatingSystem

    @@jst_NO_OPERATING_SYSTEM : GenericOperatingSystem? = nil

    def self.jst_NO_OPERATING_SYSTEM : GenericOperatingSystem?
        jclinit
        @@jst_NO_OPERATING_SYSTEM
    end

    def self.jst_NO_OPERATING_SYSTEM=(value : GenericOperatingSystem?) : GenericOperatingSystem?
        jclinit
        @@jst_NO_OPERATING_SYSTEM = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NO_OPERATING_SYSTEM = GenericOperatingSystem.new.jinit_GenericOperatingSystem()
    end
    

    def jinit_NoOperatingSystem : self
        jinit_GenericOperatingSystem()
        self
    end
end


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
# package org.allbinary.input

class NoAllBinarySensor < AllBinarySensor

    @@jst_instance : NoAllBinarySensor? = nil

    def self.jst_instance : NoAllBinarySensor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NoAllBinarySensor?) : NoAllBinarySensor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NoAllBinarySensor.new.jinit_NoAllBinarySensor()
    end
    

    def self.getInstance : NoAllBinarySensor?
        return NoAllBinarySensor.jst_instance
    end
    

    def jinit_NoAllBinarySensor : self
        jinit_AllBinarySensor()
        self
    end
end


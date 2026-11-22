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
# package org.allbinary.thread

class NullRunnable < ARunnable

    @@jst_instance : NullRunnable? = nil

    def self.jst_instance : NullRunnable?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NullRunnable?) : NullRunnable?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullRunnable.new.jinit_NullRunnable()
    end
    

    def self.getInstance : NullRunnable?
        return NullRunnable.jst_instance
    end
    

    def jinit_NullRunnable : self
        jinit_ARunnable()
        self
    end
end


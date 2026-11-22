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
# package org.allbinary.android.view

class AllBinaryRenderer < JObject

    @@jst_instance : AllBinaryRenderer? = nil

    def self.jst_instance : AllBinaryRenderer?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AllBinaryRenderer?) : AllBinaryRenderer?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AllBinaryRenderer.new.jinit_AllBinaryRenderer()
    end
    

    def self.getInstance : AllBinaryRenderer?
        return AllBinaryRenderer.jst_instance
    end

    def jinit_AllBinaryRenderer : self
        self
    end
    

    def setRunnable(runnable : JRunnable?) : Nil
    end
    

    def clearRunnable : Nil
    end
end


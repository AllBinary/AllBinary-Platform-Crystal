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
# package org.allbinary.layer

class NullLayer < ABLayer

    @@jst_instance : NullLayer? = nil

    def self.jst_instance : NullLayer?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : NullLayer?) : NullLayer?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = NullLayer.new.jinit_NullLayer()
    end
    

    def self.getInstance : NullLayer?
        return NullLayer.jst_instance
    end
    

    def jinit_NullLayer : self
        jinit_ABLayer(0, 0)
        self
    end
    

    def paint(graphics : Graphics?) : Nil
    end
end


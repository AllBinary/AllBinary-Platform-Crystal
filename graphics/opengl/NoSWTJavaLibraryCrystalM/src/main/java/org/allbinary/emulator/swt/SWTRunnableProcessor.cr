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
# package org.allbinary.emulator.swt

class SWTRunnableProcessor < SWTProcessor

    @@jst_instanceR : SWTRunnableProcessor? = nil

    def self.jst_instanceR : SWTRunnableProcessor?
        jclinit
        @@jst_instanceR
    end

    def self.jst_instanceR=(value : SWTRunnableProcessor?) : SWTRunnableProcessor?
        jclinit
        @@jst_instanceR = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instanceR = SWTRunnableProcessor.new.jinit_SWTRunnableProcessor()
    end
    

    def self.getInstance : SWTRunnableProcessor?
        return SWTRunnableProcessor.jst_instanceR
    end

    def jinit_SWTRunnableProcessor : self
        jinit_SWTProcessor()
        self
    end
    

    def process(display : SwtDisplay?) : Nil
    end
end


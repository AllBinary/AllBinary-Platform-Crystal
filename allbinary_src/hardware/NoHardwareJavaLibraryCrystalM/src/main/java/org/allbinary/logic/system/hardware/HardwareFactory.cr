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
# package org.allbinary.logic.system.hardware

class HardwareFactory < JObject
    @j_SINGLETON : HardwareInterface? = nil

    def jf_SINGLETON : HardwareInterface?
        @j_SINGLETON
    end

    def jf_SINGLETON=(value : HardwareInterface?) : HardwareInterface?
        @j_SINGLETON = value
    end

    @@jst_instance : HardwareFactory? = nil

    def self.jst_instance : HardwareFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : HardwareFactory?) : HardwareFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = HardwareFactory.new.jinit_HardwareFactory()
    end
    

    def self.getInstance : HardwareFactory?
        return HardwareFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_HardwareFactory : Nil
    @j_SINGLETON = NoHardware.getInstance()
    end
    

    def jinit_HardwareFactory : self
        jfields_HardwareFactory()
        self
    end
    

    def getInstance(os : OperatingSystemInterface?) : HardwareInterface?
        begin
            return @j_SINGLETON
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            raise (e).not_nil!
            else
                raise jex1
            end
        end
        return nil
    end
end


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
# package org.allbinary.game

class Intermission < JObject
    include IntermissionInterface
    @enabled : Bool = false

    def jf_enabled : Bool
        @enabled
    end

    def jf_enabled=(value : Bool) : Bool
        @enabled = value
    end
    @timeElapsedHelper : TimeDelayHelper? = nil

    def jf_timeElapsedHelper : TimeDelayHelper?
        @timeElapsedHelper
    end

    def jf_timeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeElapsedHelper = value
    end
    @intermissionEnableListener : IntermissionEnableListenerInterface? = nil

    def jf_intermissionEnableListener : IntermissionEnableListenerInterface?
        @intermissionEnableListener
    end

    def jf_intermissionEnableListener=(value : IntermissionEnableListenerInterface?) : IntermissionEnableListenerInterface?
        @intermissionEnableListener = value
    end

    # Java field initializers run after the super constructor
    def jfields_Intermission : Nil
    
    @timeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    @intermissionEnableListener = NullIntermissionEnableListener.getInstance()
    end
    

    def jinit_Intermission : self
        jfields_Intermission()
        self
    end
    

    def setListener(enableListener : IntermissionEnableListenerInterface?) : Nil
        @intermissionEnableListener = JR.cast(enableListener, IntermissionEnableListenerInterface)
    end
    

    def getTimeDelayHelper : TimeDelayHelper?
        return @timeElapsedHelper
    end
    

    def setEnabled(enabled : Bool) : Nil
        @enabled = enabled
        if self.isEnabled()
            self.getTimeDelayHelper().not_nil!.setStartTimeTNT()
        end
        @intermissionEnableListener.not_nil!.notifyIntermission(enabled)
    end
    

    def isEnabled : Bool
        return @enabled
    end
end


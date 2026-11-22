# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.view

class NullEmulatorView < JObject
    include EmulatorViewInterface

    @@jst_NULL_EMULATOR_VIEW : NullEmulatorView? = nil

    def self.jst_NULL_EMULATOR_VIEW : NullEmulatorView?
        jclinit
        @@jst_NULL_EMULATOR_VIEW
    end

    def self.jst_NULL_EMULATOR_VIEW=(value : NullEmulatorView?) : NullEmulatorView?
        jclinit
        @@jst_NULL_EMULATOR_VIEW = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_EMULATOR_VIEW = NullEmulatorView.new.jinit_NullEmulatorView()
    end

    def jinit_NullEmulatorView : self
        self
    end
    

    def setMidlet(midlet : MIDlet?) : Nil
    end
    

    def onEmulatorInitComplete(midletActivity : JAny) : Nil
    end
    

    def onSetDisplayable(displayable : Displayable?) : Nil
    end
end


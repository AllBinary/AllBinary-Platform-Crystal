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
# package org.allbinary.midlet

class MidletExitProcessor < Processor
    @midlet : MIDlet? = nil

    def jf_midlet : MIDlet?
        @midlet
    end

    def jf_midlet=(value : MIDlet?) : MIDlet?
        @midlet = value
    end
    

    def jinit_MidletExitProcessor(midlet : MIDlet?) : self
        jinit_Processor()
        @midlet = midlet
        self
    end
    

    def process : Nil
    end
end


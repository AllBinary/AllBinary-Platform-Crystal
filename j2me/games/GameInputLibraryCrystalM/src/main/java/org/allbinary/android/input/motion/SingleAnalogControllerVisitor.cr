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
# package org.allbinary.android.input.motion

class SingleAnalogControllerVisitor < AnalogControllerVisitor
    @playerInputId : Int32 = 0

    def jf_playerInputId : Int32
        @playerInputId
    end

    def jf_playerInputId=(value : Int32) : Int32
        @playerInputId = value
    end
    

    def jinit_SingleAnalogControllerVisitor(playerInputId : Int) : self
        playerInputId = playerInputId.to_i32!
        jinit_AnalogControllerVisitor()
        @playerInputId = playerInputId
        self
    end
    

    def process(allbinaryLayerManager : AllBinaryLayerManager?, analogLocationInputProcessor : AnalogLocationInputProcessor?) : Nil
        analogLocationInput : AnalogLocationInput? = AnalogLocationInputFactory.getInstance().not_nil!.getInstanceForPlayer(@playerInputId)
        analogLocationInputProcessor.not_nil!.process(allbinaryLayerManager, analogLocationInput)
    end
end


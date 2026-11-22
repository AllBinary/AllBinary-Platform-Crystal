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

class AllAnalogControllerVisitor < AnalogControllerVisitor

    def jinit_AllAnalogControllerVisitor : self
        jinit_AnalogControllerVisitor()
        self
    end
    

    def process(allbinaryLayerManager : AllBinaryLayerManager?, analogLocationInputProcessor : AnalogLocationInputProcessor?) : Nil
        analogLocationInputList : BasicArrayList? = AnalogLocationInputFactory.getInstance().not_nil!.getList()
        analogLocationInput : AnalogLocationInput? = nil
        index : Int32 = analogLocationInputList.not_nil!.size() &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            analogLocationInput = JR.cast(analogLocationInputList.not_nil!.get(index), AnalogLocationInput)
            analogLocationInputProcessor.not_nil!.process(allbinaryLayerManager, analogLocationInput)
        end
    end
end


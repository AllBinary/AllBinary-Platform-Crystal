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
# package org.allbinary.graphics.font

class UpdateMyFontProcessor < MyFontProcessor
    @updateMeasurementProcessor : UpdateMyFontInterface? = nil

    def jf_updateMeasurementProcessor : UpdateMyFontInterface?
        @updateMeasurementProcessor
    end

    def jf_updateMeasurementProcessor=(value : UpdateMyFontInterface?) : UpdateMyFontInterface?
        @updateMeasurementProcessor = value
    end
    

    def jinit_UpdateMyFontProcessor(keyValueDrawCharArray : UpdateMyFontInterface?) : self
        jinit_MyFontProcessor()
        @updateMeasurementProcessor = JR.cast(keyValueDrawCharArray, UpdateMyFontInterface)
        self
    end
    

    def process(graphics : Graphics?) : Nil
        @updateMeasurementProcessor.not_nil!.updateMeasurement(graphics)
    end
end


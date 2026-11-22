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
# package org.allbinary.game.input.mapping.event

class InputMappingEvent < AllBinaryEventObject
    @inputToGameKeyMapping : InputToGameKeyMapping? = nil

    def jf_inputToGameKeyMapping : InputToGameKeyMapping?
        @inputToGameKeyMapping
    end

    def jf_inputToGameKeyMapping=(value : InputToGameKeyMapping?) : InputToGameKeyMapping?
        @inputToGameKeyMapping = value
    end

    # Java field initializers run after the super constructor
    def jfields_InputMappingEvent : Nil
    @inputToGameKeyMapping = InputToGameKeyMapping.getNullInstance()
    end
    

    def jinit_InputMappingEvent(anyType : JAny) : self
        jinit_AllBinaryEventObject(anyType)
        jfields_InputMappingEvent()
        self
    end
    

    def setInputToGameKeyMapping(inputToGameKeyMapping : InputToGameKeyMapping?) : Nil
        @inputToGameKeyMapping = inputToGameKeyMapping
    end
    

    def getInputToGameKeyMapping : InputToGameKeyMapping?
        return @inputToGameKeyMapping
    end
end


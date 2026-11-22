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
# package org.allbinary.game.input

class InputProcessorFactory < JObject
    @inputProcessor : InputProcessor? = nil

    def jf_inputProcessor : InputProcessor?
        @inputProcessor
    end

    def jf_inputProcessor=(value : InputProcessor?) : InputProcessor?
        @inputProcessor = value
    end

    @@jst_instance : InputProcessorFactory? = nil

    def self.jst_instance : InputProcessorFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : InputProcessorFactory?) : InputProcessorFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = InputProcessorFactory.new.jinit_InputProcessorFactory()
    end
    

    def self.getInstance : InputProcessorFactory?
        return InputProcessorFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_InputProcessorFactory : Nil
    @inputProcessor = InputProcessor.new.jinit_InputProcessor()
    end

    def jinit_InputProcessorFactory : self
        jfields_InputProcessorFactory()
        self
    end
    

    def getInputProcessor : InputProcessor?
        return @inputProcessor
    end
end


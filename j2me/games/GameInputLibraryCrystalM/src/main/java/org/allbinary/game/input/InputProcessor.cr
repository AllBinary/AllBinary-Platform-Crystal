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

class InputProcessor < JObject
    @gameInputStrings : GameInputStrings? = nil

    def jf_gameInputStrings : GameInputStrings?
        @gameInputStrings
    end

    def jf_gameInputStrings=(value : GameInputStrings?) : GameInputStrings?
        @gameInputStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_InputProcessor : Nil
    @gameInputStrings = GameInputStrings.getInstance()
    end

    def jinit_InputProcessor : self
        jfields_InputProcessor()
        self
    end
    

    def keyPressedByDevice(keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
    

    def keyReleasedByDevice(canvas : Canvas?, keyCode : Int, deviceId : Int) : Nil
        keyCode = keyCode.to_i32!
        deviceId = deviceId.to_i32!
    end
end


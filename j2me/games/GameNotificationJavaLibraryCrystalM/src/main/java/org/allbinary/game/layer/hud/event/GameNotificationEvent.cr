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
# package org.allbinary.game.layer.hud.event

class GameNotificationEvent < AllBinaryEventObject
    @string : String = ""

    def jf_string : String
        @string
    end

    def jf_string=(value : String) : String
        @string = value
    end
    @seconds : JInteger? = nil

    def jf_seconds : JInteger?
        @seconds
    end

    def jf_seconds=(value : JInteger?) : JInteger?
        @seconds = value
    end
    @basicColor : BasicColor? = nil

    def jf_basicColor : BasicColor?
        @basicColor
    end

    def jf_basicColor=(value : BasicColor?) : BasicColor?
        @basicColor = value
    end
    @removeable : JBoolean? = nil

    def jf_removeable : JBoolean?
        @removeable
    end

    def jf_removeable=(value : JBoolean?) : JBoolean?
        @removeable = value
    end

    # Java field initializers run after the super constructor
    def jfields_GameNotificationEvent : Nil
    @string = StringUtil.getInstance().not_nil!.jf_EMPTY_STRING
    
    @basicColor = BasicColorFactory.getInstance().not_nil!.jf_BLACK
    
    end
    

    def jinit_GameNotificationEvent(anyType : JAny, string : String, seconds : JInteger?, basicColor : BasicColor?, permanent : JBoolean?) : self
        jinit_AllBinaryEventObject(anyType)
        jfields_GameNotificationEvent()
        self.setString(string)
        @seconds = seconds
        self.setBasicColorP(basicColor)
        @removeable = permanent
        self
    end
    

    def getString : String
        return @string
    end
    

    def getSeconds : JInteger?
        return @seconds
    end
    

    def getBasicColorP : BasicColor?
        return @basicColor
    end
    

    def getPermanent : JBoolean?
        return @removeable
    end
    

    def setString(string : String) : Nil
        @string = string
    end
    

    def setBasicColorP(basicColor : BasicColor?) : Nil
        @basicColor = basicColor
    end
end


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
# package org.allbinary.direction

class DirectionFactory < JObject
    @j_NAME : String = ""

    def jf_NAME : String
        @j_NAME
    end

    def jf_NAME=(value : String) : String
        @j_NAME = value
    end
    @j_LEFT : Direction? = nil

    def jf_LEFT : Direction?
        @j_LEFT
    end

    def jf_LEFT=(value : Direction?) : Direction?
        @j_LEFT = value
    end
    @j_RIGHT : Direction? = nil

    def jf_RIGHT : Direction?
        @j_RIGHT
    end

    def jf_RIGHT=(value : Direction?) : Direction?
        @j_RIGHT = value
    end
    @j_DOWN : Direction? = nil

    def jf_DOWN : Direction?
        @j_DOWN
    end

    def jf_DOWN=(value : Direction?) : Direction?
        @j_DOWN = value
    end
    @j_UP : Direction? = nil

    def jf_UP : Direction?
        @j_UP
    end

    def jf_UP=(value : Direction?) : Direction?
        @j_UP = value
    end
    @j_UP_LEFT : Direction? = nil

    def jf_UP_LEFT : Direction?
        @j_UP_LEFT
    end

    def jf_UP_LEFT=(value : Direction?) : Direction?
        @j_UP_LEFT = value
    end
    @j_UP_RIGHT : Direction? = nil

    def jf_UP_RIGHT : Direction?
        @j_UP_RIGHT
    end

    def jf_UP_RIGHT=(value : Direction?) : Direction?
        @j_UP_RIGHT = value
    end
    @j_DOWN_LEFT : Direction? = nil

    def jf_DOWN_LEFT : Direction?
        @j_DOWN_LEFT
    end

    def jf_DOWN_LEFT=(value : Direction?) : Direction?
        @j_DOWN_LEFT = value
    end
    @j_DOWN_RIGHT : Direction? = nil

    def jf_DOWN_RIGHT : Direction?
        @j_DOWN_RIGHT
    end

    def jf_DOWN_RIGHT=(value : Direction?) : Direction?
        @j_DOWN_RIGHT = value
    end
    @j_NOT_BORDERED_WITH : Direction? = nil

    def jf_NOT_BORDERED_WITH : Direction?
        @j_NOT_BORDERED_WITH
    end

    def jf_NOT_BORDERED_WITH=(value : Direction?) : Direction?
        @j_NOT_BORDERED_WITH = value
    end
    @j_NO_DIRECTION : Direction? = nil

    def jf_NO_DIRECTION : Direction?
        @j_NO_DIRECTION
    end

    def jf_NO_DIRECTION=(value : Direction?) : Direction?
        @j_NO_DIRECTION = value
    end
    @j_TOP : Direction? = nil

    def jf_TOP : Direction?
        @j_TOP
    end

    def jf_TOP=(value : Direction?) : Direction?
        @j_TOP = value
    end
    @j_BOTTOM : Direction? = nil

    def jf_BOTTOM : Direction?
        @j_BOTTOM
    end

    def jf_BOTTOM=(value : Direction?) : Direction?
        @j_BOTTOM = value
    end
    @j_ALL_DIRECTION : Direction? = nil

    def jf_ALL_DIRECTION : Direction?
        @j_ALL_DIRECTION
    end

    def jf_ALL_DIRECTION=(value : Direction?) : Direction?
        @j_ALL_DIRECTION = value
    end

    @@jst_instance : DirectionFactory? = nil

    def self.jst_instance : DirectionFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DirectionFactory?) : DirectionFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DirectionFactory.new.jinit_DirectionFactory()
    end
    

    def self.getInstance : DirectionFactory?
        return DirectionFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DirectionFactory : Nil
    @j_NAME = "DIRECTION"
    @j_LEFT = Direction.new.jinit_Direction(CommonPhoneStrings.getInstance().not_nil!.jf_LEFT, "WEST", 0, 1)
    @j_RIGHT = Direction.new.jinit_Direction(CommonPhoneStrings.getInstance().not_nil!.jf_RIGHT, "EAST", 1, 0)
    @j_DOWN = Direction.new.jinit_Direction(CommonPhoneStrings.getInstance().not_nil!.jf_DOWN, "SOUTH", 2, 0)
    @j_UP = Direction.new.jinit_Direction(CommonPhoneStrings.getInstance().not_nil!.jf_UP, "NORTH", 3, 0)
    
    
    
    
    @j_NOT_BORDERED_WITH = Direction.new.jinit_Direction("NOT_BORDERED_WITH", "NOT_BORDERED_WITH", 8, 0)
    @j_NO_DIRECTION = Direction.new.jinit_Direction("NO_DIRECTION", "NO_DIRECTION", 9, 0)
    @j_TOP = Direction.new.jinit_Direction("TOP", "TOP", 10, 0)
    @j_BOTTOM = Direction.new.jinit_Direction("BOTTOM", "BOTTOM", 11, 0)
    @j_ALL_DIRECTION = Direction.new.jinit_Direction("ALL_DIRECTION", "ALL_DIRECTION", 12, 0)
    end
    

    def jinit_DirectionFactory : self
        jfields_DirectionFactory()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        @j_UP_LEFT = Direction.new.jinit_Direction("UP LEFT", stringBuffer.not_nil!.append(@j_UP.not_nil!.getOtherName()).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_LEFT.not_nil!.getOtherName()).not_nil!.toString(), 4, 0)
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        @j_UP_RIGHT = Direction.new.jinit_Direction("UP RIGHT", stringBuffer.not_nil!.append(@j_UP.not_nil!.getOtherName()).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_RIGHT.not_nil!.getOtherName()).not_nil!.toString(), 5, 0)
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        @j_DOWN_LEFT = Direction.new.jinit_Direction("DOWN LEFT", stringBuffer.not_nil!.append(@j_DOWN.not_nil!.getOtherName()).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_LEFT.not_nil!.getOtherName()).not_nil!.toString(), 6, 0)
        stringBuffer.not_nil!.delete(0, stringBuffer.not_nil!.length())
        @j_DOWN_RIGHT = Direction.new.jinit_Direction("DOWN RIGHT", stringBuffer.not_nil!.append(@j_DOWN.not_nil!.getOtherName()).not_nil!.append(commonSeps.not_nil!.jf_SPACE).not_nil!.append(@j_RIGHT.not_nil!.getOtherName()).not_nil!.toString(), 7, 0)
        self
    end
end


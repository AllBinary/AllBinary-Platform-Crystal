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

class TestInputExample < JObject
    include TestInputInterface
    @testValue : Int32 = 0

    def jf_testValue : Int32
        @testValue
    end

    def jf_testValue=(value : Int32) : Int32
        @testValue = value
    end

    def jinit_TestInputExample : self
        self
    end
    

    def up : Nil
    end
    

    def down : Nil
    end
    

    def left : Nil
        @testValue &+= 1
    end
    

    def right : Nil
        @testValue &-= 1
    end
    

    def strafeLeft : Nil
    end
    

    def strafeRight : Nil
    end
    

    def paint(graphics : Graphics?) : Nil
    end
    

    def paintThreed(graphics : Graphics?) : Nil
    end
end


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
# package org.allbinary.game.physics.acceleration

class BasicAccelerationProperties < JObject
    @forward : Int32 = 0

    def jf_forward : Int32
        @forward
    end

    def jf_forward=(value : Int32) : Int32
        @forward = value
    end
    @reverse : Int32 = 0

    def jf_reverse : Int32
        @reverse
    end

    def jf_reverse=(value : Int32) : Int32
        @reverse = value
    end
    

    def jinit_BasicAccelerationProperties(forward : Int, reverse : Int) : self
        forward = forward.to_i32!
        reverse = reverse.to_i32!
        self.setForward(forward)
        self.setReverse(reverse)
        self
    end
    

    def setReverse(reverse : Int) : Nil
        reverse = reverse.to_i32!
        @reverse = reverse
    end
    

    def getReverse : Int32
        return @reverse
    end
    

    def setForward(forward : Int) : Nil
        forward = forward.to_i32!
        @forward = forward
    end
    

    def getForward : Int32
        return @forward
    end
end


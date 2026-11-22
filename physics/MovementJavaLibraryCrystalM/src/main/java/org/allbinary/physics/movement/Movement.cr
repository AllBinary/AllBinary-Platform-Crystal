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
# package org.allbinary.physics.movement

class Movement < JObject
    include MovementInterface
    

    def jinit_Movement : self
        self
    end
    

    def init(speedBasicDecimal : BasicDecimal?, angle : Int, otherAngle : Int) : Nil
        angle = angle.to_i32!
        otherAngle = otherAngle.to_i32!
    end
    

    def process(layer : AllBinaryGameLayer?) : Nil
    end
    

    def stop : Nil
    end
end


# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.game.physics.velocity

class VelocityBehaviorBase < JObject

    def jinit_VelocityBehaviorBase : self
        self
    end
    

    def reduce(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
    end
    

    def reduceX(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
    end
    

    def reduceY(velocityProperties : BasicVelocityProperties?, nominator : Int, denominator : Int) : Nil
        nominator = nominator.to_i32!
        denominator = denominator.to_i32!
    end
end


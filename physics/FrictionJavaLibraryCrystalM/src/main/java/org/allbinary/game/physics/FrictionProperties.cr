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
# package org.allbinary.game.physics

class FrictionProperties < JObject
    

    def jinit_FrictionProperties : self
        self
    end
    

    def friction(velocityProperties : VelocityProperties?, nominator : Int) : Nil
        nominator = nominator.to_i32!
        DragVelocityBehavior.jst_instance.not_nil!.reduce(velocityProperties, nominator, FrictionData.getFrictionDenominator())
    end
end


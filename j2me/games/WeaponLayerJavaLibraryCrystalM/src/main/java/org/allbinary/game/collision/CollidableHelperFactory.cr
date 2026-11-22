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
# package org.allbinary.game.collision

class CollidableHelperFactory < JObject
    

    def self.getInstance : CollisionHelper?
        if Features.getInstance().not_nil!.isFeature(GameFeatureFactory.getInstance().not_nil!.jf_COLLISIONS_WITH_SOURCE)
            return CollisionHelper.new.jinit_CollisionHelper(AllBinaryLayer.jst_NULL_ALLBINARY_LAYER)
        else
            return SourceCollisionHelper.new.jinit_SourceCollisionHelper(AllBinaryLayer.jst_NULL_ALLBINARY_LAYER)
        end
        return nil
    end

    def jinit_CollidableHelperFactory : self
        self
    end
end


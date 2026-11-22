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
# package org.allbinary.game.layer.pickup

class IconLayerFactory < JObject
    

    def self.getInstance(animationInterface : Animation?, width : Int, height : Int) : IconLayer?
        width = width.to_i32!
        height = height.to_i32!
        return IconLayer.new.jinit_IconLayer(animationInterface, width, height)
    end

    def jinit_IconLayerFactory : self
        self
    end
end


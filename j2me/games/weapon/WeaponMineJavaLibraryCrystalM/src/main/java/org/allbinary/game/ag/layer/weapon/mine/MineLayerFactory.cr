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
# package org.allbinary.game.ag.layer.weapon.mine

class MineLayerFactory < JObject
    include AllBinaryLayerFactoryInterface
    @viewPositionFactoryInterface : ViewPositionFactoryInterface? = nil

    def jf_viewPositionFactoryInterface : ViewPositionFactoryInterface?
        @viewPositionFactoryInterface
    end

    def jf_viewPositionFactoryInterface=(value : ViewPositionFactoryInterface?) : ViewPositionFactoryInterface?
        @viewPositionFactoryInterface = value
    end
    

    def jinit_MineLayerFactory(viewPositionFactoryInterface : ViewPositionFactoryInterface?) : self
        @viewPositionFactoryInterface = JR.cast(viewPositionFactoryInterface, ViewPositionFactoryInterface)
        self
    end
    

    def getInstance : AllBinaryLayer?
        return MineLayer.new.jinit_MineLayer(JR.cast(@viewPositionFactoryInterface.not_nil!.getInstance(), ViewPositionBase))
    end
end


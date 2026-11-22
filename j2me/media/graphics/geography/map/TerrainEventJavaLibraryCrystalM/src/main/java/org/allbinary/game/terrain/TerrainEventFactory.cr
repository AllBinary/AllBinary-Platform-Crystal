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
# package org.allbinary.game.terrain

class TerrainEventFactory < JObject
    include AllBinaryEventObjectFactoryInterface
    

    def jinit_TerrainEventFactory : self
        self
    end
    

    def getInstance : AllBinaryEventObject?
        return TerrainEvent.new.jinit_TerrainEvent(NullUtil.getInstance().not_nil!.jf_NULL_OBJECT)
    end
end


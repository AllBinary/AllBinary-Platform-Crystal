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
# package org.allbinary.game.ag.vector

class MineVectorData < JObject

    @@jst_points : Array(Array(Array(Int32)?)?)? = nil

    def self.jst_points : Array(Array(Array(Int32)?)?)?
        jclinit
        @@jst_points
    end

    def self.jst_points=(value : Array(Array(Array(Int32)?)?)?) : Array(Array(Array(Int32)?)?)?
        jclinit
        @@jst_points = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_points = [[[10, 5] of Int32, [2, 6] of Int32, [1000, 1000] of Int32, [2, 2] of Int32, [10, 9] of Int32, [1000, 1000] of Int32, [10, 2] of Int32, [2, 9] of Int32, [1000, 1000] of Int32, [2, 5] of Int32, [10, 6] of Int32, [1000, 1000] of Int32, [7, 9] of Int32, [5, 2] of Int32, [1000, 1000] of Int32, [7, 2] of Int32, [5, 9] of Int32, [1000, 1000] of Int32] of Array(Int32)?] of Array(Array(Int32)?)?
    end
    

    def jinit_MineVectorData : self
        self
    end
end


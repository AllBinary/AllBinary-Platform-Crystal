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
# package org.allbinary.ag.game.vector

class HealthVectorData < JObject

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
        @@jst_points = [[[2, 1] of Int32, [3, 2] of Int32, [3, 2] of Int32, [4, 1] of Int32, [4, 1] of Int32, [5, 1] of Int32, [5, 1] of Int32, [6, 2] of Int32, [6, 2] of Int32, [6, 3] of Int32, [6, 3] of Int32, [3, 6] of Int32, [3, 6] of Int32, [0, 3] of Int32, [0, 3] of Int32, [0, 2] of Int32, [0, 2] of Int32, [1, 1] of Int32, [1, 1] of Int32, [2, 1] of Int32, [1000, 1000] of Int32] of Array(Int32)?] of Array(Array(Int32)?)?
    end

    def jinit_HealthVectorData : self
        self
    end
end


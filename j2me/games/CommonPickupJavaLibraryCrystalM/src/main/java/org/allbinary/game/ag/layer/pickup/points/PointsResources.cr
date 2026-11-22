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
# package org.allbinary.game.ag.layer.pickup.points

class PointsResources < JObject
    @j_RESOURCE : String = ""

    def jf_RESOURCE : String
        @j_RESOURCE
    end

    def jf_RESOURCE=(value : String) : String
        @j_RESOURCE = value
    end
    @j_RESOURCE_2 : String = ""

    def jf_RESOURCE_2 : String
        @j_RESOURCE_2
    end

    def jf_RESOURCE_2=(value : String) : String
        @j_RESOURCE_2 = value
    end
    @j_RESOURCE_3 : String = ""

    def jf_RESOURCE_3 : String
        @j_RESOURCE_3
    end

    def jf_RESOURCE_3=(value : String) : String
        @j_RESOURCE_3 = value
    end
    @j_RESOURCE_4 : String = ""

    def jf_RESOURCE_4 : String
        @j_RESOURCE_4
    end

    def jf_RESOURCE_4=(value : String) : String
        @j_RESOURCE_4 = value
    end

    @@jst_SINGLETON : PointsResources? = nil

    def self.jst_SINGLETON : PointsResources?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : PointsResources?) : PointsResources?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = PointsResources.new.jinit_PointsResources()
    end
    

    def self.getInstance : PointsResources?
        return PointsResources.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_PointsResources : Nil
    @j_RESOURCE = "points_drop_20_by_20.png"
    @j_RESOURCE_2 = "points_2_drop_20_by_20.png"
    @j_RESOURCE_3 = "points_3_drop_20_by_20.png"
    @j_RESOURCE_4 = "points_4_drop_20_by_20.png"
    end
    

    def jinit_PointsResources : self
        jfields_PointsResources()
        self
    end
end


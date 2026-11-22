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
# package org.allbinary.math

class PositionStrings < JObject
    @j_X : String = ""

    def jf_X : String
        @j_X
    end

    def jf_X=(value : String) : String
        @j_X = value
    end
    @j_Y : String = ""

    def jf_Y : String
        @j_Y
    end

    def jf_Y=(value : String) : String
        @j_Y = value
    end
    @j_X_LABEL : String = ""

    def jf_X_LABEL : String
        @j_X_LABEL
    end

    def jf_X_LABEL=(value : String) : String
        @j_X_LABEL = value
    end
    @j_Y_LABEL : String = ""

    def jf_Y_LABEL : String
        @j_Y_LABEL
    end

    def jf_Y_LABEL=(value : String) : String
        @j_Y_LABEL = value
    end
    @j_Z_LABEL : String = ""

    def jf_Z_LABEL : String
        @j_Z_LABEL
    end

    def jf_Z_LABEL=(value : String) : String
        @j_Z_LABEL = value
    end
    @j_DX_LABEL : String = ""

    def jf_DX_LABEL : String
        @j_DX_LABEL
    end

    def jf_DX_LABEL=(value : String) : String
        @j_DX_LABEL = value
    end
    @j_DY_LABEL : String = ""

    def jf_DY_LABEL : String
        @j_DY_LABEL
    end

    def jf_DY_LABEL=(value : String) : String
        @j_DY_LABEL = value
    end
    @j_DZ_LABEL : String = ""

    def jf_DZ_LABEL : String
        @j_DZ_LABEL
    end

    def jf_DZ_LABEL=(value : String) : String
        @j_DZ_LABEL = value
    end

    @@jst_instance : PositionStrings? = nil

    def self.jst_instance : PositionStrings?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : PositionStrings?) : PositionStrings?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = PositionStrings.new.jinit_PositionStrings()
    end
    

    def self.getInstance : PositionStrings?
        return PositionStrings.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_PositionStrings : Nil
    @j_X = "x"
    @j_Y = "y"
    @j_X_LABEL = "x: "
    @j_Y_LABEL = "y: "
    @j_Z_LABEL = "z: "
    @j_DX_LABEL = "dx: "
    @j_DY_LABEL = "dy: "
    @j_DZ_LABEL = "dz: "
    end

    def jinit_PositionStrings : self
        jfields_PositionStrings()
        self
    end
end


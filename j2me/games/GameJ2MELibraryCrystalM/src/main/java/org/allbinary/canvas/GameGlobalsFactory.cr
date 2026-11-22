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
# package org.allbinary.canvas

class GameGlobalsFactory < JObject
    @newCanvas : Bool = false

    def jf_newCanvas : Bool
        @newCanvas
    end

    def jf_newCanvas=(value : Bool) : Bool
        @newCanvas = value
    end
    @newDisplaybleTime : Int64 = 0_i64

    def jf_newDisplaybleTime : Int64
        @newDisplaybleTime
    end

    def jf_newDisplaybleTime=(value : Int64) : Int64
        @newDisplaybleTime = value
    end
    @point : GPoint? = nil

    def jf_point : GPoint?
        @point
    end

    def jf_point=(value : GPoint?) : GPoint?
        @point = value
    end

    @@jst_instance : GameGlobalsFactory? = nil

    def self.jst_instance : GameGlobalsFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameGlobalsFactory?) : GameGlobalsFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameGlobalsFactory.new.jinit_GameGlobalsFactory()
    end
    

    def self.getInstance : GameGlobalsFactory?
        return GameGlobalsFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameGlobalsFactory : Nil
    @newCanvas = true
    @newDisplaybleTime = (JInteger.jst_MIN_VALUE).to_i64!
    @point = PointFactory.getInstance().not_nil!.jf_ZERO_ZERO
    end

    def jinit_GameGlobalsFactory : self
        jfields_GameGlobalsFactory()
        self
    end
end


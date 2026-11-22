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

class AngleIncrementInfoFactory < JObject
    @angleIncrementInfo : Array(AngleIncrementInfo?)? = nil

    def jf_angleIncrementInfo : Array(AngleIncrementInfo?)?
        @angleIncrementInfo
    end

    def jf_angleIncrementInfo=(value : Array(AngleIncrementInfo?)?) : Array(AngleIncrementInfo?)?
        @angleIncrementInfo = value
    end

    @@jst_instance : AngleIncrementInfoFactory? = nil

    def self.jst_instance : AngleIncrementInfoFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : AngleIncrementInfoFactory?) : AngleIncrementInfoFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = AngleIncrementInfoFactory.new.jinit_AngleIncrementInfoFactory()
    end
    

    def self.getInstance : AngleIncrementInfoFactory?
        return AngleIncrementInfoFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_AngleIncrementInfoFactory : Nil
    @angleIncrementInfo = Array(AngleIncrementInfo?).new((AngleFactory.getInstance().not_nil!.jf_TOTAL_ANGLE).to_i32!, nil)
    end

    def jinit_AngleIncrementInfoFactory : self
        jfields_AngleIncrementInfoFactory()
        self
    end
    

    def getAt(angleIncrement : Int) : AngleIncrementInfo?
        angleIncrement = angleIncrement.to_i16!
        halfAngleIncrement : Int32 = (JR.shr((angleIncrement).to_i32!, 1))
        angleIncrementInfo : AngleIncrementInfo? = nil
        angleIncrementInfoCanBeNull : AngleIncrementInfo? = @angleIncrementInfo.not_nil![halfAngleIncrement]
        if (angleIncrementInfoCanBeNull).nil?
            angleIncrementInfo = AngleIncrementInfo.new.jinit_AngleIncrementInfo(angleIncrement)
            @angleIncrementInfo.not_nil![halfAngleIncrement] = angleIncrementInfo
            return angleIncrementInfo
        else
            angleIncrementInfo = angleIncrementInfoCanBeNull
        end
        return angleIncrementInfo
    end
end


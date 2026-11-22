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
# package org.allbinary.direction

class DirectionUtil < JObject
    @directionArray : Array(Angle?)? = nil

    def jf_directionArray : Array(Angle?)?
        @directionArray
    end

    def jf_directionArray=(value : Array(Angle?)?) : Array(Angle?)?
        @directionArray = value
    end
    @directionArray2 : Array(Angle?)? = nil

    def jf_directionArray2 : Array(Angle?)?
        @directionArray2
    end

    def jf_directionArray2=(value : Array(Angle?)?) : Array(Angle?)?
        @directionArray2 = value
    end

    @@jst_instance : DirectionUtil? = nil

    def self.jst_instance : DirectionUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : DirectionUtil?) : DirectionUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = DirectionUtil.new.jinit_DirectionUtil()
    end
    

    def self.getInstance : DirectionUtil?
        return DirectionUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_DirectionUtil : Nil
    @directionArray = Array(Angle?).new(10, nil)
    @directionArray2 = Array(Angle?).new(10, nil)
    end
    

    def jinit_DirectionUtil : self
        jfields_DirectionUtil()
        angleFactory : AngleFactory? = AngleFactory.getInstance()
        directionFactory : DirectionFactory? = DirectionFactory.getInstance()
        @directionArray.not_nil![directionFactory.not_nil!.jf_LEFT.not_nil!.getValue()] = angleFactory.not_nil!.jf_LEFT
        @directionArray.not_nil![directionFactory.not_nil!.jf_RIGHT.not_nil!.getValue()] = angleFactory.not_nil!.jf_RIGHT
        @directionArray.not_nil![directionFactory.not_nil!.jf_UP.not_nil!.getValue()] = angleFactory.not_nil!.jf_UP
        @directionArray.not_nil![directionFactory.not_nil!.jf_DOWN.not_nil!.getValue()] = angleFactory.not_nil!.jf_DOWN
        @directionArray2.not_nil![directionFactory.not_nil!.jf_LEFT.not_nil!.getValue()] = angleFactory.not_nil!.jf_LEFT
        @directionArray2.not_nil![directionFactory.not_nil!.jf_RIGHT.not_nil!.getValue()] = angleFactory.not_nil!.jf_RIGHT
        @directionArray2.not_nil![directionFactory.not_nil!.jf_UP.not_nil!.getValue()] = angleFactory.not_nil!.jf_UP
        @directionArray2.not_nil![directionFactory.not_nil!.jf_DOWN.not_nil!.getValue()] = angleFactory.not_nil!.jf_DOWN
        self
    end
    

    def getAngle(direction : Direction?) : Angle?
        return @directionArray2.not_nil![direction.not_nil!.getValue()]
    end
    

    def getFrameAngle(direction : Direction?) : Angle?
        return @directionArray.not_nil![direction.not_nil!.getValue()]
    end
end


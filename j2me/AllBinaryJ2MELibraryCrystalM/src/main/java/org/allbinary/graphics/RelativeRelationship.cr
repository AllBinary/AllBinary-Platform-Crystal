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
# package org.allbinary.graphics

class RelativeRelationship < JObject
    @typesAllowedList : BasicArrayList? = nil

    def jf_typesAllowedList : BasicArrayList?
        @typesAllowedList
    end

    def jf_typesAllowedList=(value : BasicArrayList?) : BasicArrayList?
        @typesAllowedList = value
    end
    @x : Int32 = 0

    def jf_x : Int32
        @x
    end

    def jf_x=(value : Int32) : Int32
        @x = value
    end
    @y : Int32 = 0

    def jf_y : Int32
        @y
    end

    def jf_y=(value : Int32) : Int32
        @y = value
    end
    @z : Int32 = 0

    def jf_z : Int32
        @z
    end

    def jf_z=(value : Int32) : Int32
        @z = value
    end

    @@jst_NULL_RELATIVE_RELATIONSHIP : RelativeRelationship? = nil

    def self.jst_NULL_RELATIVE_RELATIONSHIP : RelativeRelationship?
        jclinit
        @@jst_NULL_RELATIVE_RELATIONSHIP
    end

    def self.jst_NULL_RELATIVE_RELATIONSHIP=(value : RelativeRelationship?) : RelativeRelationship?
        jclinit
        @@jst_NULL_RELATIVE_RELATIONSHIP = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_RELATIVE_RELATIONSHIP = RelativeRelationship.new.jinit_RelativeRelationship(PointFactory.getInstance().not_nil!.jf_ZERO_ZERO, BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance())
    end
    

    def jinit_RelativeRelationship(point : GPoint?, typesAllowedList : BasicArrayList?) : self
        @x = point.not_nil!.getX()
        @y = point.not_nil!.getY()
        @z = point.not_nil!.getZ()
        @typesAllowedList = typesAllowedList
        self
    end
    

    def getX : Int32
        return @x
    end
    

    def getY : Int32
        return @y
    end
    

    def getZ : Int32
        return @z
    end
    

    def getTypesAllowedList : BasicArrayList?
        return @typesAllowedList
    end
    

    def setTypesAllowedList(typesAllowedList : BasicArrayList?) : Nil
        @typesAllowedList = typesAllowedList
    end
end


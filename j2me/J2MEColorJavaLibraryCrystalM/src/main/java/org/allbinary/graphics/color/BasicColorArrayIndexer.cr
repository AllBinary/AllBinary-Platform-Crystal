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
# package org.allbinary.graphics.color

class BasicColorArrayIndexer < JObject
    @basicColorArray : Array(BasicColor?)? = nil

    def jf_basicColorArray : Array(BasicColor?)?
        @basicColorArray
    end

    def jf_basicColorArray=(value : Array(BasicColor?)?) : Array(BasicColor?)?
        @basicColorArray = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    

    def jinit_BasicColorArrayIndexer(basicColorArray : Array(BasicColor?)?) : self
        @basicColorArray = basicColorArray
        @circularIndexUtil = CircularIndexUtil.createInstance(@basicColorArray.not_nil!.size)
        self
    end
    

    def next_ : Nil
        @circularIndexUtil.not_nil!.next_()
    end
    

    def get : BasicColor?
        return @basicColorArray.not_nil![@circularIndexUtil.not_nil!.getIndex()]
    end
    

    def getBasicColorArray : Array(BasicColor?)?
        return @basicColorArray
    end
end


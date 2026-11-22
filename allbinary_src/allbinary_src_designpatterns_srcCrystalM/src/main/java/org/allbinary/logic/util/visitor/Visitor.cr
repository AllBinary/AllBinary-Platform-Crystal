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
# package org.allbinary.logic.util.visitor

class Visitor < JObject
    include VisitorInterface
    @nullUtil : NullUtil? = nil

    def jf_nullUtil : NullUtil?
        @nullUtil
    end

    def jf_nullUtil=(value : NullUtil?) : NullUtil?
        @nullUtil = value
    end

    @@jst_instance : Visitor? = nil

    def self.jst_instance : Visitor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : Visitor?) : Visitor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = Visitor.new.jinit_Visitor()
    end
    

    def self.getInstance : Visitor?
        return Visitor.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_Visitor : Nil
    @nullUtil = NullUtil.getInstance()
    end

    def jinit_Visitor : self
        jfields_Visitor()
        self
    end
    

    def visit(anyType : JAny) : JAny
        return @nullUtil.not_nil!.jf_NULL_OBJECT
    end
end


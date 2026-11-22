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
# package org.allbinary.game.ag.ai

class LastKeyAIVisitorFactory < JObject

    @@jst_instance : LastKeyAIVisitor? = nil

    def self.jst_instance : LastKeyAIVisitor?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : LastKeyAIVisitor?) : LastKeyAIVisitor?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = LastKeyAIVisitor.new.jinit_LastKeyAIVisitor()
    end
    

    def self.getInstance : LastKeyAIVisitor?
        return LastKeyAIVisitorFactory.jst_instance
    end

    def jinit_LastKeyAIVisitorFactory : self
        self
    end
end


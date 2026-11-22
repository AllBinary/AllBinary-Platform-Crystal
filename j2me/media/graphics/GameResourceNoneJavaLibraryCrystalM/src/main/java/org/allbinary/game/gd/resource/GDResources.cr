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
# package org.allbinary.game.gd.resource

class GDResources < JObject
    @resourceStringArray : Array(String)? = nil

    def jf_resourceStringArray : Array(String)?
        @resourceStringArray
    end

    def jf_resourceStringArray=(value : Array(String)?) : Array(String)?
        @resourceStringArray = value
    end
    @currentLayoutRequiredTotal : Int32 = 0

    def jf_currentLayoutRequiredTotal : Int32
        @currentLayoutRequiredTotal
    end

    def jf_currentLayoutRequiredTotal=(value : Int32) : Int32
        @currentLayoutRequiredTotal = value
    end

    @@jst_instance : GDResources? = nil

    def self.jst_instance : GDResources?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GDResources?) : GDResources?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GDResources.new.jinit_GDResources()
    end
    

    def self.getInstance : GDResources?
        return GDResources.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GDResources : Nil
    @resourceStringArray = [] of String
    
    end

    def jinit_GDResources : self
        jfields_GDResources()
        self
    end
end


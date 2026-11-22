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
# package org.allbinary

class ThreedResources < JObject

    @@jst_threedResources : ThreedResources? = nil

    def self.jst_threedResources : ThreedResources?
        jclinit
        @@jst_threedResources
    end

    def self.jst_threedResources=(value : ThreedResources?) : ThreedResources?
        jclinit
        @@jst_threedResources = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_threedResources = ThreedResources.new.jinit_ThreedResources()
    end
    

    def self.getThreedResources : ThreedResources?
        return ThreedResources.jst_threedResources
    end

    def jinit_ThreedResources : self
        self
    end
    

    def add : Nil
    end
end


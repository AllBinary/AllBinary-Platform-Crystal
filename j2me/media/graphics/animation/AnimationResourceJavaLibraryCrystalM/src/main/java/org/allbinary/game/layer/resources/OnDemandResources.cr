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
# package org.allbinary.game.layer.resources

class OnDemandResources < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_NULL_ON_DEMAND_RESOURCES : OnDemandResources? = nil

    def self.jst_NULL_ON_DEMAND_RESOURCES : OnDemandResources?
        jclinit
        @@jst_NULL_ON_DEMAND_RESOURCES
    end

    def self.jst_NULL_ON_DEMAND_RESOURCES=(value : OnDemandResources?) : OnDemandResources?
        jclinit
        @@jst_NULL_ON_DEMAND_RESOURCES = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_NULL_ON_DEMAND_RESOURCES = OnDemandResources.new.jinit_OnDemandResources()
    end

    # Java field initializers run after the super constructor
    def jfields_OnDemandResources : Nil
    @logUtil = LogUtil.getInstance()
    end
    

    def jinit_OnDemandResources : self
        jfields_OnDemandResources()
        self
    end
    

    def waitFor : Nil
    end
    

    def init : Nil
    end
    

    def initAt(imageCache : ImageCache?, resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory?, portion : Int, loadingString : String, index : Int) : Int32
        portion = portion.to_i32!
        index = index.to_i32!
        return 0
    end
end


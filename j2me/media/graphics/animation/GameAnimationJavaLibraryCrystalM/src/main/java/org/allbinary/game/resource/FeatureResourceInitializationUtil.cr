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
# package org.allbinary.game.resource

class FeatureResourceInitializationUtil < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    @@jst_instance : FeatureResourceInitializationUtil? = nil

    def self.jst_instance : FeatureResourceInitializationUtil?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : FeatureResourceInitializationUtil?) : FeatureResourceInitializationUtil?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = FeatureResourceInitializationUtil.new.jinit_FeatureResourceInitializationUtil()
    end
    

    def self.getInstance : FeatureResourceInitializationUtil?
        return FeatureResourceInitializationUtil.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_FeatureResourceInitializationUtil : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_FeatureResourceInitializationUtil : self
        jfields_FeatureResourceInitializationUtil()
        self
    end
    

    def init(level : Int) : Nil
        level = level.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(commonStrings.not_nil!.jf_START, self, commonStrings.not_nil!.jf_INIT)
        featuredResourceFactory : FeaturedResourceFactory? = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredResourceFactory.not_nil!.init(level)
        FeaturedResourceRelativeRelationshipFactory.getInstance().not_nil!.init(level)
    end
end


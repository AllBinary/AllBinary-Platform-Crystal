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
# package org.allbinary.game.layer.pickup

class CountedPickedUpLayerInterfaceFactoryPool < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_SINGLETON : CountedPickedUpLayerInterfaceFactoryPool? = nil

    def self.jst_SINGLETON : CountedPickedUpLayerInterfaceFactoryPool?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : CountedPickedUpLayerInterfaceFactoryPool?) : CountedPickedUpLayerInterfaceFactoryPool?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new.jinit_CountedPickedUpLayerInterfaceFactoryPool()
    end
    

    def self.getInstance : CountedPickedUpLayerInterfaceFactoryPool?
        return CountedPickedUpLayerInterfaceFactoryPool.jst_SINGLETON
    end
    

    def self.init : Nil
        CountedPickedUpLayerInterfaceFactoryPool.jst_SINGLETON = CountedPickedUpLayerInterfaceFactoryPool.new.jinit_CountedPickedUpLayerInterfaceFactoryPool()
    end
    

    def jinit_CountedPickedUpLayerInterfaceFactoryPool : self
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
        self
    end
    

    def getList : BasicArrayList?
        return @list
    end
end


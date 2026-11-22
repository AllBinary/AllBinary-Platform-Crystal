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
# package org.allbinary.game.ai

class ArtificialIntelligenceInterfaceFactoryInterfaceFactory < JObject
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end

    @@jst_SINGLETON : ArtificialIntelligenceInterfaceFactoryInterfaceFactory? = nil

    def self.jst_SINGLETON : ArtificialIntelligenceInterfaceFactoryInterfaceFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : ArtificialIntelligenceInterfaceFactoryInterfaceFactory?) : ArtificialIntelligenceInterfaceFactoryInterfaceFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = ArtificialIntelligenceInterfaceFactoryInterfaceFactory.new.jinit_ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
    end
    

    def self.getInstance : ArtificialIntelligenceInterfaceFactoryInterfaceFactory?
        return ArtificialIntelligenceInterfaceFactoryInterfaceFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory : Nil
    @list = BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
    end

    def jinit_ArtificialIntelligenceInterfaceFactoryInterfaceFactory : self
        jfields_ArtificialIntelligenceInterfaceFactoryInterfaceFactory()
        self
    end
    

    def clear : Nil
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
    end
    

    def getInstanceFromCollection(hashtable : ABHashtable?) : ArtificialIntelligenceInterfaceFactoryInterface?
        typeInteger : JInteger? = JR.cast(hashtable.not_nil!.get(BasicAI.jst_ID), JInteger)
        type_ : Int32 = typeInteger.not_nil!.intValue()
        artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface? = JR.cast(@list.not_nil!.jf_objectArray.not_nil![type_ &- 1], ArtificialIntelligenceInterfaceFactoryInterface)
        return artificialIntelligenceInterfaceFactoryInterface
    end
    

    def add(artificialIntelligenceInterfaceFactoryInterface : ArtificialIntelligenceInterfaceFactoryInterface?) : Nil
        @list.not_nil!.add(artificialIntelligenceInterfaceFactoryInterface)
    end
end


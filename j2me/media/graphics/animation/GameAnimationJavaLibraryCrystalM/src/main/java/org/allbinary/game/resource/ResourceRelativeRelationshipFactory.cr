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

class ResourceRelativeRelationshipFactory < JObject
    include ResourceRelativeRelationshipFactoryInterface
    @basicArrayListUtil : BasicArrayListUtil? = nil

    def jf_basicArrayListUtil : BasicArrayListUtil?
        @basicArrayListUtil
    end

    def jf_basicArrayListUtil=(value : BasicArrayListUtil?) : BasicArrayListUtil?
        @basicArrayListUtil = value
    end
    @hashtable : ABHashtable? = nil

    def jf_hashtable : ABHashtable?
        @hashtable
    end

    def jf_hashtable=(value : ABHashtable?) : ABHashtable?
        @hashtable = value
    end
    @initialized : Bool = false

    def jf_initialized : Bool
        @initialized
    end

    def jf_initialized=(value : Bool) : Bool
        @initialized = value
    end

    # Java field initializers run after the super constructor
    def jfields_ResourceRelativeRelationshipFactory : Nil
    @basicArrayListUtil = BasicArrayListUtil.getInstance()
    @hashtable = StdUtil.getInstance().not_nil!.createHashtable()
    
    end

    def jinit_ResourceRelativeRelationshipFactory : self
        jfields_ResourceRelativeRelationshipFactory()
        self
    end
    

    def init(level : Int) : Nil
        level = level.to_i32!
        self.setInitialized(true)
    end
    

    def getResourceRelativeRelationshipList(resource : String) : BasicArrayList?
        listCanBeNull : JAny = @hashtable.not_nil!.get(resource)
        if (listCanBeNull).nil?
            return @basicArrayListUtil.not_nil!.getImmutableInstance()
        end
        return JR.cast(listCanBeNull, BasicArrayList)
    end
    

    def addResourceRelativeRelationship(resource : String, hardPoint : RelativeRelationship?) : Nil
        list : BasicArrayList? = self.getResourceRelativeRelationshipList(resource)
        if list == @basicArrayListUtil.not_nil!.getImmutableInstance()
            list = BasicArrayListD.new.jinit_BasicArrayListD()
        end
        list.not_nil!.add(hardPoint)
        @hashtable.not_nil!.put(resource, list)
    end
    

    def isLoadingLevel(level : Int) : Bool
        level = level.to_i32!
        return false
    end
    

    def isFeature : Bool
        return false
    end
    

    def setInitialized(initialized : Bool) : Nil
        @initialized = initialized
    end
    

    def isInitialized : Bool
        return @initialized
    end
end


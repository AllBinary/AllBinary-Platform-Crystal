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

class ResourceLoadingLevelFactory < JObject
    @j_LOAD_EARLY : ResourceLoadingLevel? = nil

    def jf_LOAD_EARLY : ResourceLoadingLevel?
        @j_LOAD_EARLY
    end

    def jf_LOAD_EARLY=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_LOAD_EARLY = value
    end
    @j_LOAD_TOUCH : ResourceLoadingLevel? = nil

    def jf_LOAD_TOUCH : ResourceLoadingLevel?
        @j_LOAD_TOUCH
    end

    def jf_LOAD_TOUCH=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_LOAD_TOUCH = value
    end
    @j_LOAD_GAME : ResourceLoadingLevel? = nil

    def jf_LOAD_GAME : ResourceLoadingLevel?
        @j_LOAD_GAME
    end

    def jf_LOAD_GAME=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_LOAD_GAME = value
    end
    @j_LEVEL : ResourceLoadingLevel? = nil

    def jf_LEVEL : ResourceLoadingLevel?
        @j_LEVEL
    end

    def jf_LEVEL=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_LEVEL = value
    end
    @j_MAX_LEVEL : ResourceLoadingLevel? = nil

    def jf_MAX_LEVEL : ResourceLoadingLevel?
        @j_MAX_LEVEL
    end

    def jf_MAX_LEVEL=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_MAX_LEVEL = value
    end
    @j_LOAD_ALL : ResourceLoadingLevel? = nil

    def jf_LOAD_ALL : ResourceLoadingLevel?
        @j_LOAD_ALL
    end

    def jf_LOAD_ALL=(value : ResourceLoadingLevel?) : ResourceLoadingLevel?
        @j_LOAD_ALL = value
    end
    @j_RESOURCE_LOADING_LEVEL_ARRAY : Array(ResourceLoadingLevel?)? = nil

    def jf_RESOURCE_LOADING_LEVEL_ARRAY : Array(ResourceLoadingLevel?)?
        @j_RESOURCE_LOADING_LEVEL_ARRAY
    end

    def jf_RESOURCE_LOADING_LEVEL_ARRAY=(value : Array(ResourceLoadingLevel?)?) : Array(ResourceLoadingLevel?)?
        @j_RESOURCE_LOADING_LEVEL_ARRAY = value
    end

    @@jst_instance : ResourceLoadingLevelFactory? = nil

    def self.jst_instance : ResourceLoadingLevelFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : ResourceLoadingLevelFactory?) : ResourceLoadingLevelFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = ResourceLoadingLevelFactory.new.jinit_ResourceLoadingLevelFactory()
    end
    

    def self.getInstance : ResourceLoadingLevelFactory?
        return ResourceLoadingLevelFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_ResourceLoadingLevelFactory : Nil
    @j_LOAD_EARLY = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Load Early", JInteger.jst_MAX_VALUE)
    @j_LOAD_TOUCH = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Load Touch", JInteger.jst_MAX_VALUE &- 1)
    @j_LOAD_GAME = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Load Game", JInteger.jst_MAX_VALUE &- 2)
    @j_LEVEL = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Level", JInteger.jst_MAX_VALUE &- 99)
    @j_MAX_LEVEL = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Max Level", JInteger.jst_MAX_VALUE &- 100)
    @j_LOAD_ALL = ResourceLoadingLevel.new.jinit_ResourceLoadingLevel("Load All", -1)
    @j_RESOURCE_LOADING_LEVEL_ARRAY = [@j_LOAD_ALL, @j_MAX_LEVEL, @j_LEVEL, @j_LOAD_GAME, @j_LOAD_TOUCH, @j_LOAD_EARLY] of ResourceLoadingLevel?
    end

    def jinit_ResourceLoadingLevelFactory : self
        jfields_ResourceLoadingLevelFactory()
        self
    end
    

    def getLevelString(level : Int) : String
        level = level.to_i32!
        index : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < @j_RESOURCE_LOADING_LEVEL_ARRAY.not_nil!.size
            if level == @j_RESOURCE_LOADING_LEVEL_ARRAY.not_nil![index].not_nil!.getLevel()
                return @j_RESOURCE_LOADING_LEVEL_ARRAY.not_nil![index].not_nil!.getName()
            end
        end
        return JInteger.toString(level)
    end
end


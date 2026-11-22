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
# package org.allbinary.game.configuration.feature

class GameFeatureFactory < JObject
    @j_SOUND : GameFeature? = nil

    def jf_SOUND : GameFeature?
        @j_SOUND
    end

    def jf_SOUND=(value : GameFeature?) : GameFeature?
        @j_SOUND = value
    end
    @j_MUSIC : GameFeature? = nil

    def jf_MUSIC : GameFeature?
        @j_MUSIC
    end

    def jf_MUSIC=(value : GameFeature?) : GameFeature?
        @j_MUSIC = value
    end
    @j_SCREEN_SHAKE : Feature? = nil

    def jf_SCREEN_SHAKE : Feature?
        @j_SCREEN_SHAKE
    end

    def jf_SCREEN_SHAKE=(value : Feature?) : Feature?
        @j_SCREEN_SHAKE = value
    end
    @j_POST_IMAGE_LOADING_MODIFICATION : Feature? = nil

    def jf_POST_IMAGE_LOADING_MODIFICATION : Feature?
        @j_POST_IMAGE_LOADING_MODIFICATION
    end

    def jf_POST_IMAGE_LOADING_MODIFICATION=(value : Feature?) : Feature?
        @j_POST_IMAGE_LOADING_MODIFICATION = value
    end
    @j_HEALTH_BARS : GameFeature? = nil

    def jf_HEALTH_BARS : GameFeature?
        @j_HEALTH_BARS
    end

    def jf_HEALTH_BARS=(value : GameFeature?) : GameFeature?
        @j_HEALTH_BARS = value
    end
    @j_DAMAGE_FLOATERS : GameFeature? = nil

    def jf_DAMAGE_FLOATERS : GameFeature?
        @j_DAMAGE_FLOATERS
    end

    def jf_DAMAGE_FLOATERS=(value : GameFeature?) : GameFeature?
        @j_DAMAGE_FLOATERS = value
    end
    @j_GAME_INPUT_LAYER_PROCESSOR : GameFeature? = nil

    def jf_GAME_INPUT_LAYER_PROCESSOR : GameFeature?
        @j_GAME_INPUT_LAYER_PROCESSOR
    end

    def jf_GAME_INPUT_LAYER_PROCESSOR=(value : GameFeature?) : GameFeature?
        @j_GAME_INPUT_LAYER_PROCESSOR = value
    end
    @j_ARTIFICIAL_INTELLEGENCE_PROCESSOR : GameFeature? = nil

    def jf_ARTIFICIAL_INTELLEGENCE_PROCESSOR : GameFeature?
        @j_ARTIFICIAL_INTELLEGENCE_PROCESSOR
    end

    def jf_ARTIFICIAL_INTELLEGENCE_PROCESSOR=(value : GameFeature?) : GameFeature?
        @j_ARTIFICIAL_INTELLEGENCE_PROCESSOR = value
    end
    @j_COLLIDABLE_INTERFACE_LAYER_PROCESSOR : GameFeature? = nil

    def jf_COLLIDABLE_INTERFACE_LAYER_PROCESSOR : GameFeature?
        @j_COLLIDABLE_INTERFACE_LAYER_PROCESSOR
    end

    def jf_COLLIDABLE_INTERFACE_LAYER_PROCESSOR=(value : GameFeature?) : GameFeature?
        @j_COLLIDABLE_INTERFACE_LAYER_PROCESSOR = value
    end
    @j_TICKABLE_LAYER_PROCESSOR : GameFeature? = nil

    def jf_TICKABLE_LAYER_PROCESSOR : GameFeature?
        @j_TICKABLE_LAYER_PROCESSOR
    end

    def jf_TICKABLE_LAYER_PROCESSOR=(value : GameFeature?) : GameFeature?
        @j_TICKABLE_LAYER_PROCESSOR = value
    end
    @j_CHEATING : GameFeature? = nil

    def jf_CHEATING : GameFeature?
        @j_CHEATING
    end

    def jf_CHEATING=(value : GameFeature?) : GameFeature?
        @j_CHEATING = value
    end
    @j_DROPPED_ITEMS : GameFeature? = nil

    def jf_DROPPED_ITEMS : GameFeature?
        @j_DROPPED_ITEMS
    end

    def jf_DROPPED_ITEMS=(value : GameFeature?) : GameFeature?
        @j_DROPPED_ITEMS = value
    end
    @j_DROPPED_ITEMS_FROM_DEATH : GameFeature? = nil

    def jf_DROPPED_ITEMS_FROM_DEATH : GameFeature?
        @j_DROPPED_ITEMS_FROM_DEATH
    end

    def jf_DROPPED_ITEMS_FROM_DEATH=(value : GameFeature?) : GameFeature?
        @j_DROPPED_ITEMS_FROM_DEATH = value
    end
    @j_TEST_DESTROYED_LAYER_PROCESSOR : GameFeature? = nil

    def jf_TEST_DESTROYED_LAYER_PROCESSOR : GameFeature?
        @j_TEST_DESTROYED_LAYER_PROCESSOR
    end

    def jf_TEST_DESTROYED_LAYER_PROCESSOR=(value : GameFeature?) : GameFeature?
        @j_TEST_DESTROYED_LAYER_PROCESSOR = value
    end
    @j_COLLISIONS_WITH_SOURCE : GameFeature? = nil

    def jf_COLLISIONS_WITH_SOURCE : GameFeature?
        @j_COLLISIONS_WITH_SOURCE
    end

    def jf_COLLISIONS_WITH_SOURCE=(value : GameFeature?) : GameFeature?
        @j_COLLISIONS_WITH_SOURCE = value
    end
    @j_COLLISIONS_FORCED_TWO_DIMENSIONAL : GameFeature? = nil

    def jf_COLLISIONS_FORCED_TWO_DIMENSIONAL : GameFeature?
        @j_COLLISIONS_FORCED_TWO_DIMENSIONAL
    end

    def jf_COLLISIONS_FORCED_TWO_DIMENSIONAL=(value : GameFeature?) : GameFeature?
        @j_COLLISIONS_FORCED_TWO_DIMENSIONAL = value
    end

    @@jst_instance : GameFeatureFactory? = nil

    def self.jst_instance : GameFeatureFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameFeatureFactory?) : GameFeatureFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameFeatureFactory.new.jinit_GameFeatureFactory()
    end
    

    def self.getInstance : GameFeatureFactory?
        return GameFeatureFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameFeatureFactory : Nil
    @j_SOUND = GameFeature.new.jinit_GameFeature("Sound")
    @j_MUSIC = GameFeature.new.jinit_GameFeature("Music")
    @j_SCREEN_SHAKE = Feature.new.jinit_Feature("Screen Shake")
    @j_POST_IMAGE_LOADING_MODIFICATION = Feature.new.jinit_Feature("Post Image Loading Modification (Scaling, Rotation, or Other)")
    @j_HEALTH_BARS = GameFeature.new.jinit_GameFeature("Health Bars")
    @j_DAMAGE_FLOATERS = GameFeature.new.jinit_GameFeature("Damage Floaters")
    @j_GAME_INPUT_LAYER_PROCESSOR = GameFeature.new.jinit_GameFeature("Game Input Layer Processor")
    @j_ARTIFICIAL_INTELLEGENCE_PROCESSOR = GameFeature.new.jinit_GameFeature("Artificial Intelligence Layer Processor")
    @j_COLLIDABLE_INTERFACE_LAYER_PROCESSOR = GameFeature.new.jinit_GameFeature("Collidable Interface Layer Processor")
    @j_TICKABLE_LAYER_PROCESSOR = GameFeature.new.jinit_GameFeature("Tickable Layer Processor")
    @j_CHEATING = GameFeature.new.jinit_GameFeature("Cheating")
    @j_DROPPED_ITEMS = GameFeature.new.jinit_GameFeature("Drops")
    @j_DROPPED_ITEMS_FROM_DEATH = GameFeature.new.jinit_GameFeature("Drops from Dead")
    @j_TEST_DESTROYED_LAYER_PROCESSOR = GameFeature.new.jinit_GameFeature("Destroyed Layer Processor")
    @j_COLLISIONS_WITH_SOURCE = GameFeature.new.jinit_GameFeature("Allow Collisions With Source")
    @j_COLLISIONS_FORCED_TWO_DIMENSIONAL = GameFeature.new.jinit_GameFeature("Collisions Forced Two Dimensional")
    end
    

    def jinit_GameFeatureFactory : self
        jfields_GameFeatureFactory()
        self
    end
end


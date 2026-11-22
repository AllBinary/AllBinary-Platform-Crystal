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
# package org.allbinary.game.init

class CommonGameInitialization < BaseGameInitialization
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end

    # Java field initializers run after the super constructor
    def jfields_CommonGameInitialization : Nil
    @commonStrings = CommonStrings.getInstance()
    end
    

    def jinit_CommonGameInitialization(resourceInitializationArray : Array(ResourceInitialization?)?, portion : Int) : self
        portion = portion.to_i32!
        jinit_BaseGameInitialization(resourceInitializationArray, portion)
        jfields_CommonGameInitialization()
        self
    end
    

    def init(abeClientInformation : AbeClientInformationInterface?, commandListener : CommandListener?, level : Int) : Nil
        level = level.to_i32!
        super(abeClientInformation, commandListener, level)
        resourceLoadingLevelFactory : ResourceLoadingLevelFactory? = ResourceLoadingLevelFactory.getInstance()
        if !self.isGameInitialized() && level == resourceLoadingLevelFactory.not_nil!.jf_LOAD_ALL.not_nil!.getLevel()
            self.setGameInitialized(true)
            progressCanvas : ProgressCanvas? = ProgressCanvasFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().not_nil!.init()
            progressCanvas.not_nil!.addNormalPortion(50, "Integers")
            PointFactory.getInstance().not_nil!.init()
            progressCanvas.not_nil!.addNormalPortion(50, "Points")
            AngleFactory.getInstance()
            progressCanvas.not_nil!.addNormalPortion(50, "Angles")
            self.initGame()
            @resourceInitializationArray.not_nil![@j_GAME_RESOURCES].not_nil!.init()
        end
        resourceInitialization(level)
    end
    

    def initGame : Nil
        raise (JException.new.jinit_JException(@commonStrings.not_nil!.jf_NOT_IMPLEMENTED)).not_nil!
    end
end


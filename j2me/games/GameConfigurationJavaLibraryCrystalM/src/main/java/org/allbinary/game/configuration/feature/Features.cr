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

class Features < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @commonStrings : CommonStrings? = nil

    def jf_commonStrings : CommonStrings?
        @commonStrings
    end

    def jf_commonStrings=(value : CommonStrings?) : CommonStrings?
        @commonStrings = value
    end
    @list : BasicArrayList? = nil

    def jf_list : BasicArrayList?
        @list
    end

    def jf_list=(value : BasicArrayList?) : BasicArrayList?
        @list = value
    end
    @defaultList : BasicArrayList? = nil

    def jf_defaultList : BasicArrayList?
        @defaultList
    end

    def jf_defaultList=(value : BasicArrayList?) : BasicArrayList?
        @defaultList = value
    end

    @@jst_SINGLETON : JAny = nil

    def self.jst_SINGLETON : JAny
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : JAny) : JAny
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
    end
    

    def self.getInstance : Features?
        if Features.jst_SINGLETON == NullUtil.getInstance().not_nil!.jf_NULL_OBJECT
            Features.jst_SINGLETON = Features.new.jinit_Features()
        end
        return JR.cast(Features.jst_SINGLETON, Features)
    end

    # Java field initializers run after the super constructor
    def jfields_Features : Nil
    @logUtil = LogUtil.getInstance()
    @commonStrings = CommonStrings.getInstance()
    
    
    end
    

    def jinit_Features : self
        jfields_Features()
        @list = BasicArrayListD.new.jinit_BasicArrayListD()
        @defaultList = BasicArrayListD.new.jinit_BasicArrayListD()
        self.init()
        self
    end
    

    def addDefault(gameFeature : Feature?) : Nil
        self.add(gameFeature)
        if !@defaultList.not_nil!.contains(gameFeature)
            @defaultList.not_nil!.add(gameFeature)
        end
    end
    

    def add(gameFeature : Feature?) : Nil
        if !@list.not_nil!.contains(gameFeature)
            @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(gameFeature.not_nil!.toString()).not_nil!.toString(), self, @commonStrings.not_nil!.jf_ADD)
            @list.not_nil!.add(gameFeature)
            GameFeatureEventHandler.getInstance().not_nil!.fireEvent(GameFeatureEvent.new.jinit_GameFeatureEvent(gameFeature, gameFeature.not_nil!.toString()))
        end
    end
    

    def removeDefault(gameFeature : Feature?) : Nil
        @logUtil.not_nil!.putF(StringMaker.new.jinit_StringMaker().not_nil!.append(CommonLabels.getInstance().not_nil!.jf_START_LABEL).not_nil!.append(gameFeature.not_nil!.toString()).not_nil!.toString(), self, "removeDefault")
        self.remove(gameFeature)
        @defaultList.not_nil!.remove(gameFeature)
    end
    

    def remove(gameFeature : Feature?) : Nil
        if @list.not_nil!.contains(gameFeature)
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_REMOVE)
            @list.not_nil!.remove(gameFeature)
            GameFeatureEventHandler.getInstance().not_nil!.fireEvent(GameFeatureEvent.new.jinit_GameFeatureEvent(gameFeature, gameFeature.not_nil!.toString()))
        end
    end
    

    def init : Nil
        begin
            gameFeatureFactory : GameFeatureFactory? = GameFeatureFactory.getInstance()
            inputFeatureFactory : InputFeatureFactory? = InputFeatureFactory.getInstance()
            sensorFeatureFactory : SensorFeatureFactory? = SensorFeatureFactory.getInstance()
            touchFeatureFactory : TouchFeatureFactory? = TouchFeatureFactory.getInstance()
            self.addDefault(gameFeatureFactory.not_nil!.jf_ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            self.addDefault(gameFeatureFactory.not_nil!.jf_COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.not_nil!.jf_GAME_INPUT_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.not_nil!.jf_TICKABLE_LAYER_PROCESSOR)
            self.addDefault(inputFeatureFactory.not_nil!.jf_MULTI_KEY_PRESS)
            self.addDefault(inputFeatureFactory.not_nil!.jf_REMOVE_DUPLICATE_KEY_PRESSES)
            self.addDefault(gameFeatureFactory.not_nil!.jf_SCREEN_SHAKE)
            self.addDefault(gameFeatureFactory.not_nil!.jf_POST_IMAGE_LOADING_MODIFICATION)
            operatingSystemInterface : GenericOperatingSystem? = OperatingSystemFactory.getInstance().not_nil!.getOperatingSystemInstance()
            if operatingSystemInterface.not_nil!.isOverScan()
                self.addDefault(sensorFeatureFactory.not_nil!.jf_NO_ORIENTATION)
                self.addDefault(touchFeatureFactory.not_nil!.jf_HIDE_SCREEN_BUTTONS)
            else
                self.addDefault(sensorFeatureFactory.not_nil!.jf_ORIENTATION_SENSORS)
                self.addDefault(touchFeatureFactory.not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            end
            self.addDefault(touchFeatureFactory.not_nil!.jf_TOUCH_ENABLED)
            self.addDefault(MainFeatureFactory.getInstance().not_nil!.jf_FULL_SCREEN)
            self.addDefault(MainFeatureFactory.getInstance().not_nil!.jf_LOAD_ONDEMAND)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            PreLogUtil.putOE(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_INIT, e)
            else
                raise jex1
            end
        end
    end
    

    def isDefault(gameFeature : Feature?) : Bool
        return @defaultList.not_nil!.contains(gameFeature)
    end
    

    def isFeature(gameFeature : Feature?) : Bool
        return @list.not_nil!.contains(gameFeature)
    end
    

    def toggle(gameFeature : Feature?) : Nil
        if self.isFeature(gameFeature)
            self.remove(gameFeature)
        else
            self.add(gameFeature)
        end
    end
end


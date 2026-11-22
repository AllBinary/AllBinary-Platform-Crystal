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
# package org.allbinary.game.configuration

class InGameFeatures < Init

    def jinit_InGameFeatures : self
        jinit_Init()
        self
    end
    

    def init : Nil
        j_LABEL : String = "Screen Buttons"
        orientationData : OrientationData? = OrientationData.getInstance()
        exclusiveOrientationSensorVector : BasicArrayList? = JR.cast(GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get().not_nil!.get(orientationData.not_nil!.jf_ORIENTATION_SENSOR_INPUT), BasicArrayList)
        inGameFeatureChoiceGroups : InGameFeatureChoiceGroups? = InGameFeatureChoiceGroups.getExclusiveInstance()
        if !(exclusiveOrientationSensorVector).nil?
            inGameExclusiveOrientationSensorVectorCanBeNull : JAny = inGameFeatureChoiceGroups.not_nil!.get().not_nil!.get(orientationData.not_nil!.jf_ORIENTATION_SENSOR_INPUT)
            if (inGameExclusiveOrientationSensorVectorCanBeNull).nil?
                self.addToInGameMenu()
            else
                inGameExclusiveOrientationSensorVector : BasicArrayList? = JR.cast(inGameExclusiveOrientationSensorVectorCanBeNull, BasicArrayList)
                if inGameExclusiveOrientationSensorVector.not_nil!.size() == 0
                    self.addToInGameMenu()
                end
            end
        end
        features : Features? = Features.getInstance()
        if features.not_nil!.isFeature(TouchFeatureFactory.getInstance().not_nil!.jf_SHOW_SCREEN_BUTTONS) || features.not_nil!.isFeature(TouchFeatureFactory.getInstance().not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.not_nil!.isFeature(TouchFeatureFactory.getInstance().not_nil!.jf_HIDE_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            touchFeatureFactory : TouchFeatureFactory? = TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.not_nil!.add(touchFeatureFactory.not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.not_nil!.add(touchFeatureFactory.not_nil!.jf_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.not_nil!.add(touchFeatureFactory.not_nil!.jf_HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.not_nil!.add(j_LABEL, exclusiveScreenButtonsVector)
        end
    end
    

    def addToInGameMenu : Nil
        orientationData : OrientationData? = OrientationData.getInstance()
        inGameExclusiveOrientationSensorVector : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        inGameExclusiveOrientationSensorVector.not_nil!.add(SensorFeatureFactory.getInstance().not_nil!.jf_ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.not_nil!.add(SensorFeatureFactory.getInstance().not_nil!.jf_NO_ORIENTATION)
        InGameFeatureChoiceGroups.getExclusiveInstance().not_nil!.add(orientationData.not_nil!.jf_ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
    end
    

    def isAny : Bool
        features : Features? = Features.getInstance()
        touchFeatureFactory : TouchFeatureFactory? = TouchFeatureFactory.getInstance()
        if features.not_nil!.isFeature(touchFeatureFactory.not_nil!.jf_SHOW_SCREEN_BUTTONS) || features.not_nil!.isFeature(touchFeatureFactory.not_nil!.jf_AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.not_nil!.isFeature(touchFeatureFactory.not_nil!.jf_HIDE_SCREEN_BUTTONS)
            return true
        end
        exclusiveOrientationSensorVector : BasicArrayList? = JR.cast(GameFeatureChoiceGroups.getExclusiveInstance().not_nil!.get().not_nil!.get(OrientationData.getInstance().not_nil!.jf_ORIENTATION_SENSOR_INPUT), BasicArrayList)
        if !(exclusiveOrientationSensorVector).nil?
            return true
        end
        return false
    end
end


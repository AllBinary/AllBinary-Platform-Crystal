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
# package org.allbinary.game.ag.ai

class BasicProbabilityAIDataFactory < JObject

    def jinit_BasicProbabilityAIDataFactory : self
        self
    end
    

    def getInstance : ABHashtable?
        likelyhoodIntegerArray : Array(Array(JInteger?)?)? = Array(Array(JInteger?)?).new(Canvas.jst_KEY_NUM9 &+ 1) { Array(JInteger?).new(2, nil).as(Array(JInteger?)?) }
        smallIntegerSingletonFactory : SmallIntegerSingletonFactory? = SmallIntegerSingletonFactory.getInstance()
        likelyhoodIntegerArray.not_nil![Canvas.jst_UP].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        likelyhoodIntegerArray.not_nil![Canvas.jst_UP].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(10)
        likelyhoodIntegerArray.not_nil![Canvas.jst_DOWN].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(10)
        likelyhoodIntegerArray.not_nil![Canvas.jst_DOWN].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(14)
        likelyhoodIntegerArray.not_nil![Canvas.jst_LEFT].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(14)
        likelyhoodIntegerArray.not_nil![Canvas.jst_LEFT].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(18)
        likelyhoodIntegerArray.not_nil![Canvas.jst_RIGHT].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(18)
        likelyhoodIntegerArray.not_nil![Canvas.jst_RIGHT].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(22)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM7].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(22)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM7].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(26)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM9].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(26)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM9].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(30)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM1].not_nil![0] = smallIntegerSingletonFactory.not_nil!.getAt(30)
        likelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM1].not_nil![1] = smallIntegerSingletonFactory.not_nil!.getAt(40)
        repeatLikelyhoodIntegerArray : Array(JInteger?)? = Array(JInteger?).new(Canvas.jst_KEY_NUM9 &+ 1, nil)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_UP] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_DOWN] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_LEFT] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_RIGHT] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM7] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM9] = smallIntegerSingletonFactory.not_nil!.getAt(0)
        repeatLikelyhoodIntegerArray.not_nil![Canvas.jst_KEY_NUM1] = smallIntegerSingletonFactory.not_nil!.getAt(10)
        inputProbability : InputProbability? = InputProbability.new.jinit_InputProbability(likelyhoodIntegerArray, repeatLikelyhoodIntegerArray, 42, NoTimeDelayHelper.jst_SINGLETON)
        return inputProbability.not_nil!.toHashtable()
    end
end


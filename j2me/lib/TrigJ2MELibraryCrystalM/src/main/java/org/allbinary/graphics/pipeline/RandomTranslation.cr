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
# package org.allbinary.graphics.pipeline

class RandomTranslation < JObject
    

    def self.getInstance(vector : BasicArrayList?, howMuch : Int) : BasicArrayList?
        howMuch = howMuch.to_i32!
        myRandomFactory : MyRandomFactory? = MyRandomFactory.getInstance()
        x : Int32 = JR.neg(myRandomFactory.not_nil!.getNextInt(howMuch))
        y : Int32 = myRandomFactory.not_nil!.getNextInt(howMuch)
        graphicsPipe : BasicGraphicsPipeline? = BasicGraphicsPipeline.new.jinit_BasicGraphicsPipeline(vector)
        graphicsPipe.not_nil!.createMatrix()
        graphicsPipe.not_nil!.translate(x, y)
        return graphicsPipe.not_nil!.getMatrix()
    end

    def jinit_RandomTranslation : self
        self
    end
end


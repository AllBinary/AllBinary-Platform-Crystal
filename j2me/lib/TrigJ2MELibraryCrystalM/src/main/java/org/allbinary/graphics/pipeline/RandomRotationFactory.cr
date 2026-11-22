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

class RandomRotationFactory < JObject
    @myRandomFactory : MyRandomFactory? = nil

    def jf_myRandomFactory : MyRandomFactory?
        @myRandomFactory
    end

    def jf_myRandomFactory=(value : MyRandomFactory?) : MyRandomFactory?
        @myRandomFactory = value
    end
    @angleFactory : AngleFactory? = nil

    def jf_angleFactory : AngleFactory?
        @angleFactory
    end

    def jf_angleFactory=(value : AngleFactory?) : AngleFactory?
        @angleFactory = value
    end

    @@jst_instance : RandomRotationFactory? = nil

    def self.jst_instance : RandomRotationFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : RandomRotationFactory?) : RandomRotationFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = RandomRotationFactory.new.jinit_RandomRotationFactory()
    end
    

    def self.getInstance : RandomRotationFactory?
        return RandomRotationFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_RandomRotationFactory : Nil
    @myRandomFactory = MyRandomFactory.getInstance()
    @angleFactory = AngleFactory.getInstance()
    end

    def jinit_RandomRotationFactory : self
        jfields_RandomRotationFactory()
        self
    end
    

    def getInstanceList(vector : BasicArrayList?, howMuch : Int) : BasicArrayList?
        howMuch = howMuch.to_i32!
        graphicsPipe : BasicGraphicsPipeline? = BasicGraphicsPipeline.new.jinit_BasicGraphicsPipeline(vector)
        graphicsPipe.not_nil!.createMatrix()
        graphicsPipe.not_nil!.rotateToAngle(@angleFactory.not_nil!.getAt(self.getNextRandomAngle(howMuch)))
        return graphicsPipe.not_nil!.getMatrix()
    end
    

    def getNextRandomAngle(howMuch : Int) : Int32
        howMuch = howMuch.to_i32!
        return @myRandomFactory.not_nil!.getNextInt(howMuch &* 10)
    end
end


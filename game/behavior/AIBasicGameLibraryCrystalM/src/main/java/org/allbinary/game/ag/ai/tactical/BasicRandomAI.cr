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
# package org.allbinary.game.ag.ai.tactical

class BasicRandomAI < BasicAI
    @i_random : Int32 = 0

    def jf_i_random : Int32
        @i_random
    end

    def jf_i_random=(value : Int32) : Int32
        @i_random = value
    end
    @inputProbability : InputProbability? = nil

    def jf_inputProbability : InputProbability?
        @inputProbability
    end

    def jf_inputProbability=(value : InputProbability?) : InputProbability?
        @inputProbability = value
    end
    @visitor : Visitor? = nil

    def jf_visitor : Visitor?
        @visitor
    end

    def jf_visitor=(value : Visitor?) : Visitor?
        @visitor = value
    end
    @keyArray : Array(Int32)? = nil

    def jf_keyArray : Array(Int32)?
        @keyArray
    end

    def jf_keyArray=(value : Array(Int32)?) : Array(Int32)?
        @keyArray = value
    end
    @myRandomFactory : MyRandomFactory? = nil

    def jf_myRandomFactory : MyRandomFactory?
        @myRandomFactory
    end

    def jf_myRandomFactory=(value : MyRandomFactory?) : MyRandomFactory?
        @myRandomFactory = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicRandomAI : Nil
    @i_random = 0
    
    
    @keyArray = [Canvas.jst_UP, Canvas.jst_DOWN, Canvas.jst_LEFT, Canvas.jst_RIGHT, Canvas.jst_KEY_NUM1, Canvas.jst_KEY_NUM7, Canvas.jst_KEY_NUM9] of Int32
    @myRandomFactory = MyRandomFactory.getInstance()
    end
    

    def jinit_BasicRandomAI(ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?, inputProbability : InputProbability?, visitor : Visitor?) : self
        jinit_BasicAI(ownerLayerInterface, gameInput)
        jfields_BasicRandomAI()
        @inputProbability = inputProbability
        @visitor = visitor
        self
    end
    

    def processAI(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if @inputProbability.not_nil!.getTimeDelayHelper().not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            @i_random = @myRandomFactory.not_nil!.getAbsoluteNextInt(@inputProbability.not_nil!.getMax())
            repeat : Bool = false
            repeatLikelyhoodIntegerArray : Array(JInteger?)? = @inputProbability.not_nil!.getRepeatLikelyhoodIntegerArray()
            if self.getLastKey() != -1 && repeatLikelyhoodIntegerArray.not_nil![self.getLastKey()].not_nil!.intValue() >= @i_random
                repeat = true
            end
            if !repeat
                likelyhoodIntegerArray : Array(Array(JInteger?)?)? = @inputProbability.not_nil!.getLikelyhoodIntegerArray()
                @i_random = @myRandomFactory.not_nil!.getAbsoluteNextInt(@inputProbability.not_nil!.getMax())
                size : Int32 = @keyArray.not_nil!.size
                likelyhoodIntegerKeyArray : Array(JInteger?)? = nil
                index : Int32 = 0
                jfor1 = false
                while true
                    if jfor1
                        index &+= 1
                    end
                    jfor1 = true
                    break unless index < size
                    key : Int32 = @keyArray.not_nil![index]
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray.not_nil![key]
                    if likelyhoodIntegerArray.not_nil!.size >= key && !(likelyhoodIntegerKeyArray.not_nil![0]).nil?
                        if @i_random >= likelyhoodIntegerKeyArray.not_nil![0].not_nil!.intValue() && @i_random < likelyhoodIntegerKeyArray.not_nil![1].not_nil!.intValue()
                            self.setLastKey(key)
                            break
                        end
                    end
                end
            end
            @visitor.not_nil!.visit(self)
        end
    end
end


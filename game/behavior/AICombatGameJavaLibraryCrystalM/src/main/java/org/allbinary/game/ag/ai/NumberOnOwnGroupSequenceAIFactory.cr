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

class NumberOnOwnGroupSequenceAIFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_NumberOnOwnGroupSequenceAIFactory : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_NumberOnOwnGroupSequenceAIFactory : self
        jfields_NumberOnOwnGroupSequenceAIFactory()
        self
    end
    

    def getInstance(hashtable : ABHashtable?, artificialIntelligenceInterface : Array(ArtificialIntelligenceInterface?)?, ownerLayerInterface : AllBinaryLayer?, gameInput : GameInput?) : ArtificialIntelligenceInterface?
        integerArray : Array(JInteger?)? = NumberInSameGroupSequence.getInstance().not_nil!.jf_NUMBER_ON_SAME_TEAM_SEQUENCE
        list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
        index = 0
        jfor1 = false
        while true
            if jfor1
                index &+= 1
            end
            jfor1 = true
            break unless index < integerArray.not_nil!.size
            integerCanBeNull : JAny = hashtable.not_nil!.get(integerArray.not_nil![index])
            if (integerCanBeNull).nil?
                break
            end
            list.not_nil!.add(integerCanBeNull)
        end
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Total AI Properties: ")
        stringBuffer.not_nil!.appendint(list.not_nil!.size())
        stringBuffer.not_nil!.append(" == Total AI: ")
        stringBuffer.not_nil!.appendint(artificialIntelligenceInterface.not_nil!.size)
        stringBuffer.not_nil!.append(" + 1")
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_GET_INSTANCE)
        if artificialIntelligenceInterface.not_nil!.size &- 1 > list.not_nil!.size()
            raise (JException.new.jinit_JException("Not enough AI properties.")).not_nil!
        end
        if artificialIntelligenceInterface.not_nil!.size &- 1 < list.not_nil!.size()
            raise (JException.new.jinit_JException("Too Many AI properties.")).not_nil!
        end
        numberOnSameTeam : Array(JInteger?)? = Array(JInteger?).new(list.not_nil!.size(), nil)
        index = 0
        jfor2 = false
        while true
            if jfor2
                index &+= 1
            end
            jfor2 = true
            break unless index < numberOnSameTeam.not_nil!.size
            numberOnSameTeam.not_nil![index] = JR.cast(list.not_nil!.jf_objectArray.not_nil![index], JInteger)
        end
        return NumberOnOwnGroupSequenceAI.new.jinit_NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    end
end


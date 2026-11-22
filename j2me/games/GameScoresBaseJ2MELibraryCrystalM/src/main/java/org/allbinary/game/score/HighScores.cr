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
# package org.allbinary.game.score

class HighScores < JObject
    include HighScoresInterface
    @orderedHighScoresList : BasicArrayList? = nil

    def jf_orderedHighScoresList : BasicArrayList?
        @orderedHighScoresList
    end

    def jf_orderedHighScoresList=(value : BasicArrayList?) : BasicArrayList?
        @orderedHighScoresList = value
    end
    @name : String = ""

    def jf_name : String
        @name
    end

    def jf_name=(value : String) : String
        @name = value
    end
    @heading : String = ""

    def jf_heading : String
        @heading
    end

    def jf_heading=(value : String) : String
        @heading = value
    end
    @columnOneHeading : String = ""

    def jf_columnOneHeading : String
        @columnOneHeading
    end

    def jf_columnOneHeading=(value : String) : String
        @columnOneHeading = value
    end
    @columnTwoHeading : String = ""

    def jf_columnTwoHeading : String
        @columnTwoHeading
    end

    def jf_columnTwoHeading=(value : String) : String
        @columnTwoHeading = value
    end

    # Java field initializers run after the super constructor
    def jfields_HighScores : Nil
    @orderedHighScoresList = BasicArrayListD.new.jinit_BasicArrayListD()
    
    
    @columnOneHeading = "Name"
    
    end
    

    def jinit_HighScores(name : String, heading : String, columnTwoHeading : String) : self
        jfields_HighScores()
        @name = name
        @heading = heading
        @columnTwoHeading = columnTwoHeading
        self
    end
    

    def setList(orderedHighScoresList : BasicArrayList?) : Nil
        @orderedHighScoresList = orderedHighScoresList
    end
    

    def getList : BasicArrayList?
        return @orderedHighScoresList
    end
    

    def getName : String
        return @name
    end
    

    def getTotal : Int32
        return self.getList().not_nil!.size()
    end
    

    def addHighScore(newHighScore : HighScore?) : Nil
        @orderedHighScoresList.not_nil!.add(newHighScore)
    end
    

    def getHeading : String
        return @heading
    end
    

    def getColumnOneHeading : String
        return @columnOneHeading
    end
    

    def getColumnTwoHeading : String
        return @columnTwoHeading
    end
    

    def isBestScore(newHighScore : HighScore?) : Bool
        return false
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("HighScores: ")
        stringBuffer.not_nil!.append(@heading)
        stringBuffer.not_nil!.append(CommonSeps.getInstance().not_nil!.jf_SPACE)
        stringBuffer.not_nil!.append(CommonLabels.getInstance().not_nil!.jf_TOTAL_LABEL)
        stringBuffer.not_nil!.appendint(@orderedHighScoresList.not_nil!.size())
        return stringBuffer.not_nil!.toString()
    end
end


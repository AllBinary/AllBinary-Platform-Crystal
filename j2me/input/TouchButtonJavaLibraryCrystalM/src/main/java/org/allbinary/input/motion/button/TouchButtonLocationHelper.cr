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
# package org.allbinary.input.motion.button

class TouchButtonLocationHelper < JObject
    @totalColumns : Int32 = 0

    def jf_totalColumns : Int32
        @totalColumns
    end

    def jf_totalColumns=(value : Int32) : Int32
        @totalColumns = value
    end
    @totalRows : Int32 = 0

    def jf_totalRows : Int32
        @totalRows
    end

    def jf_totalRows=(value : Int32) : Int32
        @totalRows = value
    end
    @columnsRemainder : Int32 = 0

    def jf_columnsRemainder : Int32
        @columnsRemainder
    end

    def jf_columnsRemainder=(value : Int32) : Int32
        @columnsRemainder = value
    end
    @rowsRemainder : Int32 = 0

    def jf_rowsRemainder : Int32
        @rowsRemainder
    end

    def jf_rowsRemainder=(value : Int32) : Int32
        @rowsRemainder = value
    end
    @columnsRemainderHalf : Int32 = 0

    def jf_columnsRemainderHalf : Int32
        @columnsRemainderHalf
    end

    def jf_columnsRemainderHalf=(value : Int32) : Int32
        @columnsRemainderHalf = value
    end
    @rowsRemainderHalf : Int32 = 0

    def jf_rowsRemainderHalf : Int32
        @rowsRemainderHalf
    end

    def jf_rowsRemainderHalf=(value : Int32) : Int32
        @rowsRemainderHalf = value
    end
    

    def jinit_TouchButtonLocationHelper : self
        buttonSize : Int32 = CommonButtons.getInstance().not_nil!.jf_STANDARD_BUTTON_SIZE
        displayInfo : DisplayInfoSingleton? = DisplayInfoSingleton.getInstance()
        @totalColumns = JMath.round((displayInfo.not_nil!.getLastWidth()).to_f32 / (buttonSize).to_f32)
        @totalRows = JMath.round((displayInfo.not_nil!.getLastHeight()).to_f32 / (buttonSize).to_f32)
        @columnsRemainder = displayInfo.not_nil!.getLastWidth().remainder(buttonSize)
        @columnsRemainderHalf = (JR.shr(@columnsRemainder, 1))
        @rowsRemainder = displayInfo.not_nil!.getLastHeight().remainder(buttonSize)
        @rowsRemainderHalf = (JR.shr(@rowsRemainder, 1))
        self
    end
    

    def getTotalColumns : Int32
        return @totalColumns
    end
    

    def getTotalRows : Int32
        return @totalRows
    end
    

    def getColumnsRemainder : Int32
        return @columnsRemainder
    end
    

    def getRowsRemainder : Int32
        return @rowsRemainder
    end
    

    def getColumnsRemainderHalf : Int32
        return @columnsRemainderHalf
    end
    

    def getRowsRemainderHalf : Int32
        return @rowsRemainderHalf
    end
    

    def toString : String
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("totalColumns: ")
        stringBuffer.not_nil!.appendint(@totalColumns)
        stringBuffer.not_nil!.append(" totalRows: ")
        stringBuffer.not_nil!.appendint(@totalRows)
        stringBuffer.not_nil!.append(" columnsRemainder: ")
        stringBuffer.not_nil!.appendint(@columnsRemainder)
        stringBuffer.not_nil!.append(" rowsRemainder: ")
        stringBuffer.not_nil!.appendint(@rowsRemainder)
        stringBuffer.not_nil!.append(" columnsRemainderHalf: ")
        stringBuffer.not_nil!.appendint(@columnsRemainderHalf)
        stringBuffer.not_nil!.append(" rowsRemainderHalf: ")
        stringBuffer.not_nil!.appendint(@rowsRemainderHalf)
        return stringBuffer.not_nil!.toString()
    end
end


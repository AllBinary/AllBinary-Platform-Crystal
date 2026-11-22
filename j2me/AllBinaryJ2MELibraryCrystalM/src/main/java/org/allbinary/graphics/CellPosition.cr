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
# package org.allbinary.graphics

class CellPosition < V
    @id : Int32 = 0

    def jf_id : Int32
        @id
    end

    def jf_id=(value : Int32) : Int32
        @id = value
    end
    @column : Int32 = 0

    def jf_column : Int32
        @column
    end

    def jf_column=(value : Int32) : Int32
        @column = value
    end
    @row : Int32 = 0

    def jf_row : Int32
        @row
    end

    def jf_row=(value : Int32) : Int32
        @row = value
    end
    

    def self.toStringCellPosition(basicGeographicMapCellPosition : CellPosition?) : String
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.not_nil!.getColumn(), basicGeographicMapCellPosition.not_nil!.getRow())
    end
    

    def self.toStringColRow(i_column : Int, i_row : Int) : String
        i_column = i_column.to_i32!
        i_row = i_row.to_i32!
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        commonSeps : CommonSeps? = CommonSeps.getInstance()
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_PARENTHESIS_OPEN)
        stringBuffer.not_nil!.appendint(i_column)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_COMMA)
        stringBuffer.not_nil!.appendint(i_row)
        stringBuffer.not_nil!.append(commonSeps.not_nil!.jf_PARENTHESIS_CLOSE)
        return stringBuffer.not_nil!.toString()
    end
    

    def jinit_CellPosition(column : Int, row : Int, columns : Int, rows : Int) : self
        column = column.to_i32!
        row = row.to_i32!
        columns = columns.to_i32!
        rows = rows.to_i32!
        jinit_V()
        @column = column
        @row = row
        @id = (row &* columns) &+ column
        self
    end
    

    def getColumn : Int32
        return @column
    end
    

    def getRow : Int32
        return @row
    end
    

    def toString : String
        return CellPosition.toStringColRow(self.getColumn(), self.getRow())
    end
    

    def getId : Int32
        return @id
    end
end


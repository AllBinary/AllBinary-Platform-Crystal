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

class CellPositionFactory < JObject
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @j_NONE : CellPosition? = nil

    def jf_NONE : CellPosition?
        @j_NONE
    end

    def jf_NONE=(value : CellPosition?) : CellPosition?
        @j_NONE = value
    end
    @cellPositionArray : Array(Array(CellPosition?)?)? = nil

    def jf_cellPositionArray : Array(Array(CellPosition?)?)?
        @cellPositionArray
    end

    def jf_cellPositionArray=(value : Array(Array(CellPosition?)?)?) : Array(Array(CellPosition?)?)?
        @cellPositionArray = value
    end
    @columns : Int32 = 0

    def jf_columns : Int32
        @columns
    end

    def jf_columns=(value : Int32) : Int32
        @columns = value
    end
    @rows : Int32 = 0

    def jf_rows : Int32
        @rows
    end

    def jf_rows=(value : Int32) : Int32
        @rows = value
    end

    @@jst_SINGLETON : CellPositionFactory? = nil

    def self.jst_SINGLETON : CellPositionFactory?
        jclinit
        @@jst_SINGLETON
    end

    def self.jst_SINGLETON=(value : CellPositionFactory?) : CellPositionFactory?
        jclinit
        @@jst_SINGLETON = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_SINGLETON = CellPositionFactory.new.jinit_CellPositionFactory()
    end
    

    def self.getInstance : CellPositionFactory?
        return CellPositionFactory.jst_SINGLETON
    end

    # Java field initializers run after the super constructor
    def jfields_CellPositionFactory : Nil
    @logUtil = LogUtil.getInstance()
    @j_NONE = CellPosition.new.jinit_CellPosition(-1, -1, -1, -1)
    @cellPositionArray = Array(Array(CellPosition?)?).new(0) { Array(CellPosition?).new(0, nil).as(Array(CellPosition?)?) }
    
    
    end
    

    def jinit_CellPositionFactory : self
        jfields_CellPositionFactory()
        self
    end
    

    def init(columns : Int, rows : Int) : Nil
        columns = columns.to_i32!
        rows = rows.to_i32!
        commonStrings : CommonStrings? = CommonStrings.getInstance()
        stringBuffer : StringMaker? = StringMaker.new.jinit_StringMaker()
        stringBuffer.not_nil!.append("Init: columns: ")
        stringBuffer.not_nil!.appendint(columns)
        stringBuffer.not_nil!.append(" rows: ")
        stringBuffer.not_nil!.appendint(rows)
        @logUtil.not_nil!.putF(stringBuffer.not_nil!.toString(), self, commonStrings.not_nil!.jf_INIT)
        @cellPositionArray = Array(Array(CellPosition?)?).new(columns) { Array(CellPosition?).new(rows, nil).as(Array(CellPosition?)?) }
        @columns = columns
        @rows = rows
        column : Int32 = 0
        jfor1 = false
        while true
            if jfor1
                column &+= 1
            end
            jfor1 = true
            break unless column < columns
            row : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    row &+= 1
                end
                jfor2 = true
                break unless row < rows
                self.createInstance(column, row)
            end
        end
    end
    

    def getInstanceColRow(i_column : Int, i_row : Int) : CellPosition?
        i_column = i_column.to_i32!
        i_row = i_row.to_i32!
        begin
            return @cellPositionArray.not_nil![i_column].not_nil![i_row]
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(StringMaker.new.jinit_StringMaker().not_nil!.append("columns: ").not_nil!.appendint(self.getColumns()).not_nil!.append(" rows: ").not_nil!.appendint(self.getRows()).not_nil!.append(" col: ").not_nil!.appendint(i_column).not_nil!.append(" row: ").not_nil!.appendint(i_row).not_nil!.toString(), self, commonStrings.not_nil!.jf_GET_INSTANCE, e)
            return @j_NONE
            else
                raise jex1
            end
        end
        return nil
    end
    

    def createInstance(i_column : Int, i_row : Int) : CellPosition?
        i_column = i_column.to_i32!
        i_row = i_row.to_i32!
        cellPositionCanBeNull : CellPosition? = @cellPositionArray.not_nil![i_column].not_nil![i_row]
        if (cellPositionCanBeNull).nil?
            cellPositionCanBeNull = CellPosition.new.jinit_CellPosition(i_column, i_row, @columns, @rows)
            @cellPositionArray.not_nil![i_column].not_nil![i_row] = cellPositionCanBeNull
        end
        return cellPositionCanBeNull
    end
    

    def getColumns : Int32
        return @columns
    end
    

    def getRows : Int32
        return @rows
    end
end


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

class TouchButtonsMappingPaintable < Paintable
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @foregroundColor : Int32 = 0

    def jf_foregroundColor : Int32
        @foregroundColor
    end

    def jf_foregroundColor=(value : Int32) : Int32
        @foregroundColor = value
    end
    @paintableTable : Array(Array(Paintable?)?)? = nil

    def jf_paintableTable : Array(Array(Paintable?)?)?
        @paintableTable
    end

    def jf_paintableTable=(value : Array(Array(Paintable?)?)?) : Array(Array(Paintable?)?)?
        @paintableTable = value
    end
    @touchButtonLocationHelper : TouchButtonLocationHelper? = nil

    def jf_touchButtonLocationHelper : TouchButtonLocationHelper?
        @touchButtonLocationHelper
    end

    def jf_touchButtonLocationHelper=(value : TouchButtonLocationHelper?) : TouchButtonLocationHelper?
        @touchButtonLocationHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_TouchButtonsMappingPaintable : Nil
    @logUtil = LogUtil.getInstance()
    
    @paintableTable = Array(Array(Paintable?)?).new(0) { Array(Paintable?).new(0, nil).as(Array(Paintable?)?) }
    @touchButtonLocationHelper = TouchButtonLocationHelper.new.jinit_TouchButtonLocationHelper()
    end
    

    def jinit_TouchButtonsMappingPaintable(basicColor : BasicColor?) : self
        jinit_Paintable()
        jfields_TouchButtonsMappingPaintable()
        @foregroundColor = basicColor.not_nil!.intValue()
        self.init()
        self
    end
    

    def init : Nil
        begin
            @paintableTable = self.createPaintableTable()
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, "updateRectangle", e)
            else
                raise jex1
            end
        end
    end
    

    def createPaintableTable : Array(Array(Paintable?)?)?
        totalColumns : Int32 = @touchButtonLocationHelper.not_nil!.getTotalColumns()
        totalRows : Int32 = @touchButtonLocationHelper.not_nil!.getTotalRows()
        paintableTable : Array(Array(Paintable?)?)? = Array(Array(Paintable?)?).new(totalColumns) { Array(Paintable?).new(totalRows, nil).as(Array(Paintable?)?) }
        cellPositionFactory : CellPositionFactory? = CellPositionFactory.getInstance()
        commonButtons : CommonButtons? = CommonButtons.getInstance()
        index : Int32 = totalColumns &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            rowIndex : Int32 = totalRows &- 1
            jfor2 = false
            while true
                if jfor2
                    rowIndex &-= 1
                end
                jfor2 = true
                break unless rowIndex >= 0
                @paintableTable.not_nil![index].not_nil![rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().not_nil!.jf_NONE, TouchButtonBlankResource.getInstance(), commonButtons.not_nil!.jf_NORMAL_BUTTON, cellPositionFactory.not_nil!.getInstanceColRow(index, rowIndex), @touchButtonLocationHelper.not_nil!.getColumnsRemainderHalf(), @touchButtonLocationHelper.not_nil!.getRowsRemainderHalf())
            end
        end
        return paintableTable
    end
    

    def paint(graphics : Graphics?) : Nil
        totalColumns : Int32 = @touchButtonLocationHelper.not_nil!.getTotalColumns()
        totalRows : Int32 = @touchButtonLocationHelper.not_nil!.getTotalRows()
        index : Int32 = totalColumns &- 1
        jfor3 = false
        while true
            if jfor3
                index &-= 1
            end
            jfor3 = true
            break unless index >= 0
            rowIndex : Int32 = totalRows &- 1
            jfor4 = false
            while true
                if jfor4
                    rowIndex &-= 1
                end
                jfor4 = true
                break unless rowIndex >= 0
                @paintableTable.not_nil![index].not_nil![rowIndex].not_nil!.paint(graphics)
            end
        end
    end
end


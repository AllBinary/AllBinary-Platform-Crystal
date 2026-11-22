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

class BasicTouchButtonsBuilder < BaseTouchInput
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end

    # Java field initializers run after the super constructor
    def jfields_BasicTouchButtonsBuilder : Nil
    @logUtil = LogUtil.getInstance()
    end

    def jinit_BasicTouchButtonsBuilder : self
        jinit_BaseTouchInput()
        jfields_BasicTouchButtonsBuilder()
        self
    end
    

    def getList : BasicArrayList?
        begin
            @logUtil.not_nil!.putF(@commonStrings.not_nil!.jf_START, self, @commonStrings.not_nil!.jf_CONSTRUCTOR)
            list : BasicArrayList? = BasicArrayListD.new.jinit_BasicArrayListD()
            commonButtons : CommonButtons? = CommonButtons.getInstance()
            touchButtonLocationHelper : TouchButtonLocationHelper? = TouchButtonLocationHelper.new.jinit_TouchButtonLocationHelper()
            basicTouchButtonCellPositionFactory : BasicTouchButtonCellPositionFactory? = BasicTouchButtonCellPositionFactory.new.jinit_BasicTouchButtonCellPositionFactory()
            j_UP : TouchButton? = TouchButton.createButton(BasicTouchInputFactory.getInstance().not_nil!.jf_UP, TouchButtonUpResource.getInstance(), commonButtons.not_nil!.jf_NORMAL_BUTTON, basicTouchButtonCellPositionFactory.not_nil!.jf_SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.not_nil!.getColumnsRemainderHalf(), touchButtonLocationHelper.not_nil!.getRowsRemainderHalf())
            j_DOWN : TouchButton? = TouchButton.createButton(BasicTouchInputFactory.getInstance().not_nil!.jf_DOWN, TouchButtonDownResource.getInstance(), commonButtons.not_nil!.jf_NORMAL_BUTTON, basicTouchButtonCellPositionFactory.not_nil!.jf_BOTTOM_LEFT, touchButtonLocationHelper.not_nil!.getColumnsRemainderHalf(), touchButtonLocationHelper.not_nil!.getRowsRemainderHalf())
            j_LEFT : TouchButton? = TouchButton.createButton(BasicTouchInputFactory.getInstance().not_nil!.jf_SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource.getInstance(), commonButtons.not_nil!.jf_NORMAL_BUTTON, basicTouchButtonCellPositionFactory.not_nil!.jf_BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.not_nil!.getColumnsRemainderHalf(), touchButtonLocationHelper.not_nil!.getRowsRemainderHalf())
            j_RIGHT : TouchButton? = TouchButton.createButton(BasicTouchInputFactory.getInstance().not_nil!.jf_SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource.getInstance(), commonButtons.not_nil!.jf_NORMAL_BUTTON, basicTouchButtonCellPositionFactory.not_nil!.jf_BOTTOM_RIGHT, touchButtonLocationHelper.not_nil!.getColumnsRemainderHalf(), touchButtonLocationHelper.not_nil!.getRowsRemainderHalf())
            list.not_nil!.add(j_UP)
            list.not_nil!.add(j_LEFT)
            list.not_nil!.add(j_RIGHT)
            list.not_nil!.add(j_DOWN)
            return list
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, @commonStrings.not_nil!.jf_GET_LIST, e)
            return BasicArrayListUtil.getInstance().not_nil!.getImmutableInstance()
            else
                raise jex1
            end
        end
        return nil
    end
end


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
# package org.allbinary.graphics.form

class LockableFormPaintableFactory < ItemPaintableFactory
    @lockedIndex : Int32 = 0

    def jf_lockedIndex : Int32
        @lockedIndex
    end

    def jf_lockedIndex=(value : Int32) : Int32
        @lockedIndex = value
    end
    

    def jinit_LockableFormPaintableFactory(lockedIndex : Int) : self
        lockedIndex = lockedIndex.to_i32!
        jinit_ItemPaintableFactory()
        @lockedIndex = lockedIndex
        self
    end
    

    def getInstanceItemPaintable(paintableForm : PaintableForm?) : ItemPaintable?
        return LockablePaintable.new.jinit_LockablePaintable(@lockedIndex)
    end
end


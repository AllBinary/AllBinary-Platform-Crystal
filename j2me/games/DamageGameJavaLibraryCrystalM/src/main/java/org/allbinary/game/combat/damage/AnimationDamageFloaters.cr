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
# package org.allbinary.game.combat.damage

class AnimationDamageFloaters < DamageFloaters
    @logUtil : LogUtil? = nil

    def jf_logUtil : LogUtil?
        @logUtil
    end

    def jf_logUtil=(value : LogUtil?) : LogUtil?
        @logUtil = value
    end
    @layerInterface : AllBinaryLayer? = nil

    def jf_layerInterface : AllBinaryLayer?
        @layerInterface
    end

    def jf_layerInterface=(value : AllBinaryLayer?) : AllBinaryLayer?
        @layerInterface = value
    end
    @animationInterfaceArray : Array(IndexedAnimation?)? = nil

    def jf_animationInterfaceArray : Array(IndexedAnimation?)?
        @animationInterfaceArray
    end

    def jf_animationInterfaceArray=(value : Array(IndexedAnimation?)?) : Array(IndexedAnimation?)?
        @animationInterfaceArray = value
    end
    @circularIndexUtil : CircularIndexUtil? = nil

    def jf_circularIndexUtil : CircularIndexUtil?
        @circularIndexUtil
    end

    def jf_circularIndexUtil=(value : CircularIndexUtil?) : CircularIndexUtil?
        @circularIndexUtil = value
    end
    @dx : Int32 = 0

    def jf_dx : Int32
        @dx
    end

    def jf_dx=(value : Int32) : Int32
        @dx = value
    end
    @dy : Int32 = 0

    def jf_dy : Int32
        @dy
    end

    def jf_dy=(value : Int32) : Int32
        @dy = value
    end

    # Java field initializers run after the super constructor
    def jfields_AnimationDamageFloaters : Nil
    @logUtil = LogUtil.getInstance()
    
    
    
    
    
    end
    

    def jinit_AnimationDamageFloaters(layerInterface : AllBinaryLayer?, animationInterfaceArray : Array(IndexedAnimation?)?, dx : Int, dy : Int) : self
        dx = dx.to_i32!
        dy = dy.to_i32!
        jinit_DamageFloaters()
        jfields_AnimationDamageFloaters()
        @animationInterfaceArray = animationInterfaceArray
        index : Int32 = @animationInterfaceArray.not_nil!.size &- 1
        jfor1 = false
        while true
            if jfor1
                index &-= 1
            end
            jfor1 = true
            break unless index >= 0
            @animationInterfaceArray.not_nil![index].not_nil!.setFrame(@animationInterfaceArray.not_nil![index].not_nil!.getSize() &- 1)
        end
        @layerInterface = layerInterface
        @circularIndexUtil = CircularIndexUtil.createInstance(@animationInterfaceArray.not_nil!.size)
        @dx = dx
        @dy = dy
        self
    end
    

    def add(damage : Int) : Nil
        damage = damage.to_i32!
        i : Int32 = @circularIndexUtil.not_nil!.getIndex()
        @animationInterfaceArray.not_nil![i].not_nil!.setFrame(0)
        @circularIndexUtil.not_nil!.next_()
    end
    

    def paint(graphics : Graphics?) : Nil
        begin
            viewPosition : ViewPositionBase? = @layerInterface.not_nil!.getViewPosition()
            x : Int32 = viewPosition.not_nil!.getX()
            y : Int32 = viewPosition.not_nil!.getY()
            index : Int32 = 0
            jfor2 = false
            while true
                if jfor2
                    index &+= 1
                end
                jfor2 = true
                break unless index < @animationInterfaceArray.not_nil!.size
                animationInterface : IndexedAnimation? = @animationInterfaceArray.not_nil![index]
                if animationInterface.not_nil!.getFrame() < animationInterface.not_nil!.getAnimationSize() &- 1
                    delta : Int32 = animationInterface.not_nil!.getFrame() &* 20
                    animationInterface.not_nil!.paintXY(graphics, x &+ @dx, y &- delta &+ @dy)
                    animationInterface.not_nil!.nextFrame()
                end
            end
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            commonStrings : CommonStrings? = CommonStrings.getInstance()
            canvasStrings : CanvasStrings? = CanvasStrings.getInstance()
            @logUtil.not_nil!.put(commonStrings.not_nil!.jf_EXCEPTION, self, canvasStrings.not_nil!.jf_PAINT, e)
            else
                raise jex1
            end
        end
    end
end


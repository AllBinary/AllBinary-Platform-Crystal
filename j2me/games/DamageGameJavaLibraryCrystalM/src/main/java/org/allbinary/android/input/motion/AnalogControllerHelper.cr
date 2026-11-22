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
# package org.allbinary.android.input.motion

class AnalogControllerHelper < JObject
    @reduceTimeFactor : Int32 = 0

    def jf_reduceTimeFactor : Int32
        @reduceTimeFactor
    end

    def jf_reduceTimeFactor=(value : Int32) : Int32
        @reduceTimeFactor = value
    end
    @j_SCALE_VALUE : Int32 = 0

    def jf_SCALE_VALUE : Int32
        @j_SCALE_VALUE
    end

    def jf_SCALE_VALUE=(value : Int32) : Int32
        @j_SCALE_VALUE = value
    end
    @rightTimeElapsedHelper : TimeDelayHelper? = nil

    def jf_rightTimeElapsedHelper : TimeDelayHelper?
        @rightTimeElapsedHelper
    end

    def jf_rightTimeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @rightTimeElapsedHelper = value
    end
    @leftTimeElapsedHelper : TimeDelayHelper? = nil

    def jf_leftTimeElapsedHelper : TimeDelayHelper?
        @leftTimeElapsedHelper
    end

    def jf_leftTimeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @leftTimeElapsedHelper = value
    end
    @downTimeElapsedHelper : TimeDelayHelper? = nil

    def jf_downTimeElapsedHelper : TimeDelayHelper?
        @downTimeElapsedHelper
    end

    def jf_downTimeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @downTimeElapsedHelper = value
    end
    @upTimeElapsedHelper : TimeDelayHelper? = nil

    def jf_upTimeElapsedHelper : TimeDelayHelper?
        @upTimeElapsedHelper
    end

    def jf_upTimeElapsedHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @upTimeElapsedHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_AnalogControllerHelper : Nil
    
    @j_SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().not_nil!.jf_SCALE_VALUE
    @rightTimeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    @leftTimeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    @downTimeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    @upTimeElapsedHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    end
    

    def jinit_AnalogControllerHelper(reduceTimeFactor : Int) : self
        reduceTimeFactor = reduceTimeFactor.to_i32!
        jfields_AnalogControllerHelper()
        @reduceTimeFactor = reduceTimeFactor
        self
    end
    

    def right(collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
        @rightTimeElapsedHelper.not_nil!.jf_delay = (JR.shr((@j_SCALE_VALUE &- xAnalogValue), @reduceTimeFactor))
        if @rightTimeElapsedHelper.not_nil!.isTimeTNT()
            collidableDestroyableDamageableLayer.not_nil!.right()
        end
    end
    

    def left(collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
        @leftTimeElapsedHelper.not_nil!.jf_delay = (JR.shr((@j_SCALE_VALUE &+ xAnalogValue), @reduceTimeFactor))
        if @leftTimeElapsedHelper.not_nil!.isTimeTNT()
            collidableDestroyableDamageableLayer.not_nil!.left()
        end
    end
    

    def up(collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
        @upTimeElapsedHelper.not_nil!.jf_delay = (JR.shr((@j_SCALE_VALUE &- xAnalogValue), @reduceTimeFactor))
        if @upTimeElapsedHelper.not_nil!.isTimeTNT()
            collidableDestroyableDamageableLayer.not_nil!.up()
        end
    end
    

    def down(collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer?, xAnalogValue : Int) : Nil
        xAnalogValue = xAnalogValue.to_i32!
        @downTimeElapsedHelper.not_nil!.jf_delay = (JR.shr((@j_SCALE_VALUE &+ xAnalogValue), @reduceTimeFactor))
        if @downTimeElapsedHelper.not_nil!.isTimeTNT()
            collidableDestroyableDamageableLayer.not_nil!.down()
        end
    end
end


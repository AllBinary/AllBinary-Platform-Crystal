# Generated Code Do Not Modify
# package org.allbinary.game.layer.weapon

class TempExplosionWeaponLayer < SimpleWeaponLayer
    # weaponProperties is the field of WeaponLayer
    @timeDelayHelper : TimeDelayHelper? = nil

    def jf_timeDelayHelper : TimeDelayHelper?
        @timeDelayHelper
    end

    def jf_timeDelayHelper=(value : TimeDelayHelper?) : TimeDelayHelper?
        @timeDelayHelper = value
    end

    # Java field initializers run after the super constructor
    def jfields_TempExplosionWeaponLayer : Nil
    @weaponProperties = WeaponProperties.new.jinit_WeaponProperties(-1_i64, -1_i64, 0, 1000, 0_i16)
    @timeDelayHelper = TimeDelayHelper.new.jinit_TimeDelayHelper(0)
    end
    

    def jinit_TempExplosionWeaponLayer(name : String, movement : Movement?, animationInterface : Animation?, rectangle : Rectangle?, viewPosition : ViewPositionBase?, timeDelay : Int) : self
        timeDelay = timeDelay.to_i32!
        jinit_SimpleWeaponLayer(name, RemoteInfo.jst_REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        jfields_TempExplosionWeaponLayer()
        @timeDelayHelper.not_nil!.jf_delay = timeDelay
        self
    end
    

    def processTick(allBinaryLayerManager : AllBinaryLayerManager?) : Nil
        if @timeDelayHelper.not_nil!.isTime(GameTickTimeDelayHelperFactory.getInstance().not_nil!.jf_startTime)
            self.getCollidableInferface().not_nil!.collide(self, self)
            @totalDamage = self.getInitDamage() &+ 1
        end
        super(allBinaryLayerManager)
    end
end


# Generated Code Do Not Modify
# package org.allbinary.business.advertisement

class GameAdStateFactory < JObject
    include GameAdStateFactoryInterface
    @gameAdStateArray : Array(GameAdState?)? = nil

    def jf_gameAdStateArray : Array(GameAdState?)?
        @gameAdStateArray
    end

    def jf_gameAdStateArray=(value : Array(GameAdState?)?) : Array(GameAdState?)?
        @gameAdStateArray = value
    end
    @gameAdState : GameAdState? = nil

    def jf_gameAdState : GameAdState?
        @gameAdState
    end

    def jf_gameAdState=(value : GameAdState?) : GameAdState?
        @gameAdState = value
    end

    @@jst_instance : GameAdStateFactory? = nil

    def self.jst_instance : GameAdStateFactory?
        jclinit
        @@jst_instance
    end

    def self.jst_instance=(value : GameAdStateFactory?) : GameAdStateFactory?
        jclinit
        @@jst_instance = value
    end

    @@jclinit_done : Bool = false

    def self.jclinit : Nil
        return if @@jclinit_done
        @@jclinit_done = true
        @@jst_instance = GameAdStateFactory.new.jinit_GameAdStateFactory()
    end
    

    def self.getInstance : GameAdStateFactory?
        return GameAdStateFactory.jst_instance
    end

    # Java field initializers run after the super constructor
    def jfields_GameAdStateFactory : Nil
    @gameAdStateArray = [GameAdState.new.jinit_GameAdState(AppNameLicensingAdConfiguration.new.jinit_AppNameLicensingAdConfiguration())] of GameAdState?
    @gameAdState = @gameAdStateArray.not_nil![0]
    end

    def jinit_GameAdStateFactory : self
        jfields_GameAdStateFactory()
        self
    end
    

    def getCurrentInstance : GameAdState?
        return @gameAdState
    end
    

    def getInstanceForApp(softwareInformation : SoftwareInformation?) : GameAdStateBase?
        @gameAdState = @gameAdStateArray.not_nil![0]
        return @gameAdStateArray.not_nil![0]
    end
    

    def isEnabled : Bool
        return false
    end
end


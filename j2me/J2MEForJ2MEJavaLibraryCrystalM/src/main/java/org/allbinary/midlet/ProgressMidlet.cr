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
# package org.allbinary.midlet

class ProgressMidlet < AllBinaryMidlet
    @abeClientInformation : AbeClientInformationInterface? = nil

    def jf_abeClientInformation : AbeClientInformationInterface?
        @abeClientInformation
    end

    def jf_abeClientInformation=(value : AbeClientInformationInterface?) : AbeClientInformationInterface?
        @abeClientInformation = value
    end
    

    def jinit_ProgressMidlet(clientInformationFactory : ClientInformationFactory?) : self
        jinit_AllBinaryMidlet()
        self.preInit()
        @abeClientInformation = clientInformationFactory.not_nil!.getInstance()
        self
    end
    

    def preInit : Nil
    end
    

    def exitProgress(isProgress : Bool) : Nil
        processor : Processor? = MidletExitProcessorFactory.getInstance().not_nil!.getExitInstance(self)
        begin
            primaryThreadPool : ThreadPool? = PrimaryThreadPool.getInstance()
            runnable : JRunnable? = ExitRunnable.new.jinit_ExitRunnable(self, processor, isProgress)
            primaryThreadPool.not_nil!.runTask(runnable)
        rescue jexc1 : ::Exception
            jex1 = JR.jthrowable(jexc1)
            if jex1.is_a?(JException)
                e = jex1.as(JException)
            @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "exit", e)
            begin
                processor.not_nil!.process()
            rescue jexc2 : ::Exception
                jex2 = JR.jthrowable(jexc2)
                if jex2.is_a?(JException)
                    e2 = jex2.as(JException)
                @logUtil.not_nil!.put(@commonStrings.not_nil!.jf_EXCEPTION, self, "exit", e)
                else
                    raise jex2
                end
            end
            else
                raise jex1
            end
        end
    end
end


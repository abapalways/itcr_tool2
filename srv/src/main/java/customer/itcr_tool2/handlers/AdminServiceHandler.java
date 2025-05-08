package customer.itcr_tool2.handlers;

import java.time.LocalDate;


import org.springframework.stereotype.Component;

import com.sap.cds.services.EventContext;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;


import cds.gen.cep.itsm.changerequests.ChangeRequests;

@Component
@ServiceName("AdminService")
public class AdminServiceHandler implements EventHandler {
//    @Before(event = { "CREATE", "UPDATE" }, entity = "AdminService.ChangeRequests")
//    public class AdminServiceHandler implements EventHandler {
        @Before(event = "DRAFT_NEW", entity = "*")
    public void createDraftCR(EventContext context, ChangeRequests changeRequests) { 
      LocalDate currenDate = LocalDate.now();
        String userName = context.getUserInfo().getId();
        // Access the entity data
      //  ChangeRequests myEntity = (ChangeRequests) entity;
        
        // Modify a field
       // myEntity.setReqname(userName);
       changeRequests.setStatusCode( "1");
       changeRequests.setReqname(userName);
       changeRequests.setChangeTypeCode("X");
       changeRequests.setItBoardApproverCode("X");
       changeRequests.setTicketType("Test Ticket");
       changeRequests.setSchStartDate(currenDate);
       changeRequests.setRiskCode("X");
       changeRequests.setSchEndDate(currenDate);
       changeRequests.setSystemEqipmentCode("X");
       changeRequests.setImpactCode("X"); 
       changeRequests.setAppliedEnvCode("X");
       changeRequests.setReqdept("X");
       changeRequests.setDescrOfChange("X");
       changeRequests.setJustOfChange("X");
       changeRequests.setCommPlan("X");
       changeRequests.setImplPlan("X");
       changeRequests.setBackoutPlan("X");
       changeRequests.setPostPlan("X");

    }
    @On(event = "submitcr")
    public void submitcr( )
    {
      


    }
}

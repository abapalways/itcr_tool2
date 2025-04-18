using {cep.itsm.changerequests as db } from '../db/schema' ;

service AdminService {

    entity ChangeRequests as projection on db.ChangeRequests;
    

}

annotate AdminService.ChangeRequests with @odata.draft.enabled;
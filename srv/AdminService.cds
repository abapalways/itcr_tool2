using {cep.itsm.changerequests as db } from '../db/schema' ;

service AdminService {
    entity ChangeRequests as projection on db.ChangeRequests;
    action submitcr( );
}

annotate AdminService.ChangeRequests with @odata.draft.enabled;
annotate AdminService with @(requires: 'admin') ;

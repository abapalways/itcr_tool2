using {cep.itsm.changerequests as db} from '../db/schema';

service Maintaincrstatuses{

    entity CRStatuses as projection on db.CRStatuses;
}

annotate Maintaincrstatuses.CRStatuses  with @odata.draft.enabled;

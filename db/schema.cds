namespace cep.itsm.changerequests;

using {cuid,managed,sap.common.CodeList} from '@sap/cds/common';

entity ChangeRequests : cuid,managed {
status  : Association to CRStatuses;
category  : Association to CRCategories;
reqname   : String(100);
system_eqipment  : Association to CRSystems_Equipments;
applied_env : Association to CRApplied_Environments;
reqdept     : String(100);
change_type : Association to CRChange_Types;
ticket_type : String(100);
risk        : Association to Risks;
impact      : Association to  Impacts;
impacted_system : String(100);
descr_of_change : String;
just_of_change : String;
comm_plan      : String;
impl_plan      : String;
post_plan      : String;
backout_plan   : String;
business_driver: Association to CRBusiness_Drivers;
affected_item : Association to CRAffected_Items;
uat_ready    : Association to CRUAT_Ready;
uat_remarks  : String(100);
uat_start_date : Date;
uat_End_date : Date;
additional_approvers : String(100);
it_board_approver : Association to CRIT_Board_Approvers;
sch_start_date : Date;
sch_end_date : Date;
impl_date : Date;
it_review_status : Association to CRIT_Review_Statuses;
impl_notes: String;
cab_approved_date : Date;
cab_comments: String;
remarks: String;
}

entity CRBusiness_Drivers : CodeList{
    key code : String enum {
        Enhancement = 'E';
        Maintenance = 'M';
        Steady_State = 'S';
        Break_Fix   = 'B';
        Application_Realease = 'AR';
        Hot_Fix = 'HF';
    }
}

entity CRIT_Review_Statuses : CodeList{
    key code : String enum {
        Rejected = 'R';
        Approved = 'A';
        Pending = 'P';
    }
}

entity CRIT_Board_Approvers : CodeList{
    key code : String enum {
        Z1 = 'A';
        Z2 = 'B';
        Z3 = 'C';
        Z4 = 'D';
        Z5 = 'E';
    }
}
entity CRAffected_Items : CodeList{
    key code : String enum {
        Application_Programs_Code= 'APC';
        Admin_Procedure = 'AP';

    }
}
entity CRUAT_Ready : CodeList{
    key code : String enum {
        Yes = 'Y';
        No  = 'N';
    }
}
entity CRSystems_Equipments : CodeList{

    key code : String enum{

        Adobe_Sign = 'ADBSI';
        Agile = 'AG';
        AGmednet_JUDI = 'AGMJUDI';
    }
}

entity CRChange_Types : CodeList{
    key code : String enum{
        Normal = 'N';
        Expedited = 'E';
        Emergency = 'EM';
    }
}

entity Risks : CodeList{
    key code : String enum{
        Low = 'L';
        Medium = 'M';
        High = 'H';
    }
}

entity Impacts : CodeList{
    key code : String enum{
        Low = 'L';
        Medium = 'M';
        High = 'H';
    }
}

entity CRStatuses : CodeList{
key code : String enum{
Initial = 'I';
Pending_Approval = 'P'
}}

entity CRCategories : CodeList{
key code : String enum{
Corporate_Applications = 'C';
Infrastructure = 'I';
}}

entity CRApplied_Environments : CodeList{
key code : String enum{
North_America = 'N';
Global = 'G';
EMEA = 'E';
Asia_Pacific = 'A';
}}
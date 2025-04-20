using AdminService as service from '../../srv/AdminService';
annotate service.ChangeRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Change Request Status',
                Value : status_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Category',
                Value : category_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Requester''s name',
                Value : reqname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'System / Equipment',
                Value : system_eqipment_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Applied Environments',
                Value : applied_env_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Requester''s Department',
                Value : reqdept,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Change Type',
                Value : change_type_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Reference Ticket',
                Value : ticket_type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Risk',
                Value : risk_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impact',
                Value : impact_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Impacted Systems',
                Value : impacted_system,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Description of Change',
                Value : descr_of_change,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Justification of Change',
                Value : just_of_change,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Communication Plan(pre and post)',
                Value : comm_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Implementation Plan',
                Value : impl_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Post-Implementation Plan',
                Value : post_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Backout Plan',
                Value : backout_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Business Driver',
                Value : business_driver_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Affected Items',
                Value : affected_item_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UAT Ready',
                Value : uat_ready_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UAT Remarks or none',
                Value : uat_remarks,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UAT Start',
                Value : uat_start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UAT End Date',
                Value : uat_End_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Additional Approvers',
                Value : additional_approvers,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IT Board Approver',
                Value : it_board_approver_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scheduled Start Date',
                Value : sch_start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scheduled End Date',
                Value : sch_end_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IT Review Status',
                Value : it_review_status_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CAB Approved',
                Value : cab_approved_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CAB Comments',
                Value : cab_comments,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Change Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Implementation Info',
            ID : 'ImplementationInfo',
            Target : '@UI.FieldGroup#ImplementationInfo',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Remarks',
            ID : 'Remarks',
            Target : '@UI.FieldGroup#Remarks',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'status_code',
            Value : status_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'category_code',
            Value : category_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'reqname',
            Value : reqname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'system_eqipment_code',
            Value : system_eqipment_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'applied_env_code',
            Value : applied_env_code,
        },
    ],
    UI.FieldGroup #ImplementationInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Implementation Notes',
                Value : impl_notes,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Implementation Date',
                Value : impl_date,
            },
        ],
    },
    UI.FieldGroup #Remarks : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Remarks',
                Value : remarks,
            },
        ],
    },
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : impl_notes,
    },
);

annotate service.ChangeRequests with {
    status @Common.FieldControl : #ReadOnly
};

annotate service.ChangeRequests with {
    reqname @Common.FieldControl : #ReadOnly
};

annotate service.ChangeRequests with {
    system_eqipment @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    applied_env @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    reqdept @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    change_type @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    ticket_type @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    risk @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    impact @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    descr_of_change @UI.MultiLineText : true
};

annotate service.ChangeRequests with {
    cab_comments @UI.MultiLineText : true
};

annotate service.ChangeRequests with {
    remarks @UI.MultiLineText : true
};

annotate service.ChangeRequests with {
    sch_start_date @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    sch_end_date @Common.FieldControl : #Mandatory
};

annotate service.ChangeRequests with {
    it_board_approver @Common.FieldControl : #Mandatory
};


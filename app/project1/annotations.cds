using AdminService as service from '../../srv/AdminService';
using from '../../db/schema';

annotate service.ChangeRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { $Type: 'UI.DataFieldForAction', 
            Action: 'AdminService.EntityContainer/submitcr',
            Label: 'Submit CR'
            },

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
            $Type : 'UI.CollectionFacet',
            Label : 'Texts',
            ID : 'Texts',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'Descr_of_Change',
                    Target : '@UI.FieldGroup#Descr_of_Change',
                    Label : 'Description of Change',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'justfication_text',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'justification_tetx',
                            Target : '@UI.FieldGroup#justification_tetx',
                        },
                    ],
                    Label : 'Justification of Change',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'Commu_Plan',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'commu_plan',
                            Target : '@UI.FieldGroup#commu_plan',
                        },
                    ],
                    Label : 'Communication Plan',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'Implemen_Plan',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'impl_plan',
                            Target : '@UI.FieldGroup#impl_plan',
                        },
                    ],
                    Label : 'Implmentation Plan',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'post_impl_plan',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'post_impl_plan1',
                            Target : '@UI.FieldGroup#post_impl_plan',
                        },
                    ],
                    Label : 'Post Implementation Plan',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'backout_plan',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'backout_plan1',
                            Target : '@UI.FieldGroup#backout_plan1',
                        },
                    ],
                    Label : 'Backout Plan',
                },
            ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Implementation Details',
            ID : 'ImplementationInfo1',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'impl_date',
                    Target : '@UI.FieldGroup#impl_date',
                    Label : 'Date',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'impl_notes',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'impl_notes1',
                            Target : '@UI.FieldGroup#impl_notes1',
                        },
                    ],
                    Label : 'Notes',
                },
            ],
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Remarks',
            ID : 'Remarks',
            Target : '@UI.FieldGroup#Remarks',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'CAB Related',
            ID : 'CABRelated',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    ID : 'Date',
                    Target : '@UI.FieldGroup#Date',
                    Label : 'Date',
                },
                {
                    $Type : 'UI.CollectionFacet',
                    ID : 'comments',
                    Facets : [
                        {
                            $Type : 'UI.ReferenceFacet',
                            ID : 'comments1',
                            Target : '@UI.FieldGroup#comments',
                        },
                    ],
                    Label : 'Comments',
                },
            ],
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
                Label : 'Implementation Date',
                Value : impl_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Implementation Notes',
                Value : impl_notes,
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
    UI.FieldGroup #Descr_of_Change : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Description of Change: (Special character single quote '' is not allowed)',
                Value : descr_of_change,
            },
        ],
    },
    UI.FieldGroup #just_of_change : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : just_of_change,
                Label : 'just_of_change',
            },
        ],
    },
    UI.FieldGroup #Just_of_change : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
    UI.FieldGroup #test : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : just_of_change,
                Label : 'just_of_change',
            },
        ],
    },
    UI.FieldGroup #just_text : {
        $Type : 'UI.FieldGroupType',
        Data : [
            
        ],
    },
    UI.FieldGroup #just_text1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : just_of_change,
                Label : 'Justification of Change: (Special character single quote '' is not allowed)',
            },
        ],
    },
    UI.FieldGroup #justification_tetx : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : just_of_change,
                Label : 'Justification of Change: (Special character single quote '' is not allowed)',
            },
        ],
    },
    UI.FieldGroup #test1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #commu_plan : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Communication Plan(pre and post) (Special character single quote '' is not allowed)',
                Value : comm_plan,
            },
        ],
    },
    UI.FieldGroup #impl_plan : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Implementation Plan(Special character single quote '' is not allowed)',
                Value : impl_plan,
            },
        ],
    },
    UI.FieldGroup #post_impl_plan : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : post_plan,
                Label : ' Post-Implementation Plan: (Special character single quote '' is not allowed)',
            },
        ],
    },
    UI.FieldGroup #backout_plan : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #backout_plan1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Backout Plan (Special character single quote '' is not allowed)',
                Value : backout_plan,
            },
        ],
    },
    UI.FieldGroup #impl_date : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : impl_date,
                Label : 'Implementation Date',
            },
        ],
    },
    UI.FieldGroup #impl_notes1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : impl_notes,
                Label : 'Implementation Notes',
            },
        ],
    },
    UI.FieldGroup #CABComments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CAB Comments',
                Value : cab_comments,
            },
        ],
    },
    UI.FieldGroup #CAB_Date : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_approved_date,
            },
        ],
    },
    UI.FieldGroup #cab_notes : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_comments,
                Label : 'cab_comments',
            },
        ],
    },
    UI.FieldGroup #CABComments1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_comments,
            },
        ],
    },
    UI.FieldGroup #CAB_Date1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #ded : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #Comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #Date : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_approved_date,
                Label : 'CAB Approved',
            },
        ],
    },
    UI.FieldGroup #Comments1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_comments,
                Label : 'cab_comments',
            },
        ],
    },
    UI.FieldGroup #comments : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : cab_comments,
                Label : 'CAB Comments',
            },
        ],
    },
);

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
    descr_of_change @(
        UI.MultiLineText : true,
        Common.FieldControl : #Mandatory,
    )
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

annotate service.ChangeRequests with {
    just_of_change @(
        UI.MultiLineText : true,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.ChangeRequests with {
    comm_plan @(
        Common.FieldControl : #Mandatory,
        UI.MultiLineText : true,
    )
};

annotate service.ChangeRequests with {
    impl_plan @(
        Common.FieldControl : #Mandatory,
        UI.MultiLineText : true,
    )
};

annotate service.ChangeRequests with {
    backout_plan @(
        UI.MultiLineText : true,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.ChangeRequests with {
    post_plan @(
        UI.MultiLineText : true,
        Common.FieldControl : #Mandatory,
    )
};

annotate service.ChangeRequests with {
    impl_notes @UI.MultiLineText : true
};

annotate service.ChangeRequests with {
    status @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'CRStatuses',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : status_code,
                    ValueListProperty : 'code',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'name',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
        Common.FieldControl : #ReadOnly,
        )};

annotate service.CRStatuses with {
    code @Common.Text : name
};


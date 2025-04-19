using AdminService as service from '../../srv/AdminService';
annotate service.ChangeRequests with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
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
            {
                $Type : 'UI.DataField',
                Label : 'reqdept',
                Value : reqdept,
            },
            {
                $Type : 'UI.DataField',
                Label : 'change_type_code',
                Value : change_type_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ticket_type',
                Value : ticket_type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'risk_code',
                Value : risk_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact_code',
                Value : impact_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impacted_system',
                Value : impacted_system,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr_of_change',
                Value : descr_of_change,
            },
            {
                $Type : 'UI.DataField',
                Label : 'just_of_change',
                Value : just_of_change,
            },
            {
                $Type : 'UI.DataField',
                Label : 'comm_plan',
                Value : comm_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impl_plan',
                Value : impl_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'post_plan',
                Value : post_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'backout_plan',
                Value : backout_plan,
            },
            {
                $Type : 'UI.DataField',
                Label : 'business_driver_code',
                Value : business_driver_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'affected_item_code',
                Value : affected_item_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'uat_ready_code',
                Value : uat_ready_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'uat_remarks',
                Value : uat_remarks,
            },
            {
                $Type : 'UI.DataField',
                Label : 'uat_start_date',
                Value : uat_start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'uat_End_date',
                Value : uat_End_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'additional_approvers',
                Value : additional_approvers,
            },
            {
                $Type : 'UI.DataField',
                Label : 'it_board_approver_code',
                Value : it_board_approver_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sch_start_date',
                Value : sch_start_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sch_end_date',
                Value : sch_end_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impl_date',
                Value : impl_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'it_review_status_code',
                Value : it_review_status_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impl_notes',
                Value : impl_notes,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cab_approved_date',
                Value : cab_approved_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'cab_comments',
                Value : cab_comments,
            },
            {
                $Type : 'UI.DataField',
                Label : 'remarks',
                Value : remarks,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
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
);


using InvestmentService as service from '../../srv/service';
using from '../../db/schema';
@Capabilities.InsertRestrictions.Insertable: true
annotate service.InvestmentRequests with
  @UI.CreateHidden : false;


annotate service.InvestmentRequests with @(
    UI.UpdateHidden : false,
    UI.DeleteHidden : false,

    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'amount',
                Value : amount,
            }
        ]
    },
    
    UI.FieldGroup #ExtraGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'requestDate',
                Value : requestDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'createdBy',
                Value : createdBy,
            }
        ]
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'ExtraFacet',
            Label : 'Additional Details',
            Target : '@UI.FieldGroup#ExtraGroup',
        }
    ],

    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'amount',
            Value : amount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'requestDate',
            Value : requestDate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'createdBy',
            Value : createdBy,
        }
    ]
);

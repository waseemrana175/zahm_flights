using FlightService as service from '../../srv/service';

annotate service.Airlines with @(
    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'AirlineID',
                Value: AirlineID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: Name,
            },
        ],
    },
    UI.Facets                    : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'ConnectionsFacet',
            Label : 'Verbindungen',
            Target: 'Connections/@UI.LineItem',
        },
    ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'AirlineID',
            Value: AirlineID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Name',
            Value: Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Verbindungen',
            Value : AnzahlVerbindungen,
        },
    ],
    UI.SelectionFields           : [
        Name,
        AirlineID,
    ],
);

annotate service.Connections with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Verbindung',
        Value: ConnectionID
    },
    {
        $Type: 'UI.DataField',
        Label: 'Von',
        Value: DepartureCity
    },
    {
        $Type: 'UI.DataField',
        Label: 'Nach',
        Value: ArrivalCity
    },
], );

annotate service.Airlines with @(
    Capabilities.InsertRestrictions: {Insertable: true},
    Capabilities.UpdateRestrictions: {Updatable: true},
    Capabilities.DeleteRestrictions: {Deletable: true},
);
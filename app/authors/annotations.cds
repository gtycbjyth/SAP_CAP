using LibraryService as service from '../../srv/library-service';

annotate service.Authors with @(
    UI                          : {
        HeaderInfo : { // добавляет в шапку таблици title и какимто оброзом count (books)
            TypeName       : 'Authors',
            TypeNamePlural : 'Authors',
        },
        LineItem   : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthday',
                Value : birthday,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
        ],
     Facets                      : [{
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
    }],
    FieldGroup#GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
             {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'birthday',
                Value : birthday,
            },
            {
                $Type : 'UI.DataField',
                Label : 'country',
                Value : country,
            },
        ],
    },
    },
);
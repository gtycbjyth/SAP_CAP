using LibraryService as service from '../../srv/library-service';

annotate service.Library with @(
    UI                          : {
        HeaderInfo : { // добавляет в шапку таблици title и какимто оброзом count (books)
            TypeName       : 'Books',
            TypeNamePlural : 'Books',
        },
        LineItem   : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'pageNumber',
                Value : pageNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'copyQty',
                Value : copyQty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'shippedQty',
                Value : shippedQty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Authors',
                Value : author_ID,
            }
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
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'title',
            //     Value : title,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'pageNumber',
            //     Value : pageNumber,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'copyQty',
            //     Value : copyQty,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'shippedQty',
            //     Value : shippedQty,
            // },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'price',
            //     Value : price,
            // },
            // // {
            // //     $Type : 'UI.DataField',
            // //     Label : 'orderBookEnable',
            // //     Value : orderBookEnable,
            // // },
            // {
            //     $Type : 'UI.DataField',
            //     Value : currency_code,
            // },
            {
                $Type : 'UI.DataField',
                Label : 'Author',
                Value : author_ID,
            },
        ],
    },
    },
);

annotate LibraryService.Authors with {
    ID        @(
        UI.Hidden,
        Common : {
            Label : 'First Name',
            Text  : firstName
        }
    );
    firstName @title : 'firstName';
    lastName  @title : 'lastName';
    country   @title : 'country';
    birthday  @title : 'birthday';
}



annotate service.Library with {
    author @(Common : {
        //show text, not id for mitigation in the context of risks
        Text            : author.firstName,
        TextArrangement : #TextOnly,
        ValueList       : {
            Label          : 'Authors',
            CollectionPath : 'Authors',
            Parameters: [
                {
                    $Type             : 'Common.ValueListParameterInOut',
                    LocalDataProperty : author_ID,
                    ValueListProperty : 'ID'
                },
                {
                    $Type             : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'firstName'
                }
            ]
        }
    });
}

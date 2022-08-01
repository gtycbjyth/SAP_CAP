// using LibraryService as service from '../../srv/library-service';
// // annotate LibraryService.Authors with {
// // 	firstName       @title: 'First Name';
// // 	lastName        @title: 'Last Name';
// // 	birthday        @title: 'Birthday';
// // 	country         @title: 'Country';
// // 	books           @title: 'Books';
// // }

// annotate LibraryService.Authors with {
//     ID         @(
//         UI.Hidden,
//         Common : {
//             Label : 'First Name',
//             Text  : firstName
//         }
//     );
//     title      @title : 'Title';
//     pageNumber @title : 'Page Number';
//     price      @title : 'Price';
//     author     @title : 'Author';
// }

// annotate service.Library with @(UI : {
//     HeaderInfo : { // добавляет блок с полями в хедер Object Information
//         TypeName       : 'Books',
//         TypeNamePlural : 'Books',
//         Title          : {
//             $Type : 'UI.DataField',
//             Value : title
//         // },
//         // Description : {
//         // 	$Type: 'UI.DataField',
//         // 	Value: descr
//         }
//     },
//     LineItem   : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'Title',
//             Value : title,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Page Number',
//             Value : pageNumber,
//         },
//         // {
//         //     $Type : 'UI.DataField',
//         //     Label : 'copy Qty',
//         //     Value : copyQty,
//         // },
//         // {
//         //     $Type : 'UI.DataField',
//         //     Label : 'Shipped Qty',
//         //     Value : shippedQty,
//         // },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Price',
//             Value : price,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'Authors',
//             Value : author_ID,
//         }
//     ],

// });

// annotate service.Library with {
//     author @(Common : {
//         //show text, not id for mitigation in the context of risks
//         Text            : author.firstName,
//         TextArrangement : #TextOnly,
//         ValueList       : {
//             Label          : 'Authors',
//             CollectionPath : 'Authors',
//             Parameters     : [
//                 {
//                     $Type             : 'Common.ValueListParameterInOut',
//                     LocalDataProperty : author_ID,
//                     ValueListProperty : 'ID'
//                 },
//                 {
//                     $Type             : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'firstName'
//                 },
//                 {
//                     $Type             : 'Common.ValueListParameterDisplayOnly',
//                     ValueListProperty : 'lastName'
//                 }
//             ]
//         }
//     });
// }

// annotate service.Library with @(
//     UI.FieldGroup #GeneratedGroup1 : {
//         $Type : 'UI.FieldGroupType',
//         Data  : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Title',
//                 Value : title,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Page Number',
//                 Value : pageNumber,
//             },
//             // {
//             //     $Type : 'UI.DataField',
//             //     Label : 'copy Qty',
//             //     Value : copyQty,
//             // },
//             // {
//             //     $Type : 'UI.DataField',
//             //     Label : 'Shipped Qty',
//             //     Value : shippedQty,
//             // },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Price',
//                 Value : price,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'Author',
//                 Value : author_ID,
//             },
//         // {
//         //     $Type : 'UI.DataField',
//         //     Label : 'image',
//         //     Value : image,
//         // },
//         // {
//         //     $Type : 'UI.DataField',
//         //     Label : 'orderBookEnable',
//         //     Value : orderBookEnable,
//         // },
//         // {
//         //     $Type : 'UI.DataField',
//         //     Label : 'status',
//         //     Value : status,
//         // },
//         ],
//     },
//     UI.Facets                      : [{
//         $Type  : 'UI.ReferenceFacet',
//         ID     : 'GeneratedFacet1',
//         Label  : 'General Information',
//         Target : '@UI.FieldGroup#GeneratedGroup1',
//     }, ]
// );

// // annotate service.Books with @(UI.Identification : [//add action
// //     {
// //         $Type  : 'UI.DataFieldForAction',
// //         Action : 'LibraryService.EntityContainer/test2',
// //         Label  : '{i18n>Test2}',
// //     },
// //     {
// //         $Type       : 'UI.DataFieldForAction',
// //         Action      : 'LibraryService.test',
// //         Label       : 'test',
// //         Determining : true,
// //     },
// // ]);

namespace my.library;
using { cuid, managed, Country, Currency } from '@sap/cds/common';


type Status: String enum {
    ![In library];
    Open;
    Requested;
    Closed;
}

entity Library: managed {
    key ID      : UUID  @(Core.Computed : true);
    title: String;
    pageNumber: Integer;
    copyQty: Integer default 0;
    shippedQty: Integer default 0;
    price: Decimal(9,2);
    orderBookEnable: Boolean default 'false';
    currency: Currency;
    author: Association to Authors; //{ID: "autor_ID"}
    // orders: Association to BookOrder;
}

entity BookOrder: managed {
    key ID      : UUID  @(Core.Computed : true);
    // book: Association to Library on book.orders=$self;
    quintyti: Integer;
    status: Status;
    localCurrency: Currency default 'BYN';
}

// entity Booking: managed {
//     key ID      : UUID  @(Core.Computed : true);
//     book: Association to Library;
//     order: Association to BookOrder;
// }


entity Authors: managed {
    key ID      : UUID  @(Core.Computed : true);
    firstName: String;
    lastName: String;
    birthday: Date;
    country: Country;
    books: Association to many Library on books.author = $self;
    }

entity Readers: managed {
    key ID      : UUID  @(Core.Computed : true);
    firstName: String;
    lastName: String;
    birthday: Date;
    phone: String;
    image: String;

}
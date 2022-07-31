namespace my.library;
using { cuid, managed, Country, Currency } from '@sap/cds/common';

entity Authors: managed {
    key ID      : UUID  @(Core.Computed : true);
    firstName: String;
    lastName: String;
    birthday: Date;
    country: String;
    books: Association to many Books on books.author = $self;
}

entity Books: managed {
    key ID      : UUID  @(Core.Computed : true);
    title: String;
    pageNumber: Integer;
    // copyQty: Integer;
    // shippedQty: Integer;
    price: Integer;
    // image: String;
    // orderBookEnable: Boolean;
    // status: String;
    author: Association to Authors; //{ID: "autor_ID"}
}



entity Orders: managed {
    key ID      : UUID  @(Core.Computed : true);
    book: Association to Books;
    quintyti: Integer;
}

entity Readers: managed {
    key ID      : UUID  @(Core.Computed : true);
    firstName: String;
    lastName: String;
    birthday: Date;
    phone: String;
    image: String;

}


entity Booking: managed {
    key ID      : UUID  @(Core.Computed : true);
    reader: Association to Readers;
    book: Association to Books;
    bookingStatus: Association to BookStatus;
    beginDate: Date;
    beginTime: Time;
    endDate: Date;
    endTime:Time;
    returnTheBookEnable: Boolean;
}

entity BookStatus: cuid, managed {
    name: String;
    criticaly: Boolean;
}

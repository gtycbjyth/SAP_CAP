namespace my.library;
using { cuid, managed, Country, Currency } from '@sap/cds/common';

entity Authors: cuid, managed {
    firstName: String;
    lastName: String;
    birthday: Date;
    country: String;
    // books: Association to many Books on books.author = $self;
}

entity Books: cuid, managed {
    title: String;
    pageNumber: Integer;
    copyQty: Integer;
    shippedQty: Integer;
    price: Integer;
    image: String;
    orderBookEnable: Boolean;
    status: String;
    // author: Association to Authors; //{ID: "autor_ID"}
}



entity Orders: cuid, managed {
    book: Association to Books;
    quintyti: Integer;
}

entity Readers: cuid, managed {
    firstName: String;
    lastName: String;
    birthday: Date;
    phone: String;
    image: String;

}


entity Booking: cuid, managed {
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

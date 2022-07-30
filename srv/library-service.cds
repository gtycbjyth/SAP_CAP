using my.library as my   from '../db/schema';

service LibraryService {
    entity Books as projection on my.Books 
    entity Authors as projection on my.Authors actions{
        action test2() returns Authors;
    }
    entity Orders as projection on my.Orders
    entity Readers as projection on my.Readers
    entity Booking as projection on my.Booking
}


// annotate LibraryService.Authors with  @odata.draft.enabled;
// annotate LibraryService.Books with {};
// annotate LibraryService.Authors with { ID @Core.Computed;};

using my.library as my   from '../db/schema';

service LibraryService {
    entity Books as projection on my.Books
    entity Authors as projection on my.Authors
    entity Orders as projection on my.Orders
    entity Readers as projection on my.Readers
    entity Booking as projection on my.Booking
}
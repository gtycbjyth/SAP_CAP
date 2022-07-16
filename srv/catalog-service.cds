using  my.shop as my from '../db/schema';

service CatalogService {
    @Capabilities : { Insertable: false, Deletable: false,}
    entity Books as projection on my.Books;
    @readonly entity Authors as projection on my.Authors;
    entity Orders as projection on my.Orders
    
}

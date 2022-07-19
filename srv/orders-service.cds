using  my  from '../db/schema';


service Orders {
    @readonly
entity OrderInfo as projection on my.shop.Orders excluding {
    createdAt,
    createdBy,
    modifieAt,
    modifieBy,
    book,
}
// entity BookStatus as projection on my.shop.BookStatus{

// }
// entity Status as projection on my.shop.Status{
    
// }

}
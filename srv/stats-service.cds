using  my  from '../db/schema';


service Stats {
    @readonly
entity OrderInfo as projection on my.shop.Orders excluding {
    createdAt,
    createdBy,
    modifieAt,
    modifieBy,
    book,
}
}
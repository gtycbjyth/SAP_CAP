const cds = require('@sap/cds');

module.exports = async function () {
    console.log('*/*/*/**/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//**');
    const db = await cds.connect.to('db')
    const { BookOrder } = db.entities;
    console.log(BookOrder);
    
    let orderCount = 1;
    //TODO add sql BookOrder SELECT MAX(orderCount)
    // srv.before()
    this.before('CREATE', 'BookOrder', req => {
        orderCount += 1;
        req.data.orderCount = orderCount;
        console.log('*/*/*/**/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//**');
        })
}
// module.exports = srv => {
//     // srv.after('READ', 'Books', data => {
//     //     const newData = [];
        
//     //     data.forEach(el => {
//     //         el.title = "Title chenged!!!"
//     //         // newData.push(el); 
//     //     });
        
//     //     // data = newData;
//     // });
//     // console.log(1);
// console.log('*/*/*/**/*/*/*/*/*//*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*//**');
// let orderCount = 1;
// //TODO add sql BookOrder SELECT MAX(orderCount)
// // srv.before()
// srv.before('CREATE', 'BookOrder', req => {
//     orderCount += 1;
//     req.data.orderCount = orderCount;
//     })
// }
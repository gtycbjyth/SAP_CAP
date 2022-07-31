// module.exports = srv => {
//     // srv.on("test", () => console.log("test2"))
//     // srv.on("test2", () => console.log("test2"))
//     // srv.before ('NEW', 'Authors', async req => {
//     //     console.log(req.data,"********************");
//     //     // const { maxID } = await SELECT.one `max(AuthorsID) as maxID` .from (Authors)
        
//     //     // req.data.AuthorsID = maxID + 1
//     //   })
//     srv.after('READ', 'Books', data => {
//         const newData = [];
        
//         data.forEach(el => {
//             // el.title = "Title chenged!!!"
//             // newData.push(el); 
//         });
        
//         // data = newData;
//     });
//     console.log(1);
// }
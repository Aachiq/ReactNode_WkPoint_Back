const excel = require('exceljs');
const fs = require('fs');
const pdf = require("pdf-creator-node");

 exports.tester = (req,res)=>{
    res.send("hello notes app with MVC");
  } 

  exports.getAllnotes=(req,res)=>{
    const sql ="SELECT * FROM product" ;
    db.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.json({products:result});
    })
  }

  exports.addNote=(req,res)=>{
      const sql ="INSERT INTO product (title,body) VALUES ('"+req.body.title+"','"+req.body.body+"')";
       db.query(sql,(err,result)=>{
          if(err) console.log("problem de response ")
          res.send(result);
      })

 }
 
 exports.deleteNote=(req,res)=>{
    const sql ="DELETE FROM product WHERE id ='"+req.params.id+"'" ;
    db.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.json({message : "it's deleted"});
    })
}
exports.findById=(req,res)=>{
    const sql="SELECT * FROM product WHERE id ='"+req.params.id+"'" ;
    db.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.json({note : result[0]});

    }) 
}
exports.updateNote=(req,res)=>{
    const sql="UPDATE product SET title='"+ req.body.title +"',body='"+ req.body.body +"' WHERE id ='"+req.params.id+"'" ;
    db.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    }) 
}
exports.searchNote=(req,res)=>{
    const {word} = req.body;
    const sql="SELECT * FROM product WHERE body LIKE '%"+word+"%'";
    db.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    }) 
}

// this function gonna take a sql Table and export it or generate an Excel file
exports.generateExcelFromDbWithoutClient = (req,res)=>{
   // select table 
    db.query("SELECT * FROM product ", function (err, data, fields) {	
    const jsonData = JSON.parse(JSON.stringify(data));
    console.log(jsonData);
    /**
        [ { id: 1, address: 'Jack Smith', age: 23, name: 'Massachusetts' },
        { id: 2, address: 'Adam Johnson', age: 27, name: 'New York' },
        { id: 3, address: 'Katherin Carter', age: 26, name: 'Washington DC' },
        { id: 4, address: 'Jack London', age: 33, name: 'Nevada' },
        { id: 5, address: 'Jason Bourne', age: 36, name: 'California' } ]
    */
    let workbook = new excel.Workbook(); //creating workbook
    let worksheet = workbook.addWorksheet('Customers'); //creating worksheet
    worksheet.columns = [
        { header: 'Id', key: '_id', width: 10 },
        { header: 'Title', key: 'title', width: 10 },
        { header: 'Body', key: 'body', width: 10},
        { header: 'PaymentType', key: 'paymentType', width: 10},
        { header: 'Category_id', key: 'category_id', width: 10 },
        { header: 'Date_order', key: 'date_order', width: 10 },
        { header: 'Made_pays', key: 'made_pays', width: 10},
        { header: 'Guess_price', key: 'guess_price', width: 10, outlineLevel: 1},
    ];
    // Add Array Rows
	worksheet.addRows(jsonData);

    // res.setHeader(
    //     "Content-Type",
    //     "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    //   );
    //   res.setHeader(
    //     "Content-Disposition",
    //     "attachment; filename=" + "product.xlsx"
    //   );

    // Write to File
    workbook.xlsx.writeFile("product.xlsx")
     .then(()=>{
        console.log("file saved!");
        // fs.readFile('product.xlsx',(err,data)=>{
        //     //console.log(data);
        //     res.send(data);
        // })
    })
     .catch((err)=> console.log(err))
})
}

exports.dowloadExcel = (req,res)=>{
//   fs.readFile('product.xlsx',(err,data)=>{
    //console.log(data);
    //res.send(data); this just send 'DataType as Blob Binary not reafing "dowloading" file'
    // remember when we use only nodejs. it can be dowload just with res.send(data) 
    // because it's in localhost:4000 of Back-end and here we have front 'localhost:3000' so we need to send it a front.
    
//   })
res.sendFile("C:/Users/elhoc/Downloads/noteAppback-master (1)/noteAppback-master/product.xlsx")
}

exports.generatePDFfromHtml = ()=>{
  // Read HTML Template
  const html = fs.readFileSync("template.html", "utf8");
  const options = {
    format: "A4",
    orientation: "portrait",
    border: "10mm",
    header: {
        height: "45mm",
        contents: '<div style="text-align: center;">Author: Shyam Hajare</div>'
    },
    footer: {
        height: "28mm",
        contents: {
            first: 'Cover page',
            2: 'Second page', // Any page number is working. 1-based index
            default: '<span style="color: #444;">{{page}}</span>/<span>{{pages}}</span>', // fallback value
            last: 'Last Page'
        }
    }
};
// this can be be replaced by "select * from table".
const users = [
    {
      name: "Shyam",
      age: "26",
    },
    {
      name: "Navjot",
      age: "26",
    },
    {
      name: "Vitthal",
      age: "26",
    },
  ];
  const document = {
    html: html,
    data: {
      users: users,
    },
    path: "./output.pdf",
    type: "",
  };
  //
  pdf
  .create(document, options)
  .then((res) => {
    console.log(res);
  })
  .catch((error) => {
    console.error(error);
  });
}

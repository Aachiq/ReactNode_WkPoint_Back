const express = require('express')
const app = express()
const port = 3200;
const mysql = require('mysql')
const cors = require('cors')
var bodyParser = require('body-parser')
// require all routes 
const noteRoutes = require("./Routes/noteRoutes")
// connection mysql
const connection = mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'notesapp'
})
connection.connect((err)=>{
    if(err) console.log(err)
    console.log("connection bien fait")
})
// make connection globaly
global.db = connection;
// parse data to json middleware
app.use(express.json())
// cors middelware
app.use(cors());

// routes as middelwares
app.use('/',noteRoutes);

// server 
app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})
const express = require("express");
const bodyParser= require('body-parser');
const cors= require('cors');
const app = express();
const mysql = require("mysql");

const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "mysqlpassword",
    database: "humanzdb",
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({extended: true}))

app.get('/api/get', (req, res)=>{
    const sqlSelect=
    "SELECT * FROM clients_db";
    db.query(sqlSelect, (err, result)=>{
        res.send(result);

 });
})


app.post("/api/insert", (req, res)=>{
    const fullName=req.body.fullName;
    const ID=req.body.ID;
    const ipAddress=req.body.ipAddress;
    const phoneNumber=req.body.phoneNumber; 

    const sqlInsert=
    "INSERT INTO clients_db (fullName, ID, ipAddress, phoneNumber) VALUES ( ?, ?, ?, ?)";
    db.query(sqlInsert, [fullName,ID,ipAddress,phoneNumber], (err, result)=>{
        console.log(result);

    });
});

app.delete("/api/delete/:ID", (req, res)=>{
    const id = req.params.ID;
    const sqlDelete=
    "DELETE FROM clients_db WHERE ID = ? ";
    db.query(sqlDelete, id, (err,result)=> {
       if (err) console.log(err);
    });
});

app.listen(3003, ()=> {
    console.log("running on port 3003");
});

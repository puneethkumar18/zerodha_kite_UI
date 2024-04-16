const express = require('express')
const mongoose = require("mongoose")

const PORT = 3000;

const app = express();

app.route('/').get((req,res)=>{

});


app.listen(PORT,'0.0.0.0',()=>{
    console.log("Server is listening on the port "+PORT)
});


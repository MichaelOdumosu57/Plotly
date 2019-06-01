const express = require('express')
const app = express()
const port = 3000;
const file_name = __filename.split("/")[__filename.split("/").length-1].split(".js")[0]
const path = require('path')
const fs = require('fs');
const compression = require('compression')
const cors = require('cors')
//middleware
const backend = express.Router()
//

app.use(   '/backend',backend   )
backend.get(   '/index',function(req,res){
    res.sendFile(__dirname + '/charts.html')
})
backend.get(   '/plotly',function(req,res){
    res.sendFile(__dirname +'/plotly-latest.min.js')
})
backend.get(   '/ultraObject',function(req,res){
    res.sendFile(__dirname + '/ultraObject.js')
})





app.listen(port, () => console.log(`${file_name} app listening on port ${port}!`))
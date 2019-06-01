const express = require('express')
const app = express()
const port = 3000;
const file_name = __filename.split("/")[__filename.split("/").length-1].split(".js")[0]
const path = require('path')
const fs = require('fs');
const compression = require('compression')
const cors = require('cors')
const linspace = require('linspace')
//middleware
global.ultraObject = require('./ultraObject.js')
const backend = express.Router()
//

app.use(   '/backend',backend   )
backend.get(   '/index',function(req,res){
    res.sendFile(__dirname + '/statisticalCharts.html')
})
backend.post(   '/linspace',function(req,res){
    
	ultraObject.reqBody({
		stream:req,
		fn:function(dev_obj){
		},
		keep:'true',
		finish:function(dev_obj){
		    dev_obj.stream.body = JSON.parse(dev_obj.stream.body)
		    res.send(   linspace(   dev_obj.stream.body.a,dev_obj.stream.body.b,dev_obj.stream.body.c   )   )
		}
		
	})

    
    // res.send(JSON.stringify(linspace))
})

backend.post(   '/Treemap',function(req,res){
    
	ultraObject.reqBody({
		stream:req,
		fn:function(dev_obj){
		},
		keep:'true',
		finish:function(dev_obj){
		    dev_obj.stream.body = JSON.parse(dev_obj.stream.body)
		    res.send(   'where is Treemaps'   )
		}
		
	})

    
    // res.send(JSON.stringify(linspace))
})
backend.get(   '/plotly',function(req,res){
    res.sendFile(__dirname +'/plotly-latest.min.js')
})
backend.get(   '/ultraObject',function(req,res){
    res.sendFile(__dirname + '/ultraObject.js')
})





app.listen(port, () => console.log(`${file_name} app listening on port ${port}!`))
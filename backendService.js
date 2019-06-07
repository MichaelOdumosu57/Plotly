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

/* FS API*/ //{
var r_file = __dirname + '/customControls.html'
// __dirname + '/transforms.html'
// __dirname + '/mapsCharts.html'
// __dirname + '/financialCharts.html'
// __dirname + '/scientificCharts.html'
// __dirname + '/charts.html'
// __dirname + '/statisticalCharts.html'
var r_mode = 'rs+'
var w_file =  __dirname + '/modified.html'
var w_mode = 'w'
//} /**/

/* plotly software*/ //{
function trisurf(Tri, X, Y, Z, C) {
  return {
    type: 'mesh3d',
    x: X,
    y: Y,
    z: Z,
    i: Tri.map(function(f) { return f[0] }),
    j: Tri.map(function(f) { return f[1] }),
    k: Tri.map(function(f) { return f[2] }),
    facecolor: C,
    flatshading: true,
  }
  
  
}
//} /**/

app.use(  cors()   )
app.use(   '/backend',backend   )
backend.get(   '/index',function(req,res){
 
        var response = res
        
        const wStream = fs.createWriteStream(w_file,{
              start:0,
              autoClose:true
        })
        // // wStream.on('process_uncaught',function(  err   ){
        // //     console.log('error thrown in writeStream close everything ',err)
        // //     this.end()
        // // })
        wStream.on('error',  function(err){
            setImmediate(() => {
                console.log('error thrown in writeStream close everything ',err)
                this.end()
                // console.log(this)
                close_file(rr_fd,'read_file',this)
                close_file(ww_fd,'write_file',this)
            });
        });
        wStream.once('finish',function(   ){
            // console.log('All writes are now complete. writestream closed');
            response.sendFile(w_file)
        })
        wStream.on('pipe', (src) => {
          console.error('something is piping into the writer');
          // assert.equal(src, r_stream);
        });
        wStream.on('unpipe', (src) => {
          console.error('Something has stopped piping into the writer.');
          // assert.equal(src, r_stream);
        });
        // console.log('writable stream intializaed')
        const r_stream = fs.createReadStream(r_file,{
          start:0,
          autoClose:true
        })
        r_stream.on('end',()=>{
          setImmediate(() => {
            // console.log('nothing more to read closing  readstream')
            // console.log(typeof(r_stream),typeof(wStream))
            r_stream.resume(); //this helps clear the buffer
            wStream.end()
          })
        })
        r_stream.on('close',()=>{
          setImmediate(() =>{
            // console.log("looks like the fd was closed by the stream ")
          })
        })
        r_stream.on('data',a)
        console.log('readable stream intializaed')
        
 function a(chunk){
        console.log(chunk)
        setImmediate(() =>{
            if(   !wStream.write(   chunk.toString().split("&lt;").join("< ").split("&lt").join("< ")  )  ){
                r_stream.off('data',a)
                r_stream.pause()
                wStream.once('drain',function(){
                     r_stream.resume()
                     r_stream.on('data',a)
                })
            }
        })
}
        
        
        
})
backend.post(   '/saveFile/',function(req,res){
 
        var response = res
        var request = req
        // console.log(req.query)
        const wStream = fs.createWriteStream(req.query.location,{
              start:0,
              autoClose:true
        })
        wStream.on('error',  function(err){
            setImmediate(() => {
                console.log('error thrown in writeStream close everything ',err)
                this.end()
            });
        });
        wStream.on('finish',function(   ){
            console.log('All writes are now complete. writestream closed');
        })
        
        wStream.on('pipe', (src) => {
          console.error('something is piping into the writer');
          // assert.equal(src, r_stream);
        });
        wStream.on('unpipe', (src) => {
          console.error('Something has stopped piping into the writer.');
           wStream.end()
           res.end()
          // assert.equal(src, r_stream);
        });
        
        req.pipe(wStream)
        
        // var brokenWriteStream = new Promise((resolve,reject) =>{
        //     wStream.once('ready',()=>{
        //         console.log('ready to save this file')
        //         resolve()
        //     })
        // }).then((resolve,reject)=>{
        //     req.on('data',a)
            
         
        //     req.once('end',()=> {
        //         console.log('will close stream')
        //         req.off('data',a)
        //         wStream.end()
        //         res.end()
        //     })
        // })

function a(chunk){
        process.nextTick(()=>{
            if(   !wStream.write(   chunk.toString()  )  ){
                console.log('still writing')
                req.off('data',a)
                req.pause()
                wStream.once('drain',function(){
                     req.resume()
                     req.on('data',a)
                })
            }
        })
}
    


        
        

        
        
        
})
backend.post(   '/linspace',function(req,res){
    
	ultraObject.reqBody({
		stream:req,
		fn:function(dev_obj){
		    console.log('linspace')
		},
		keep:'true',
		finish:function(dev_obj){
		    dev_obj.stream.body = JSON.parse(dev_obj.stream.body)
		    res.send(   linspace(   dev_obj.stream.body.a,dev_obj.stream.body.b,dev_obj.stream.body.c   )   )
		}
		
	})

    
})
backend.post(   '/trisurf',function(req,res){
    
    
	ultraObject.reqBody({
		stream:req,
		fn:function(dev_obj){
		    console.log('trisurf')
		},
		keep:'true',
		finish:function(dev_obj){
		    dev_obj.stream.body = JSON.parse(dev_obj.stream.body)
		  //  console.log(   dev_obj.stream.body   )
		    res.send(   trisurf(   ...dev_obj.stream.body   )   )
		}
		
	})

    
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
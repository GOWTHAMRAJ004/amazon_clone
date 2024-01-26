console.log("hi its my first project ")
const express = require("express");
// these is like a import statement in node js
const PORT = 4000;
// created a port 
const app = express();

// creating a API
//http://<youtipaddress>/hellow-world
app.get("/date",(req,res)=>{
    res.json({
        "name":"gowtham",
        "age":10,
        "language_know":['tamil','english']
    })
})
//an api can be GET PUT POST DELETE UPDATE --
app.listen(PORT,()=>{
    console.log(`these is port started ${PORT}`)
});
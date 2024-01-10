console.log("hi its my first project ")
const express = require("express");
// these is like a import statement in node js
const PORT = 4000;
// created a port 
const app = express();

// creating a API
app.listen(PORT,"0.0.0.0",()=>{
    console.log(`these is port started ${PORT}`)
});
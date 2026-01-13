const express = require('express');

const app = express();

app.get('/', (req, res)=>{
    console.log("request received");
    res.json({message: 'hello world from docker!'});
})

app.listen(4000, ()=>console.log("server running on port 4000"));
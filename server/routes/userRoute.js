const express = require("express")
const User = require('../models/user_model')
const AuthRouter = express.Router();

AuthRouter.route("/").post((req,res)=>{
    const {email,password} = req.body;

    let user = new User({
        email,
        password
    })
});


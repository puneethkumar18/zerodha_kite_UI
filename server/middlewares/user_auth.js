const jwt = require('jsonwebtoken')

const UserAuth = (req, res, next)=>{
   try {
     const token = req.header('x-auth-token');

    if(!token) return res.status(401).json({message:"No auth token access denied"});

    const verified = jwt.verify(token,"passwordKey");

    if(!verified) return res.status(401).json({message:"Token vefiaction failed Authanication denied"});

    req.token =  token;
    req.user = verified.indexOf;
    next();

   } catch (error) {
    res.status(401).json({error:error.message});
   }
    
};

module.exports = UserAuth;
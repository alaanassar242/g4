const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const connection = require('./DB/db')
const path = require('path');

// parse requests of content-  type: application/json  app.use(bodyParser.json());
// parse requests of content-type: application/x-www-form-urlencoded  
app.use(bodyParser.urlencoded({
    extended: true
}));
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname,'./public')));
// simple route
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname,"/public/HTML/Home_Page.html"))
});

app.get('/products/:category?',(req,res)=>{
    let sql = `SELECT * FROM icecream`;   
    if(req.params.category){
        sql = `SELECT * FROM icecream WHERE category='${req.params.category}'`;
        console.log(sql);
    }
    connection.query(sql,[],function (err,result,fields){
        res.render('catalog',{data:result})
    });
})
app.post('/login',function (req, res) {
    try {
        const { email, password } = req.body;
        console.log(req.body);
        const sql = `SELECT * FROM users where email=? and password=?`;   
        console.log(email);
        console.log(password);
        connection.query(sql,[email,password],function (err,result,fields){
                if(err){
                    res.status(500).json({status:500,error:err});
                    return;
                }
                if(result.length === 0 ){
                    res.redirect('/HTML/Log_In_Page.html?message=UserNotFound')
                    return;
                }
                res.redirect('/products?userID='+result[0].id+'&userEmail='+result[0].email+'&userFullName='+result[0].firstName+' '+result[0].lastName);
            })
    } catch (error) {
        res.send({ status: 400, error: error });
    }
});

app.post('/createEvent',function(req,res){
    let {name,email,type,location,numOfParticipants,eventDate,details} = req.body;
    const sql = `INSERT INTO events (userFullName,userEmail,eventType,eventLocation,numOfParticipants,eventDate,details) 
    VALUES (?,?,?,?,?,?,?)`;  
    connection.query(sql,[name,email,type,location,numOfParticipants,eventDate,details],function (err,result,fields){
        if(err){
            res.send({status:400,error:err});
            return;
        }
        res.sendFile(path.join(__dirname,"/public/HTML/Home_Page.html"))
    })
});

app.post('/createContact',function(req,res){
    let {name,email,message} = req.body;
    const sql = `INSERT INTO contacts (FirstName,Email,message) VALUES (?,?,?)`;  
    connection.query(sql,[name,email,message],function (err,result,fields){
        if(err){
            res.send({status:400,error:err});
            return;
        }
        res.sendFile(path.join(__dirname,"/public/HTML/Home_Page.html"))
    })
});

app.post('/createPayment',function(req,res){
    let {userID,address,city,postalcode,country,idNumber,creditCard,expDate,paymentNum,cvv} = req.body;
    
    const sql = `
    INSERT INTO cardsPayed SELECT *  FROM shopping_cart where userID=?;
    SET @cartID = (select id from shopping_cart where userID=?);
    DELETE FROM shopping_cart where userID=?;
    INSERT INTO payments (cartID,address,city,postalCode,country,idNumber,creditCard,expDate,paymentNumber,cvv) 
    VALUES (@cartID,?,?,?,?,?,?,?,?,?)`;  
    connection.query(sql,[userID,userID,userID,address,city,postalcode,country,idNumber,creditCard,expDate,paymentNum,cvv],function (err,result,fields){
        if(err){
            res.send({status:400,error:err});
            return;
        }
        res.sendFile(path.join(__dirname,"/public/HTML/Home_Page.html"))
    })
});

app.post('/createShoppingCart',function(req,res){   
    try {
        let { userID, selectedProducts } = req.body;
        console.log(req.body);
        selectedProducts = JSON.stringify(selectedProducts);
        const sql = `INSERT INTO shopping_cart (userID,selectedProducts) VALUES (?,?)`;   
        connection.query(sql,[userID,selectedProducts],function (err,result,fields){
            if(err){
                res.send({status:400,error:err});
                return;
            }
            res.json(result.insertId)
        })
    } catch (error) {
        res.send({ status: 400, error: error });
    }
});

app.put('/updateShoppingCart',function(req,res){
    try {
        let { userID, cartID,selectedProducts } = req.body;
        selectedProducts = JSON.stringify(selectedProducts);
        const sql = `UPDATE shopping_cart SET selectedProducts=? WHERE userID=? AND id=?;`;
        connection.query(sql,[selectedProducts,userID,cartID],function (err,result,fields){
            if(err){
                res.json({status:400,error:err});
                return;
            }
            res.json(cartID);

        });

    } catch (error) {
        
    }
})

app.get('/getShoppingCartByUser',function (req,res){
    try {
        let { userID } = req.query;
        console.log(userID)
        const sql = `SELECT * FROM shopping_cart WHERE userID=?`;   
        connection.query(sql,[userID],function (err,result,fields){
            if(err){
                res.send({status:400,error:err});
                return;
            }
            res.send(result)
        })
        
    } catch (error) {
        
    }
})

app.post('/createUser', function (req, res) {
    try {
        const { email, password, firstName, lastName, phone } = req.body;
        console.log(req.body);
        const sql = `INSERT INTO users (email,password,firstName,lastName,phone) VALUES (?,?,?,?,?)`;   
        connection.query(sql,[email,password,firstName,lastName,phone],function (err,result,fields){
                if(err){
                    res.send({status:400,error:err});
                    return;
                }
                res.sendFile(path.join(__dirname,"/public/HTML/Log_In_Page.html"))
            })
    } catch (error) {
        res.send({ status: 400, error: error });
    }
});


// set port, listen for requests
app.listen(3000, () => {
    console.log("Server is running on port 3000."
    );
});

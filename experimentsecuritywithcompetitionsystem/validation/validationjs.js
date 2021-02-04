const { rename } = require('fs');
const validator = require('validator');

var validationFn = {

    validateRegister: function (req, res, next) {

        var name = req.body.name;
        var email = req.body.email;
        var password = req.body.password;

        //var reEmail = new RegExp(^.+@.+.\.[a-z]+$);

        reName = new RegExp(`^[a-zA-Z\\s',]+$`);

        rePassword = new RegExp(`^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])[a-zA-Z0-9]{8,}$`); // \d = digits

        console.log(validator.isEmail(email) + "email");
        console.log(reName.test(name) + "Name");
        console.log(rePassword.test(password) + "PW");

        if (reName.test(name) && validator.isEmail(email) && rePassword.test(password)) {
            next();
        }
        else {
            res.type('json');
            res.status(500);
            res.send({ "message": "Invalid Input" });
        }

    },

    validateUserid: function (req, res, next) {
        //Validation code to check userid from req.params

        var id = req.params.user_id;
        var reId = new RegExp(`^[1 - 9][0 - 9][0 - 9]*$`);

        console.log(reId.test(id) + "id");

        if (reId.test(id)) {
            next();
        }
        else {
            //return response with status 500 if validation fails
            res.type('json');
            res.status(500);
            res.send({ "message": "Invalid Input" });
        }


    }

}

module.exports = validationFn;
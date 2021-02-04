const user = require('../services/userService');
const auth = require('../services/authService');
const bcrypt = require('bcryptjs');
const config = require('../config/config');
const jwt = require('jsonwebtoken');

const logger = require('../services/loggingService');



exports.processLogin = (req, res, next) => {

    let email = req.body.email;
    let password = req.body.password;
    try {
        auth.authenticate(email, function (error, results) {
            if (error) {
                let message = 'Credentials are not valid.';
                //return res.status(500).json({ message: message });
                //If the following statement replaces the above statement
                //to return a JSON response to the client, the SQLMap or
                //any attacker (who relies on the error) will be very happy
                //because they relies a lot on SQL error for designing how to do 
                //attack and anticipate how much "rewards" after the effort.
                //Rewards such as sabotage (seriously damage the data in database), 
                //data theft (grab and sell). 
                res.status(500).json({ message: error });
                logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return

            } else {
                if (results.length == 1) {
                    if ((password == null) || (results[0] == null)) {
                        return res.status(500).json({ message: 'login failed' });
                    }
                    if (bcrypt.compareSync(password, results[0].user_password) == true) {

                        let data = {
                            user_id: results[0].user_id,
                            role_name: results[0].role_name,
                            token: jwt.sign({ id: results[0].user_id }, config.JWTKey, {
                                expiresIn: 86400 //Expires in 24 hrs
                            })
                        }; //End of data variable setup

                        res.status(200).json(data);
                        logger.info(`${res.statusCode} - ${res.statusMessage} - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                        return
                    } else {
                        // return res.status(500).json({ message: 'Login has failed.' });
                        res.status(500).json({ message: error });
                        logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                        return
                    } //End of passowrd comparison with the retrieved decoded password.
                } //End of checking if there are returned SQL results

            }

        })

    } catch (error) {
        res.status(500).json({ message: error });
        logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
        return
    } //end of try



};

// User Logout
exports.processLogout = (req, res, next) => {
    console.log('processLogout running');
    let recordId = req.params.recordId;
    let invalidtoken = req.body.invalidtoken;
    console.log(invalidtoken);

    try {
        auth.logout(recordId, invalidtoken, function (error, results) {
            if (error) {
                res.status(500).json({ message: error });
                logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return

            } else {
                res.status(200).json({ message: 'logout success' });
                logger.info(`${res.statusCode} - ${res.statusMessage} - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return
            }

        })

    } catch (error) {
        res.status(500).json({ message: error });
        logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
        return
    } //end of try

}

// If user submitted data, run the code in below
exports.processRegister = (req, res, next) => {
    console.log('processRegister running');
    let fullName = req.body.fullName;
    let email = req.body.email;
    let password = req.body.password;


    bcrypt.hash(password, 10, async (err, hash) => {
        if (err) {
            console.log('Error on hashing password');
            res.status(500).json({ message: 'Unable to complete registration' });
            logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
            return
        } else {
            try {
                results = await user.createUser(fullName, email, hash);
                console.log(results);
                res.status(200).json({ message: 'Completed registration' });
                logger.info(`${res.statusCode} - ${res.statusMessage} - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return
            } catch (error) {
                console.log('processRegister method : catch block section code is running');
                console.log(error, '=======================================================================');
                res.status(500).json({ message: 'Unable to complete registration' });
                logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return
            }
        }
    });

}; //End of processRegister

// CheckToken
exports.processCheckToken = (req, res, next) => {
    console.log('processCheckToken running');

    try {
        auth.checkToken(function (error, results) {
            if (error) {
                res.status(500).json({ message: error });
                logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return

            } else {
                res.status(200).json({ tokens: results });
                logger.info(`${res.statusCode} - ${res.statusMessage} - ${req.originalUrl} - ${req.method} - ${req.ip}`);
                return
            }

        })

    } catch (error) {
        res.status(500).json({ message: error });
        logger.error(`${res.statusCode || 500} - Login Failed - ${req.originalUrl} - ${req.method} - ${req.ip}`);
        return
    } //end of try

}

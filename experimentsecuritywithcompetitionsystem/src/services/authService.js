config = require('../config/config');
const pool = require('../config/database')
module.exports.authenticate = (email, callback) => {

        pool.getConnection((err, connection) => {
            if (err) {
                if (err) throw err;

            } else {
                try {
                    connection.query(`SELECT user.user_id, fullname, email, user_password, role_name, user.role_id  
                   FROM user INNER JOIN role ON user.role_id=role.role_id AND email='${email}'`, {}, (err, rows) => {
                        if (err) {
                            if (err) return callback(err, null);

                        } else {
                            if (rows.length == 1) {
                                console.log(rows);
                                return callback(null, rows);

                            } else {

                                return callback('Login has failed', null);
                            }
                        }
                        connection.release();

                    });
                } catch (error) {
                    return callback(error, null);;
                }
            }
        }); //End of getConnection

    } //End of authenticate

    module.exports.logout = (recordId, invalidtoken, callback) => {
        pool.getConnection((err, connection) => {
            if (err) {
                if (err) throw err;
    
            } else {
                try {
                    connection.query(`UPDATE user SET invalidtoken = '${invalidtoken}' 
                                        WHERE user_id = ${recordId}`, {}, (err, rows) => {
                        if (err) {
                            if (err) return callback(err, null);
                        } else {
                            if (rows.affectedRows == 1) {
                                console.log(rows);
                                return callback(null, rows);
                            } else {
                                console.log('Logout has failed');
                                return callback('Logout has failed', null);
                            }
                        }
                        connection.release();
                    });
                } catch (error) {
                    return callback(error, null);;
                }
            }
        }); //End of getConnection
    
    } //End of logout

    module.exports.checkToken = (callback) => {
        pool.getConnection((err, connection) => {
            if (err) {
                if (err) throw err;
    
            } else {
                try {
                    connection.query(`SELECT invalidtoken FROM user`, {}, (err, rows) => {
                        if (err) {
                            if (err) return callback(err, null);
                        } else {
                            if (rows.length != 0) {
                                console.log(rows);
                                return callback(null, rows);
                            } else {
                                console.log('checkToken has failed');
                                return callback('checkToken has failed', null);
                            }
                        }
                        connection.release();
                    });
                } catch (error) {
                    return callback(error, null);;
                }
            }
        }); //End of getConnection
    
    } //End of checkToken

    module.exports.checkUserId = (callback) => {
        pool.getConnection((err, connection) => {
            if (err) {
                if (err) throw err;
    
            } else {
                try {
                    connection.query(`SELECT user_id FROM user`, {}, (err, rows) => {
                        if (err) {
                            if (err) return callback(err, null);
                        } else {
                            if (rows.length != 0) {
                                console.log(rows);
                                return callback(null, rows);
                            } else {
                                console.log('checkUser has failed');
                                return callback('checkUser has failed', null);
                            }
                        }
                        connection.release();
                    });
                } catch (error) {
                    return callback(error, null);;
                }
            }
        }); //End of getConnection
    
    } //End of checkToken
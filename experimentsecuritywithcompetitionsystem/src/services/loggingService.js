const { createLogger, format, transports } = require('winston');

module.exports = createLogger({
    transports: [
        new transports.File({
            filename: 'Log/combined.log',
            format: format.combine(
                format.timestamp({ format: 'MMM-DD-YYYY HH:mm:ss' }),
                format.align(),
                format.printf(info => `${info.level}: ${[info.timestamp]}: ${info.message}`),
            ),
        }),
        new transports.File({
            filename: 'Log/error.log',
            format: format.combine(
                format.timestamp({ format: 'MMM-DD-YYYY HH:mm:ss' }),
                format.align(),
                format.printf((info) => `${info.level}: ${[info.timestamp]}: ${info.message}`)
            ),
            level: 'error',
        }),
    ],
});


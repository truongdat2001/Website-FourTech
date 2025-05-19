const { Sequelize } = require('sequelize');
require('dotenv').config()

const database_host = process.env.DB_HOST;
const database_port = process.env.DB_PORT;
const database_name = process.env.DB_NAME;
const database_user = process.env.DB_USER;
const database_password = process.env.DB_PASSWORD;

const sequelize = new Sequelize(database_name, database_user, database_password, {
    host: database_host,
    port: database_port,
    dialect: 'mysql',
    logging: false
});

const connectDatabase = async () => {
    try {
        await sequelize.authenticate();
        console.log('Kết nối Database thành công.');
    } catch (error) {
        console.error('Kết nối Database thất bại:', error);
    }
}

module.exports = connectDatabase

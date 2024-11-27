import { Sequelize, DataTypes } from 'sequelize'

const sequelize = new Sequelize('fwa', 'root', 'mymariadbpw', {
    dialect: 'mariadb',
    dialectOptions: {
        connectTimeout: 10000
      },
      pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
      },
    logging: false,
})

export {
    sequelize
}
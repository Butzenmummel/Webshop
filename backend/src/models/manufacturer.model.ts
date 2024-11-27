import { Sequelize, DataTypes } from 'sequelize'
import { sequelize } from './database.model'

const Manufacturer = sequelize.define('manufacturers', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    }
},
{
    timestamps: false,
    tableName: 'manufacturers',
    underscored: true,
    freezeTableName: true
})

function getAll () {
    return Manufacturer.findAll()
}

function get (id) {
    return (Manufacturer.findByPk(id))
}
/*
function getByName (manufacturerName) {
    return (Manufacturer.findOne(
        { where: { name: manufacturerName}}
    ))
}
*/
export {
    getAll,
    get,
    //getByName,
    Manufacturer
}
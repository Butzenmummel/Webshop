import { Sequelize, DataTypes } from 'sequelize'
import { sequelize } from './database.model'

const FilamentType = sequelize.define('filamentTypes', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
    },
    shortName: {
        type: DataTypes.STRING,
        allowNull: false
    },
    longName: {
        type: DataTypes.STRING,
        allowNull: false
    }
},
{
    timestamps: false,
    tableName: 'filament_types',
    underscored: true,
    freezeTableName: true
})

function getAll () {
    return FilamentType.findAll()
}

function get (id) {
    return (FilamentType.findByPk(id))
}

export {
    getAll,
    get,
    FilamentType
}
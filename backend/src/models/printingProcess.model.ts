import { Sequelize, DataTypes } from 'sequelize'
import { sequelize } from './database.model'

const PrintingProcess = sequelize.define('printingProcesses', {
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
    tableName: 'printing_process',
    underscored: true,
    freezeTableName: true
})

function getAll () {
    return PrintingProcess.findAll()
}

function get (id) {
    return (PrintingProcess.findByPk(id))
}

export {
    getAll,
    get,
    PrintingProcess
}
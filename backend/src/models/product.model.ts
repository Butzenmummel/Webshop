import { Sequelize, DataTypes, Op } from 'sequelize'
import { sequelize } from './database.model'
import { Manufacturer } from './manufacturer.model'
import { FilamentType } from './filamentType.model'
import { PrintingProcess } from './printingProcess.model'

const Product = sequelize.define('product', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        allowNull: false
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    description: {
        type: DataTypes.STRING,
        allowNull: false
    },
    imageUrl: {
        type: DataTypes.STRING,
        allowNull: true,
    },
    price: {
        type: DataTypes.DECIMAL(10,2),
        allowNull: false
    },
    manufacturerId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model : Manufacturer,
            key: "id"
        },
    },
    filamentTypeId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model : FilamentType,
            key: "id"
        },
    },
    weight: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    maxPrintHeight: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    maxPrintWidth: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    maxPrintDepth: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    productHeight: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    productWidth: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    productDepth: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    printingProcessId: {
        type: DataTypes.INTEGER,
        allowNull: false,
        references: {
            model : PrintingProcess,
            key: "id"
        },
    }
},
{
    timestamps: false,
    tableName: 'product',
    underscored: true,
    freezeTableName: true
})

Product.belongsTo(Manufacturer, {
    foreignKey: 'manufacturerId',
    as: 'manufacturer',
  })

Product.belongsTo(FilamentType, {
    foreignKey: 'filamentTypeId',
    as: 'filamentType',
  })

Product.belongsTo(PrintingProcess, {
    foreignKey: 'printingProcessId',
    as: 'printingProcess',
  })

// get all products from database. If searchTerm is defined, filter products by searchTerm
async function getAll (searchTerm?: string) {
    try {
        let product = await Product.findAll({
            // include data from other tables
            include: [{
                model: Manufacturer,
                as: 'manufacturer',
                attributes: ['name'],
            },
            {
                model: FilamentType,
                as: 'filamentType',
                attributes: [['short_name', 'name'], 'long_name'],
            },
            {
                model: PrintingProcess,
                as: 'printingProcess',
                attributes: ['name'],
              },],
            // filter products by search term
            where: {
                // use OR operator on the following fields
                [Op.or]: [
                    {   
                        // where name contains search term (Op.substring: LIKE '%searchTerm% and case insensitive)
                        name: {
                            [Op.substring]: searchTerm? searchTerm : '' // if searchTerm is undefined, use empty string, to get all products
                        },
                    },
                    // OR
                    {
                        description: {
                            [Op.substring]: searchTerm? searchTerm : ''
                        }
                    },
                    // OR
                    {
                        // we used include before where, so we can also search attributes from the included tables
                        '$manufacturer.name$': {
                            [Op.substring]: searchTerm? searchTerm : ''
                        }
                    },
                    // OR
                    {
                        '$filamentType.short_name$': {
                            [Op.substring]: searchTerm? searchTerm : ''
                        }
                    },
                    // OR
                    {
                        '$filamentType.long_name$': {
                            [Op.substring]: searchTerm? searchTerm : ''
                        }
                    },
                    // OR
                    {
                        '$printingProcess.name$': {
                            [Op.substring]: searchTerm? searchTerm : ''
                        }
                    },

                ]
            }
        })
        return product
    } catch (error) {
        console.error("product.model:", error)
        let product = await Product.findAll()
        return product
    }
}

async function get (id) {
    try {
        let product = await Product.findByPk(id, {
            include: [{
                model: Manufacturer,
                as: 'manufacturer',
                attributes: ['name'],
            },
            {
                model: FilamentType,
                as: 'filamentType',
                attributes: [['short_name', 'name'], 'long_name'],
            },
            {
                model: PrintingProcess,
                as: 'printingProcess',
                attributes: ['name'],
              },]
        });
    return product;
    } catch (error) {
        console.error("product.model:", error)
        let product = await Product.findByPk(id)
        return product
    }
}

async function getByManufacturer (manufacturerId) {
    try {
        let product = await Product.findAll({
            // include data from other tables
            include: [{
                model: Manufacturer,
                as: 'manufacturer',
                attributes: ['name'],
            },
            {
                model: FilamentType,
                as: 'filamentType',
                attributes: [['short_name', 'name'], 'long_name'],
            },
            {
                model: PrintingProcess,
                as: 'printingProcess',
                attributes: ['name'],
              },],
            // filter products by search term
            where: {
                '$manufacturer.id$': manufacturerId
            }
        })
        return product
    } catch (error) {
        console.error("product.model:", error)
        let product = await Product.findAll()
        return product
    }
}

async function getByFilamentType (filamentTypeId) {
    try {
        let product = await Product.findAll({
            // include data from other tables
            include: [{
                model: Manufacturer,
                as: 'manufacturer',
                attributes: ['name'],
            },
            {
                model: FilamentType,
                as: 'filamentType',
                attributes: [['short_name', 'name'], 'long_name'],
            },
            {
                model: PrintingProcess,
                as: 'printingProcess',
                attributes: ['name'],
              },],
            // filter products by search term
            where: {
                filamentTypeId: filamentTypeId
            }
        })
        return product
    } catch (error) {
        console.error("product.model:", error)
        let product = await Product.findAll()
        return product
    }
}

async function getByPrintingProcess (printingProcessId) {
    try {
        let product = await Product.findAll({
            // include data from other tables
            include: [{
                model: Manufacturer,
                as: 'manufacturer',
                attributes: ['name'],
            },
            {
                model: FilamentType,
                as: 'filamentType',
                attributes: [['short_name', 'name'], 'long_name'],
            },
            {
                model: PrintingProcess,
                as: 'printingProcess',
                attributes: ['name'],
              },],
            // filter products by search term
            where: {
                printingProcessId: printingProcessId
            }
        })
        return product
    } catch (error) {
        console.error("product.model:", error)
        let product = await Product.findAll()
        return product
    }
}

export {
    getAll,
    get,
    getByManufacturer,
    getByFilamentType,
    getByPrintingProcess,
    Product
}

import { get as getProduct,
    getAll as getAllProducts,
    getByManufacturer as getAllProductsByManufacturer,
    getByFilamentType as getAllProductsByFilamentType,
    getByPrintingProcess as getAllProductsByPrintingProcess,
    } from '../models/product.model'

import { sampleProducts } from "../data";
import { Model } from 'sequelize';

// get all products unfiltered
async function getAllProductsAction (req, res) {
    try {
        let products = await getAllProducts()
        res.json(products)
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("Product Database connection error. Using sample data")
        res.json(sampleProducts)
    }
}

// get a single product by id
async function getProductAction (req, res) {
    try {
        let id = req.params.productId
        let product = await getProduct(id)
        res.json(product?.dataValues)
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("Product Database connection error. Using sample data")
        let productId = req.params.productId
        let product = sampleProducts.find(product => product.id == productId)
        res.send(product);
    }
}

// Search for products by search term
async function getProductsBySearchTermAction (req, res) {
    try {
        let searchTerm = req.params.searchTerm              // get parameter from url
        let products = await getAllProducts(searchTerm)     // get products from database (getAll from product.model)
        res.send(products)                                  
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("Product Database connection error. Using sample data. (Only Product name search)")
        const searchTerm = req.params.searchTerm
        const products = sampleProducts
        .filter(product => product.name.toLowerCase()
        .includes(searchTerm.toLowerCase()))
        res.send(products)
    }
}

async function getProductsByManufacturerAction (req, res) {
    try {
        let manufacturerId = req.params.manufacturerId
        let products = await getAllProductsByManufacturer(manufacturerId)
        res.send(products)
    } catch (error) {
        console.log(error)
    }
}

async function getProductsByFilamentTypeAction (req, res) {
    try {
        let filamentTypeId = req.params.filamentTypeId
        let products = await getAllProductsByFilamentType(filamentTypeId)
        res.send(products)
    } catch (error) {
        console.log(error)
    }
}

async function getProductsByPrintingProcessAction (req, res) {
    try {
        let printingProcessId = req.params.printingProcessId
        let products = await getAllProductsByPrintingProcess(printingProcessId)
        res.send(products)
    } catch (error) {
        console.log(error)
    }
}

export {
    getAllProductsAction,
    getProductAction,
    getProductsBySearchTermAction,
    getProductsByManufacturerAction,
    getProductsByFilamentTypeAction,
    getProductsByPrintingProcessAction
}
import { get as getManufacturer, getAll as getAllManufacturers} from '../models/manufacturer.model'

import { sampleManufacturer } from "../data";


async function getAllManufacturersAction (req, res) {
    try {
        let manufacturers = await getAllManufacturers()
        res.json(manufacturers)
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("Manufacturer Database connection error. Using sample data")
        res.send(sampleManufacturer);
    }

}

async function getManufacturerAction (req, res) {
    try {
        let id = req.params.manufacturerId
        let manufacturer = await getManufacturer(id)
        res.json(manufacturer)
    } catch (error) {
            // Using sample data, if database connection failed
            console.error("Manufacturer Database connection error. Using sample data")
            const manufacturerId = req.params.manufacturerId;
            const manufacturer = sampleManufacturer.find(manufacturer => manufacturer.id == manufacturerId);
            res.send(manufacturer);  // return Manufacturer by ID
    }

}

async function getManufacturerByNameAction (req, res) {
    try {
        let id = req.params.manufacturerId
        let manufacturer = await getManufacturer(id)
        res.json(manufacturer)
    } catch (error) {
            // Using sample data, if database connection failed
            console.error("Manufacturer Database connection error. Using sample data")
            const manufacturerId = req.params.manufacturerId;
            const manufacturer = sampleManufacturer.find(manufacturer => manufacturer.id == manufacturerId);
            res.send(manufacturer);  // return Manufacturer by ID
    }
}

export {
    getAllManufacturersAction,
    getManufacturerAction
}
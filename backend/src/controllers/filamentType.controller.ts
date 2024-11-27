import { get as getFilamentType, getAll as getAllFilamentTypes} from '../models/filamentType.model'

import { sampleFilamentType } from "../data";


async function getAllFilamentTypesAction (req, res) {
    try {
        let filamentTypes = await getAllFilamentTypes()
        res.json(filamentTypes)
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("filamentType Database connection error. Using sample data")
        res.send(sampleFilamentType);
    }

}

async function getFilamentTypeAction (req, res) {
    try {
        let id = req.params.filamentTypeId
        let filamentType = await getFilamentType(id)
        res.json(filamentType)
    } catch (error) {
            // Using sample data, if database connection failed
            console.error("filamentType Database connection error. Using sample data")
            const filamentTypeId = req.params.filamentTypeId;
            const filamentType = sampleFilamentType.find(filamentType => filamentType.id == filamentTypeId);
            res.send(filamentType);  // return Manufacturer by ID
    }

}

export {
    getAllFilamentTypesAction,
    getFilamentTypeAction
}
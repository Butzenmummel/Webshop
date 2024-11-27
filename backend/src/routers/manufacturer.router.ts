import { Router } from "express";
import {
    getAllManufacturersAction, 
    getManufacturerAction,
} from '../controllers/manufacturer.controller'

import { sampleProducts } from "../data";

const router = Router()

router.get("/", getAllManufacturersAction)                  // get all manufacturers (for category list)
router.get("/id/:manufacturerId", getManufacturerAction)    // get manufacturer by id (obsolete?)

router.get("/name/:manufacturerName", (req, res) => {       // get manufacturer by name (obsolete?)
    const manufacturerName = req.params.manufacturerName;
    const products = sampleProducts.filter(product => product.manufacturer.name?.includes(manufacturerName));
    res.send(products); // return all Products by Manufacturers
})

export { router }
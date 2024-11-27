import { Router } from "express";
import {
    getAllFilamentTypesAction, 
    getFilamentTypeAction,
} from '../controllers/filamentType.controller'

import { sampleProducts } from "../data";

const router = Router()

router.get("/", getAllFilamentTypesAction)
router.get("/id/:filamentTypeId", getFilamentTypeAction)

router.get("/name/:filamentTypeName", (req, res) => {
    const filamentTypeName = req.params.filamentTypeName;
    const products = sampleProducts
    .filter(product => product.filamentType?.includes(filamentTypeName));
    res.send(products); // return all Products by FilamentTypes
})

export { router }
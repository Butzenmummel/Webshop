import { Router } from "express";
import {
    getAllProductsAction, 
    getProductAction,
    getProductsBySearchTermAction,
    getProductsByManufacturerAction,
    getProductsByFilamentTypeAction,
    getProductsByPrintingProcessAction,
} from '../controllers/product.controller'

import { sampleFilamentType, samplePrintingProcess, sampleProducts } from "../data";

const router = Router()


router.get("/", getAllProductsAction)
router.get("/:productId", getProductAction)
router.get("/search/:searchTerm", getProductsBySearchTermAction)

router.get("/manufacturer/id/:manufacturerId", getProductsByManufacturerAction)
router.get("/filamentType/id/:filamentTypeId", getProductsByFilamentTypeAction)
router.get("/printingProcess/id/:printingProcessId", getProductsByPrintingProcessAction)

export { router }
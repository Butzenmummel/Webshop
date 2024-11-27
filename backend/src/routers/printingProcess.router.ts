import { Router } from "express";
import {
    getAllPrintingProcessesAction, 
    getPrintingProcessAction,
} from '../controllers/printingProcess.controller'

import { sampleProducts } from "../data";

const router = Router()

router.get("/", getAllPrintingProcessesAction)
router.get("/id/:printingProcessId", getPrintingProcessAction)

router.get("/name/:printingProcessName", (req, res) => {
    const printingProcessName = req.params.printingProcessName;
    const products = sampleProducts
    .filter(product => product.printingProcess?.includes(printingProcessName));
    res.send(products); // return all Products by PrintingProcesses
})

export { router }
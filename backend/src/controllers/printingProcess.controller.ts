import { get as getPrintingProcess, getAll as getAllPrintingProcesss} from '../models/printingProcess.model'

import { samplePrintingProcess } from "../data";


async function getAllPrintingProcessesAction (req, res) {
    try {
        let printingProcesses = await getAllPrintingProcesss()
        res.json(printingProcesses)
    } catch (error) {
        // Using sample data, if database connection failed
        console.error("printingProcess Database connection error. Using sample data")
        res.send(samplePrintingProcess);
    }

}

async function getPrintingProcessAction (req, res) {
    try {
        let id = req.params.printingProcessId
        let printingProcess = await getPrintingProcess(id)
        res.json(printingProcess)
    } catch (error) {
            // Using sample data, if database connection failed
            console.error("printingProcess Database connection error. Using sample data")
            const printingProcessId = req.params.printingProcessId;
            const printingProcess = samplePrintingProcess.find(printingProcess => printingProcess.id == printingProcessId);
            res.send(printingProcess);  // return Manufacturer by ID
    }

}

export {
    getAllPrintingProcessesAction,
    getPrintingProcessAction
}
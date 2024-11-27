import { Manufacturer, FilamentType, PrintingProcess } from 'app/shared/models/Category';
import {Products} from './app/shared/models/Product';

// Obsolete Frontend test data

export const sampleProducts: Products[] = [
    {
        id: "1",
        name: "XYZ Printer",
        description: "A high-quality 3D printer for professional use.",
        imageUrl: "https://gzhls.at/i/64/29/2606429-n0.jpg",
        price: 999,
        manufacturer: "XYZ Corporation",
        filamentType: "PLA",
        weight: 10,
        maxPrintHeight: 200,
        maxPrintWidth: 200,
        maxPrintDepth: 200,
        productHeight: 400,
        productWidth: 400,
        productDepth: 400,
        printingProcess: "FDM"
      },
      {
        id: "2",
        name: "ABC Printer",
        description: "An affordable 3D printer for beginners.",
        imageUrl: "https://gzhls.at/i/50/97/2685097-n0.jpg",
        price: 299,
        manufacturer: "ABC Technologies",
        filamentType: "ABS",
        weight: 5,
        maxPrintHeight: 150,
        maxPrintWidth: 150,
        maxPrintDepth: 150,
        productHeight: 300,
        productWidth: 300,
        productDepth: 300,
        printingProcess: "FDM"
      },
      {
        id: "3",
        name: "Delta Printer",
        description: "A versatile 3D printer with a unique delta configuration.",
        imageUrl: "https://gzhls.at/i/80/80/2938080-n0.webp",
        price: 1499,
        manufacturer: "Delta Technologies",
        filamentType: "PETG",
        weight: 15,
        maxPrintHeight: 300,
        maxPrintWidth: 200,
        maxPrintDepth: 200,
        productHeight: 600,
        productWidth: 400,
        productDepth: 400,
        printingProcess: "FFF"
      },
      {
        id: "4",
        name: "Mini Printer",
        description: "A compact and portable 3D printer for on-the-go printing.",
        imageUrl: "https://gzhls.at/i/20/14/2462014-l0.jpg",
        price: 499,
        manufacturer: "MiniPrint Inc.",
        filamentType: "TPU",
        weight: 2,
        maxPrintHeight: 100,
        maxPrintWidth: 100,
        maxPrintDepth: 100,
        productHeight: 200,
        productWidth: 200,
        productDepth: 200,
        printingProcess: "SLA"
      },
]

export const sampleManufacturer: Manufacturer[] = [
  {name: "XYZ Corporation"},
  {name: "ABC Technologies"},
  {name: "Delta Technologies"},
  {name: "MiniPrint Inc."},
  ]

  export const sampleFilamentType: FilamentType[] = [
    {name: "PLA"},
    {name: "ABS"},
    {name: "TPU"},
    {name: "PETG"},
  ]

  export const samplePrintingProcess: PrintingProcess[] = [
    {name: "SLA"},
    {name: "FDM"},
    {name: "FFF"},
  ]
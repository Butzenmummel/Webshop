// Test Data
export const sampleProducts: any[] = [
    {
        id: 1,
        name: "XYZ Printer",
        description: "A high-quality 3D printer for professional use.",
        imageUrl: "https://gzhls.at/i/64/29/2606429-n0.jpg",
        price: 999,
        manufacturerId: 1,
        filamentTypeId: 1,
        weight: 10000,
        maxPrintHeight: 200,
        maxPrintWidth: 200,
        maxPrintDepth: 200,
        productHeight: 400,
        productWidth: 400,
        productDepth: 400,
        printingProcessId: 2,
        manufacturer: {
          id: 1,
          name: "XYZ Corporation"
        },
        filamentType: {
          id: 1,
          name: "PLA"
        },
        printingProcess: {
          id: 2,
          name: "FDM"
        }
      },
      {
        id: 2,
        name: "ABC Printer",
        description: "An affordable 3D printer for beginners.",
        imageUrl: "https://gzhls.at/i/50/97/2685097-n0.jpg",
        price: 299,
        manufacturerId: 2,
        filamentTypeId: 2,
        weight: 5000,
        maxPrintHeight: 150,
        maxPrintWidth: 150,
        maxPrintDepth: 150,
        productHeight: 300,
        productWidth: 300,
        productDepth: 300,
        printingProcessId: 2,
        manufacturer: {
          id: 1,
          name: "ABC Technologies"
        },
        filamentType: {
          id: 2,
          name: "ABS"
        },
        printingProcess: {
          id: 2,
          name: "FDM"
        }
      },
      {
        id: 3,
        name: "Delta Printer",
        description: "A versatile 3D printer with a unique delta configuration.",
        imageUrl: "https://gzhls.at/i/80/80/2938080-n0.webp",
        price: 1499,
        manufacturerId: 3,
        filamentTypeId: 4,
        weight: 15000,
        maxPrintHeight: 300,
        maxPrintWidth: 200,
        maxPrintDepth: 200,
        productHeight: 600,
        productWidth: 400,
        productDepth: 400,
        printingProcessId: 3,
        manufacturer: {
          id: 1,
          name: "Delta Technologies"
        },
        filamentType: {
          id: 4,
          name: "PETG"
        },
        printingProcess: {
          id: 3,
          name: "FFF"
        }
      },
      {
        id: 4,
        name: "Mini Printer",
        description: "A compact and portable 3D printer for on-the-go printing.",
        imageUrl: "https://gzhls.at/i/20/14/2462014-l0.jpg",
        price: 499,
        manufacturerId: 4,
        filamentTypeId: 3,
        weight: 2000,
        maxPrintHeight: 100,
        maxPrintWidth: 100,
        maxPrintDepth: 100,
        productHeight: 200,
        productWidth: 200,
        productDepth: 200,
        printingProcessId: 1,
        manufacturer: {
          id: 1,
          name: "MiniPrint Inc."
        },
        filamentType: {
          id: 3,
          name: "TPU"
        },
        printingProcess: {
          id: 1,
          name: "SLA"
        }
      },
]

export const sampleManufacturer: any[] = [
  {
    id: 1,
    name: "XYZ Corporation"
  },
  {
    id: 2,
    name: "ABC Technologies"
  },
  {
    id: 3,
    name: "Delta Technologies"
  },
  {
    id: 4,
    name: "MiniPrint Inc."
  },
]

  export const sampleFilamentType: any[] = [
    {
      id: 1,
      name: "PLA"
    },
    {
      id: 2,
      name: "ABS"
    },
    {
      id: 3,
      name: "TPU"
    },
    {
      id: 4,
      name: "PETG"
    },
]

  export const samplePrintingProcess: any[] = [
    {
      id: 1,
      name: "SLA"
    },
    {
      id: 2,
      name: "FDM"
    },
    {
      id: 3,
      name: "FFF"
    },
]
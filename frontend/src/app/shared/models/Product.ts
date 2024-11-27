export class Products{
    id!:number;
    name!:string;
    description!:string;
    imageUrl!:string;
    price!:number;
    manufacturerId!:number;
    filamentTypeId!:number;
    weight!:number;
    maxPrintHeight!:number;
    maxPrintWidth!:number;
    maxPrintDepth!:number;
    productHeight!:number;
    productWidth!:number;
    productDepth!:number;
    printingProcessId!:number;
    manufacturer!:Manufacturer;
    filamentType!:FilamentType;
    printingProcess!:PrintingProcess;
}

export class Manufacturer{
    name!:string;
}

export class FilamentType{
    name!:string;
}

export class PrintingProcess{
    name!:string;
}
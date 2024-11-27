import express from "express";
import cors from "cors";
import {router as productRouter} from './routers/product.router';
import {router as manufacturerRouter} from './routers/manufacturer.router';
import {router as filamentTypeRouter} from './routers/filamentType.router';
import {router as printingProcessRouter} from './routers/printingProcess.router';

const app= express();

const queryUrl = 'http://localhost';
const queryPort = 5000;

/*
const customHeadersAppLevel = function (req, res, next) {
    res.header("Access-Control-Expose-Headers", "ETag");
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
    res.header("Access-Controll-Allow-Headers", "Content-Type");
    res.header("Test", "hello");
    res.header('Content-Security-Policy',"default-src 'self'; script-src 'self'; style-src 'self' 'unsafe-inline';");
    next();
}
app.use(customHeadersAppLevel);
*/
app.use(cors({
    credentials:true,
    origin:["http://localhost:4200", "http://localhost:4201"]
}));



// Entry Points for API requests
app.use("/api/manufacturer", manufacturerRouter);
app.use("/api/filamentType", filamentTypeRouter);
app.use("/api/printingProcess", printingProcessRouter);
app.use("/api/products", productRouter);

// Error handling middleware function
app.use((err, req, res, next) => {
    console.error(err.stack);
    res.status(500).send('Something went wrong!');
});

app.listen(queryPort, () => {
    console.log(`Website served on ${queryUrl}:${queryPort}`);
});
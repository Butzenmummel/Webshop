# 3D Drucker Webshop

## Table of Contents

1. [Quickstart](#quickstart)  
2. [To-Do List](#to-do-list)  
3. [Frontend](#frontend)  
4. [Backend](#backend)  
   4.1 [API](#api-requests)  
5. [Database](#database)  

---

## Quickstart

Use development Branch for latest features.  
Use alex_dev for dual frontend. Might be some commits behind.  

Get and Update all necessary modules:  
```
npm install
```

### Setup Database  

```
cd database
./create_database_container.sh
```

### Start Frontend Angular Server [Home Page](http://localhost:4200/):

```
cd frontend
ng serve
```
---
Frontend Angular Server with css instead scss
```
cd frontend-css
ng serve --port 4201
```

### Start Backend Node Server [Example](http://localhost:5000/api/products/)

```
cd backend
npm start
```

### Database ([See here](backend/src/models/database.model.ts))
name: 'fwa'  
login: 'root'  
password: 'mymariadbpw'  

---

## **TO-DO-LIST**

>### - SCSS / CSS!  
- example:  
    2 websites(one with css / one with scss)  
    subjective opinion  
    differences  
- creativity  

&nbsp;
>### Core  functionality

- Database Connection  *[Alex]*  [+ DONE +]
    - ~~Mock Data function in product.router change to real data and split in model/controller/routes~~  
    - ~~SQL Script: add foreign keys?(need to be tested) (sql line 242)~~  

- Database Connection resulted in broken API requests  [- PARTLY DONE -]
    - API need rework for ~~search function~~ and category filter  

- Changes in Frontend to fit Database  [+ DONE +]
    - ~~(because mock data != database data)~~  
    - ~~product page: manufacturer / filament type / printing process~~
    - ~~depends on Database Connection~~  

- Administratorpage *[Kevin]*
    - POST
    - PUSH
    - DELETE
 
- Order Page  *[Lukas]*
    - Checkout Form (customer information, address, etc.)  
    - change database (no cart, no customer)
    - billing informations
    - inform user (confirmation email (mockup/console.log))

&nbsp;
>### Additional functionality

- Better Category Filter with more options  
    - multiple parameters
    - multiple selections  
    - [Geizhals example](https://geizhals.de/?cat=dr3d)
    - [Slider example](https://material.angular.io/components/slider/overview)  

- Searchfunction  [+ DONE +]  
    - example:  
        - filament type short name and long name search  
        - printing process name search  
        - manufacturer name search  
        - description keyword search  
    - current:  
        - only product name  
        
&nbsp;
>### Minor changes

- ~~price formatting~~  
- SQL:  [- PARTLY DONE -]  
    - change database to our needs  
        - no customer!  
        - no warehouse!  
        - etc.  
    - foreign keys( **works without**)
    - ~~printing process only abbrevations~~ (or short_name and long_name)  
    - ~~typos?~~  
    - more product data  
- ~~images~~  

>### Relevant for presentation

- Possible questions:
    - observable vs promise
    - template-based vs relative
- Unit Test(s)  
- Startup script  

---

## Frontend

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 16.0.5.

### Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

### Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

---

## Backend

Backend it running with Node.js. More information on https://nodejs.org/  
Using 
[Model](backend/src/models/) /
[Router](backend/src/routers/) /
[Controller](backend/src/controllers/)
structure  
- Model - represents database structure  
- Router - API routes maps to Controller  
- Controller - logic implementation and sending responses  

[Test data](/backend/src/data.ts) available, if database is missing. (Not fully supported)

---

### API Requests

>#### **GET** 
>
>"/api/products/" : Get all products  
>"/api/products/:productID" : Get product by ID  
>"/api/products/search/:searchTerm" : Get products by name, description, manufacturer, filament type or printing process  
>
>"/api/products/manufacturer/id/:manufacturerId" : Get products by manufacturer id  
>"/api/products/filamentType/id/:filamentTypeId" : Get products by filament type id  
>"/api/products/printingProcess/id/:printingProcessId" : Get products by printing process id  
>
>"/api/manufacturer" : Get all manufacturers  
>"/api/filamentType" : Get all filament types  
>"/api/printingProcess" : Get all printing Processes  


---

## Database

Using a MariaDB database running in a containerized enviroment with Docker Desktop. More infos under https://mariadb.org/ and https://www.docker.com/  

[Shell Script](database/create_database_container.sh) to setup a MariaDB Container, create tables and fill with data.  
[DB_create.sql](database/DB_create.sql) creates the required database tables.  
[DB_fill.sql](database/DB_fill.sql) fills the tables with data.  

A tool like [DBeaver](https://dbeaver.io/) can be used to inspect database.

## Other
CI Colors
https://realtimecolors.com/?colors=ffffff-1e2328-0c3a46-a09b8c-c89b3c  

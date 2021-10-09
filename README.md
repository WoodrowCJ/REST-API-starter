<h1>REST API (Guide)</h1>

The following guide is for the 'Products' REST-API application app.js
The application allows the creation, updating, fetch and deletion of ephemeral product details into a database running in the application.

<h2>Installation Instructions</h2>

To install the REST API first of all install Node by entering the following command in a bash terminal:
`npm install`

<h3>Required modules</h3>
You will additionally need the following modules:

* Express
* Jest

Once completed you can start the application in the terminal with:
`npm start` which will return a message similar to API Listening on http://localhost:8080

<h3>Changing the port address</h3>

> You can change the port address by entering the following command into the terminal `$ PORT=9090 npm start`

<h2>How to use the functionality</h2>

Open a second BASH session (the first will be running the app listening on the port you specified) and enter any of the following $curl commands below to make requests over the API.

<b>Note:</> You can also use Postman as an alternative to CURL to inject custom requests and view the response. Notes on how to do this will be added in a future update.

The app has four core operations.

* READ (ALL) product details
* READ product details by ID
* CREATE a new product entry
* UPDATE an existing products details
* DELETE a products details by ID

<h3>READ all products</h3>
To return all product details please use the following curl command:

`curl -s -X GET http://localhost:8080/product/read`

<h3>READ product by ID</h3>
To return a specific product details us the following curl command replacing id with products unique id:

`curl -s -X GET http://localhost:8080/product/read/<id>`

<h3>CREATE</H3>
Create a new product record with:

`curl -s -X POST http://localhost:8080/product/create -H 'Content-type:application/json' -d '{"name":"example product", "description":"this is an example", "price":9.99}'`

<h3>UPDATE</H3>
Update an existing product by ID using:

`curl -s -X PUT http://localhost:8080/product/update/<id> -H 'Content-type:application/json'  -d '{"name":"updated product", "description":"its brand new", "price":99.99}'`

<h3>DELETE</h3>
Delete a product details using following command and replacing ID with that products unique ID:

`curl -s -X DELETE http://localhost:8080/product/delete/<id>`

<h2>Testing</h2>

A suite of unit tests has been included for the 'READ' 'CREATE' and "Builder" components which can be run using the following command in the bash terminal:

`npm test`

This will execute any tests created in Jest as part of the file 'app.test.js' and retrun the results to the console.

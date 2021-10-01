<h1>REST API (Guide)</h1>

The following guide is for the 'Products' REST-API application app.js
The application allows the creation, updating, fetch and deletion of ephemeral product details into a database running in the application.

<h2>Installation Instructions</h2>

To install the REST API first of all install Node by entering the following command in a bash terminal:
`<npm install>`

<h3>Required modules</h3>
You will additionally need the following modules:
* Express
* Jest

Once completed you can start the application in the terminal with:
`<npm start>` which will return a message similar to API Listening on http://localhost:8080

<h3>Changing the port address</h3>
> You can change the port address by entering the following command into the terminal `<$ PORT=9090 npm start>`

<h2>Testing</h2>
A suite of unit tests has been included for the 'READ' 'CREATE' and "Builder" components which can be run using the following command in the bash terminal: `<npm test>`



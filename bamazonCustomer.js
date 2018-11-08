var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    console.log("Connected as id " + connection.threadId);
    listProducts();
    shop();
});

function listProducts() {
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;
        for (i=0; i < res.length; i++) {
            console.log(res[i].item_id + " " + res[i].product_name + " " + res[i].department_name + " $" + res[i].price + " " + res[i].stock_quantity);
        }
        connection.end();
    });
}

function shop() {
    inquirer.prompt([
    {
      type: "input",
      message: "Input the ID of the item you would like to purchase.",
      name: "itemId"
    },
    {
      type: "input",
      message: "How many would you like to purchase?",
      name: "number"
    },
    {
      type: "confirm",
      message: "Are you sure:",
      name: "confirm",
      default: true
    },
  ])
  .then(function(inquirerResponse) {
    if (inquirerResponse.confirm) {
      console.log("You have purchased " + inquirerResponse.number + " of item number " + inquirerResponse.itemId + ".");
      console.log(inquirerResponse);
      var query = connection.query(
        "UPDATE products SET ? WHERE ?",
        [
          {
            stock_quantity: stock_quantity - inquirerResponse.number
          }
        ],
        function(err, res) {
          console.log(res.affectedRows + " products updated!\n");
        }
      );
    }
    else {
      console.log("Please enter the item number and then the amount of that item you would like to purchase.");
      shop();
    }
  });
}

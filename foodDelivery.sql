/*  CMPT354 MP1 SQLite Food Delivery Database
    by Jared Ma and Sedat Demiriz */

PRAGMA foreign_keys = ON;

/*  30 characters for names and emails
    100 for addresses */
CREATE TABLE Customer(
    customerID      INT,
    firstName       VARCHAR(20),
    lastName        VARCHAR(20),
    email           VARCHAR(20),
    cusAddress      VARCHAR(100),    
    PRIMARY KEY     (customerID)
);

/*  payType can be CASH/CARD for now */
CREATE TABLE Payment(
    payID       INT,
    payType     CHAR(4),
    payTotal    FLOAT,
    PRIMARY KEY     (paymentID)
);

/*  "Order" as a table name doesn't work */
CREATE TABLE OrderInstance(
    orderID         INT,
    orderTime       TIME,
    orderStatus     VARCHAR(30),
    totalPrice      FLOAT,    
    deliveryTime    TIME,
    PRIMARY KEY     (orderID)
);

/*  20 characters for names
    50 for the car description */
CREATE TABLE Driver(
    driverID        INT,
    firstName       VARCHAR(20),
    lastName        VARCHAR(20),
    carDesc         VARCHAR(50),
    PRIMARY KEY     (driverID)
);

/*  30 characters for name, cuisine and type
    rating could be out of 5 for example */
CREATE TABLE Restaurant(
    restName       VARCHAR(30),
    restAddress    VARCHAR(100),    
    cuisine        VARCHAR(30),
    restType       VARCHAR(30),
    rating         INT,
    PRIMARY KEY    (restName, restAddress)
);

CREATE TABLE Menu(
    placeholder INT
);

/*  30 characters for item name
    5 for description */
CREATE TABLE Items(
    itemID          INT,
    itemName        VARCHAR(30),
    itemDesc        VARCHAR(50),
    price           FLOAT,
    FOREIGN KEY     (itemID)
    REFERENCES      Menu (placeholder)
)
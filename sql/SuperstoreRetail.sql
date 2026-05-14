CREATE DATABASE SuperstoreRetail;
GO

USE SuperstoreRetail;
GO

CREATE TABLE Customers (
    customer_id   VARCHAR(20)  NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    segment       VARCHAR(50)  NOT NULL,
    country       VARCHAR(50)  NOT NULL,
    city          VARCHAR(100) NOT NULL,
    state         VARCHAR(100) NOT NULL,
    postal_code   INT          NOT NULL,
    region        VARCHAR(50)  NOT NULL,
  
);
GO

CREATE TABLE Products  (
    product_id    VARCHAR(20)   NOT NULL,
    product_name  VARCHAR(255)  NOT NULL,
    category      VARCHAR(50)   NOT NULL,
    sub_category  VARCHAR(50)   NOT NULL,
   
);
GO

CREATE TABLE Sales (
    row_id        INT            NOT NULL,
    order_id      VARCHAR(20)    NOT NULL,
    order_date    DATE           NOT NULL,
    ship_date     DATE           NOT NULL,
    ship_mode     VARCHAR(50)    NOT NULL,
    customer_id   VARCHAR(20)    NOT NULL,
    product_id    VARCHAR(20)    NOT NULL,
    sales         DECIMAL(12,4)  NOT NULL,
    quantity      INT            NOT NULL,
    discount      DECIMAL(5,2)   NOT NULL,
    profit        DECIMAL(12,4)  NOT NULL,

);
GO
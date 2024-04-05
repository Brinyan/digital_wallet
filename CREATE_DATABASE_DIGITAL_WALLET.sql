USE MASTER;
GO

CREATE DATABASE DIGITAL_WALLET;
GO

USE DIGITAL_WALLET;
GO

CREATE TABLE CLIENTS (
    client_uuid UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
    first_name NVARCHAR(100),
    last_name NVARCHAR(100),
    document_type NVARCHAR(4),
    document NVARCHAR(11),
    gender NVARCHAR(10),
    email NVARCHAR(100),
    cellphone NVARCHAR(10),
    client_status NVARCHAR(15)
);

CREATE TABLE TRANSACTIONS (
    transaction_uuid UNIQUEIDENTIFIER NOT NULL PRIMARY KEY DEFAULT NEWID(),
    client_uuid UNIQUEIDENTIFIER,
    amount DECIMAL(18, 3),
    type_transaction NVARCHAR(50),
    date_transaction DATETIME,
    confirmation_code NVARCHAR(50),
    FOREIGN KEY (client_uuid) REFERENCES CLIENTS(client_uuid)
);

CREATE TABLE WALLETS (
    client_uuid UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
    balance DECIMAL(18, 3),
    FOREIGN KEY (client_uuid) REFERENCES CLIENTS(client_uuid) ON DELETE CASCADE
);

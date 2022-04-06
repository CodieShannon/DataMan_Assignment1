-- DROP TABLES --
-- ======================================================================== -- 
DROP TABLE Deliveries;
DROP TABLE Deliverers;
DROP TABLE PamphletTypes;
DROP TABLE Contacts;
DROP TABLE Maps;


-- CREATE TABLES --
-- ======================================================================== -- 
-- Maps Table --
CREATE TABLE Maps(
    MapsID int IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    MapImg NVARCHAR(255) NOT NULL,
    Deliverables int NOT NULL
);

-- Contacts Table --
CREATE TABLE Contacts (
    ContactsID int IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Phone VARCHAR(50) NOT NULL,
    Email NVARCHAR(255),
    Street VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    isAvailable BIT NOT NULL DEFAULT(1),
    DateAvail DATETIME
);

-- Deliverers Table --
CREATE TABLE Deliverers (
    DeliverersID int IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    MapsID int NOT NULL FOREIGN KEY REFERENCES dbo.Maps(MapsID),
    ContactsID int NOT NULL FOREIGN KEY REFERENCES dbo.Contacts(ContactsID)
);

-- PamphletTypes Table --
CREATE TABLE PamphletTypes (
    PamType VARCHAR(150) PRIMARY KEY NOT NULL,
    BundleQuantity int NOT NULL
);

-- Deliveries Table --
CREATE TABLE Deliveries (
    DeliveriesID int IDENTITY(1, 1) PRIMARY KEY NOT NULL,
    DeliverersID int NOT NULL FOREIGN KEY REFERENCES dbo.Deliverers(DeliverersID),
    PamType1 VARCHAR(150) NOT NULL FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    PamType2 VARCHAR(150) FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    PamType3 VARCHAR(150) FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    PamType4 VARCHAR(150) FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    PamType5 VARCHAR(150) FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    PamType6 VARCHAR(150) FOREIGN KEY REFERENCES dbo.PamphletTypes(PamType),
    isDelivered BIT NOT NULL DEFAULT(0),
    DelDate DATETIME
);
GO


-- INSERT DATA --
-- ======================================================================== -- 
-- INSERT INTO MAPS --
INSERT INTO Maps (MapImg, Deliverables)
VALUES ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 169),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 113),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 164),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 115),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 182),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 115),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 126),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 104),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 185),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 194),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 110),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 189),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 102),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 176),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 134),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 182),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 117),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 121),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 117),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 102),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 147),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 144),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 154),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 173),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 196),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 175),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 143),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 133),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 168),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 112),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 110),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 138),
        ('https://github.com/CodieShannon/OvatoDistributions/blob/main/route_template.jpg?raw=true', 147);

-- INSERT INTO CONTACTS --
INSERT INTO Contacts (FirstName, LastName, Phone, Email, Street, City)
VALUES ('Tony', 'Martin', '021941580', 'tony.martin@outlook.com', 'Douglas St', 'Whakatane'),
        ('Sarah', 'Clark', '021255635', 'sarah.clark@outlook.co.nz', 'Nelson St', 'Whakatane'),
        ('Henry', 'King', '022556536', 'henry.king@gmail.com', 'Bracket St', 'Whakatane'),
        ('Jennifer', 'Jones', '021660334', 'jennifer.jones@outlook.com.au', 'McAlister St', 'Whakatane'),
        ('Jeremy', 'Stewart', '022561528', 'jeremy.stewart@outlook.com.au', 'Simpkins St', 'Whakatane'),
        ('Jennifer', 'Smith', '021799279', 'jennifer.smith@gmail.com.au', 'The Fairway', 'Whakatane'),
        ('Edward', 'Wilson', '021429775', 'edward.wilson@yahoo.com', 'Awatapu Dr', 'Whakatane'),
        ('Henry', 'Martin', '021192129', 'henry.martin@yahoo.com', 'Henderson St', 'Whakatane'),
        ('Ashley', 'Thompson', '021865080', 'ashley.thompson@gmail.com', 'Hawera St', 'Whakatane'),
        ('Kurt', 'Anderson', '021223188', 'kurt.anderson@yahoo.co.nz', 'Barry Ave', 'Whakatane'),
        ('Edward', 'Jones', '021859738', 'edward.jones@gmail.co.nz', 'Landscape Rd', 'Whakatane'),
        ('Cory', 'King', '021499021', 'cory.king@yahoo.com.au', 'Omega PI', 'Whakatane'),
        ('Jack', 'King', '021486311', 'jack.king@outlook.co.nz', 'Harbour Rd', 'Whakatane'),
        ('Kurt', 'Kumar', '022161524', 'kurt.kumar@yahoo.com.au', 'Ocean Rd', 'Whakatane'),
        ('Ashley', 'Campbell', '021821902', 'ashley.campbell@outlook.com.au', 'James St', 'Whakatane');

-- INSERT INTO DELIVERERS --
INSERT INTO Deliverers (MapsID, ContactsID)
VALUES (12, 6),
        (3, 4),
        (7, 1),
        (5, 13),
        (10, 9),
        (9, 11),
        (13, 7),
        (6, 5),
        (8, 15),
        (11, 8),
        (14, 10),
        (1, 12),
        (2, 2),
        (15, 3),
        (4, 14);

-- INSERT INTO PAMPHLETTYPES --
INSERT INTO PamphletTypes (PamType, BundleQuantity)
VALUES ('Supercheap Auto', 200),
        ('Repco', 200),
        ('Farmers', 100),
        ('Pizza Hut', 1550),
        ('KFC', 800),
        ('Briscoes', 400);

-- INSERT INTO DELIVERIES --
INSERT INTO Deliveries (DeliverersID, PamType1, PamType2, PamType3, PamType4, PamType5, PamType6)
VALUES  (1, 'Supercheap Auto', 'Repco', 'Farmers', null, null, null),
        (2, 'Supercheap Auto', null, 'Farmers', null, 'KFC', null),
        (3, 'Supercheap Auto', 'Repco', null, null, 'KFC', null),
        (4, 'Supercheap Auto', 'Repco', 'Farmers', 'Pizza Hut', 'KFC', 'Briscoes'),
        (5, 'Supercheap Auto', null, 'Farmers', null, 'KFC', null),
        (6, 'Supercheap Auto', null, null, null, 'KFC', null),
        (7, 'Supercheap Auto', null, null, 'Pizza Hut', 'KFC', null),
        (8, 'Supercheap Auto', 'Repco', null, 'Pizza Hut', null, null),
        (9, 'Supercheap Auto', null, null, 'Pizza Hut', null, null),
        (10, 'Supercheap Auto', 'Repco', null, null, 'KFC', null),
        (11, 'Supercheap Auto', 'Repco', null, 'Pizza Hut', null, null),
        (12, 'Supercheap Auto', 'Repco', 'Farmers', 'Pizza Hut', 'KFC', 'Briscoes'),
        (13, 'Supercheap Auto', null, null, 'Pizza Hut', 'KFC', null);
GO


-- Join Query --
-- ======================================================================== --
-- Contacts Join --
SELECT (C.FirstName + ' ' + C.LastName) AS Full_Name,
    C.Phone,
    C.Email,
    (C.Street + ', ' + C.City) AS Delivery_Address,
    C.isAvailable, C.DateAvail AS Date_Available,
    D.isDelivered,
    D.DelDate AS Date_Delivered
FROM Deliveries AS D

INNER JOIN Deliverers AS Del
ON D.DeliverersID = Del.DeliverersID

INNER JOIN Contacts AS C
ON Del.ContactsID = C.ContactsID;


-- Pamphlets Query --
SELECT (C.FirstName + ' ' + C.LastName) AS Full_Name, D.isDelivered, D.DelDate AS Date_Delivered,
    D.PamType1 AS Pamphlet_1, PT1.BundleQuantity AS Quantity_1, D.PamType2 AS Pamphlet_2, PT2.BundleQuantity AS Quantity_2,
    D.PamType3 AS Pamphlet_3, PT3.BundleQuantity AS Quantity_3, M.Deliverables AS Quantity
FROM Deliveries AS D

INNER JOIN Deliverers AS Del
ON D.DeliverersID = Del.DeliverersID

INNER JOIN Contacts AS C
ON Del.ContactsID = C.ContactsID

LEFT JOIN PamphletTypes AS PT1
ON D.PamType1 = PT1.PamType

LEFT JOIN PamphletTypes AS PT2
ON D.PamType2 = PT2.PamType

LEFT JOIN PamphletTypes AS PT3
ON D.PamType3 = PT3.PamType

INNER JOIN Maps AS M
ON Del.MapsID = M.MapsID;
GO


-- CREATE, READ, UPDATE, DELETE FUNCTIONS --
-- ======================================================================== --
SELECT * FROM Deliveries;

INSERT INTO Deliveries(DeliverersID, PamType1, PamType2, PamType3, PamType4, PamType5, PamType6)
VALUES (14, 'Supercheap Auto', null, null, 'Pizza Hut', 'KFC', 'Briscoes'), 
        (15, 'Supercheap Auto', 'Repco', null, 'Pizza Hut', 'KFC', null);

SELECT * FROM Deliveries;

SELECT * FROM Deliveries WHERE DeliverersID = 14 OR DeliverersID = 15;

UPDATE Deliveries
SET PamType6 = 'Briscoes'
WHERE DeliverersID = 15;

SELECT * FROM Deliveries WHERE DeliverersID = 14 OR DeliverersID = 15;

DELETE FROM Deliveries
WHERE DeliverersID = 14 OR DeliverersID = 15;

SELECT * FROM Deliveries;
GO


-- STORED PROCEDURE --
-- ======================================================================== --
SELECT * FROM Deliveries WHERE DeliveriesID = 13;
GO

CREATE PROCEDURE update_deliverydate (@DeliveriesID int, @isDelivered BIT, @DelDate DATETIME)
AS
UPDATE Deliveries
SET isDelivered = (@isDelivered), DelDate = (@DelDate)
WHERE DeliveriesID = (@DeliveriesID);
GO

DECLARE @_DateTime datetime2 = SYSDATETIME();

EXECUTE update_deliverydate 13, 1, @_DateTime;

SELECT * FROM Deliveries WHERE DeliveriesID = 13;
GO

DROP PROCEDURE update_deliverydate;
GO
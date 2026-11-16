-- SIMS database schema, reconstructed from the inline SQL in SIMS.BL.
-- Column types inferred from C# model properties. Not an original schema dump.
SET NOCOUNT ON;

IF OBJECT_ID(N'dbo.[AccessMatrix]', N'U') IS NULL
CREATE TABLE dbo.[AccessMatrix] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [ModuleName] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[AccessMatrixDetails]', N'U') IS NULL
CREATE TABLE dbo.[AccessMatrixDetails] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [AccessMatrixId] int NULL DEFAULT 0,
    [IsCreate] bit NOT NULL DEFAULT 0,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [IsDetails] bit NOT NULL DEFAULT 0,
    [IsEdit] bit NOT NULL DEFAULT 0,
    [IsExport] bit NOT NULL DEFAULT 0,
    [IsIndex] bit NOT NULL DEFAULT 0,
    [IsRowDeleted] bit NOT NULL DEFAULT 0,
    [IsSearch] bit NOT NULL DEFAULT 0,
    [IsTally] bit NOT NULL DEFAULT 0,
    [IsUpdate] bit NOT NULL DEFAULT 0,
    [UserType] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Attendance]', N'U') IS NULL
CREATE TABLE dbo.[Attendance] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Date] datetime NULL,
    [Department] nvarchar(max) NULL,
    [EnteringTime] datetime NULL,
    [InTime] datetime NULL,
    [isDeleted] bit NOT NULL DEFAULT 0,
    [Leavingtime] datetime NULL,
    [OutTime] datetime NULL,
    [Reason] nvarchar(max) NULL,
    [Staffid] int NULL DEFAULT 0,
    [Status] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Categories]', N'U') IS NULL
CREATE TABLE dbo.[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Discription] nvarchar(max) NULL,
    [ImagePath] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Name] nvarchar(max) NULL,
    [Thumbnail] varbinary(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Cheque]', N'U') IS NULL
CREATE TABLE dbo.[Cheque] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Amount] decimal(18,2) NULL,
    [BankName] nvarchar(max) NULL,
    [ChequeDate] datetime NULL,
    [ChequeNo] nvarchar(max) NULL,
    [ClearingDate] datetime NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [PartyName] nvarchar(max) NULL,
    [Remark] nvarchar(max) NULL,
    [Status] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Customer]', N'U') IS NULL
CREATE TABLE dbo.[Customer] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [AccountNo] nvarchar(max) NULL,
    [Address] nvarchar(max) NULL,
    [BankName] nvarchar(max) NULL,
    [Branch] nvarchar(max) NULL,
    [ContactPerson] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Gstno] nvarchar(max) NULL,
    [IFSC] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Location] nvarchar(max) NULL,
    [Mobile] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [SalesOrderTarget] int NULL DEFAULT 0,
    [StaffId] int NULL DEFAULT 0,
    [State] nvarchar(max) NULL,
    [Vendercode] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Department]', N'U') IS NULL
CREATE TABLE dbo.[Department] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Department] nvarchar(200) NULL,
    [isDeleted] bit NOT NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[Expense]', N'U') IS NULL
CREATE TABLE dbo.[Expense] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Expense] nvarchar(max) NULL,
    [Frequency] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[ExpenseReport]', N'U') IS NULL
CREATE TABLE dbo.[ExpenseReport] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Amount] nvarchar(max) NULL,
    [Destination] nvarchar(max) NULL,
    [Distance] nvarchar(max) NULL,
    [FoodCharge] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [ParkingCharge] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [StaffId] int NULL DEFAULT 0,
    [StartingPoint] nvarchar(max) NULL,
    [TimeStamp] datetime NULL,
    [TollOrFineCharge] nvarchar(max) NULL,
    [TollOrFineDetails] nvarchar(max) NULL,
    [TransportVehicle] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Gallery]', N'U') IS NULL
CREATE TABLE dbo.[Gallery] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [FileData] nvarchar(max) NULL,
    [FileName] nvarchar(max) NULL,
    [FileType] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Thumbnail] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Item]', N'U') IS NULL
CREATE TABLE dbo.[Item] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CategoryId] int NULL DEFAULT 0,
    [Imagepath] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Name] nvarchar(max) NULL,
    [Price] nvarchar(max) NULL,
    [SubCategoryId] int NULL DEFAULT 0,
    [UnitOfMeasurementId] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[ItemSize]', N'U') IS NULL
CREATE TABLE dbo.[ItemSize] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Size] nvarchar(max) NULL,
    [UnitOfMeasurementId] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[LeaveApply]', N'U') IS NULL
CREATE TABLE dbo.[LeaveApply] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ApprovedDate] datetime NULL,
    [Date] datetime NULL,
    [Isadminauthorised] bit NOT NULL DEFAULT 0,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Isfullday] bit NOT NULL DEFAULT 0,
    [Ismanagerauthorised] bit NOT NULL DEFAULT 0,
    [LeaveCategory] nvarchar(max) NULL,
    [Leavetype] nvarchar(max) NULL,
    [Reason] nvarchar(max) NULL,
    [Staffid] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[MaterialMovement]', N'U') IS NULL
CREATE TABLE dbo.[MaterialMovement] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Customerid] int NULL DEFAULT 0,
    [Invoiceamount] nvarchar(max) NULL,
    [Invoicedate] datetime NULL,
    [Invoiceno] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Itemid] int NULL DEFAULT 0,
    [Movementtype] nvarchar(max) NULL,
    [Quantity] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [Staffid] int NULL DEFAULT 0,
    [Timestamp] datetime NULL,
    [UnitId] int NULL
);
GO

IF OBJECT_ID(N'dbo.[MaterialMovementItemSizes]', N'U') IS NULL
CREATE TABLE dbo.[MaterialMovementItemSizes] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ItemId] int NULL DEFAULT 0,
    [MaterialMovementId] int NULL DEFAULT 0,
    [Size] nvarchar(200) NULL
);
GO

IF OBJECT_ID(N'dbo.[payment]', N'U') IS NULL
CREATE TABLE dbo.[payment] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Amount] int NULL DEFAULT 0,
    [DueDate] datetime NULL,
    [Expense] nvarchar(max) NULL,
    [Frequency] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Narration] nvarchar(max) NULL,
    [PaidDate] datetime NULL
);
GO

IF OBJECT_ID(N'dbo.[Place]', N'U') IS NULL
CREATE TABLE dbo.[Place] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Place] nvarchar(200) NULL
);
GO

IF OBJECT_ID(N'dbo.[ProductSize]', N'U') IS NULL
CREATE TABLE dbo.[ProductSize] (
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [ItemId] int NULL DEFAULT 0,
    [SizeID] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[Sales]', N'U') IS NULL
CREATE TABLE dbo.[Sales] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Date] datetime NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [MarketingExecutive] nvarchar(max) NULL,
    [ProductCategory] nvarchar(max) NULL,
    [SalesAmount] int NULL DEFAULT 0,
    [SalesReturnAmount] int NULL DEFAULT 0,
    [StaffId] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[SalesOrder]', N'U') IS NULL
CREATE TABLE dbo.[SalesOrder] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CustomerId] int NULL DEFAULT 0,
    [Isaddedtotally] bit NOT NULL DEFAULT 0,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Paymentmode] nvarchar(max) NULL,
    [StaffId] int NULL DEFAULT 0,
    [TimeStamp] datetime NULL,
    [TotalOrderValue] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[SalesOrderDetails]', N'U') IS NULL
CREATE TABLE dbo.[SalesOrderDetails] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CategoryId] int NULL DEFAULT 0,
    [IsDeleted] bit NOT NULL DEFAULT 0,
    [ItemId] int NULL DEFAULT 0,
    [OrderValue] int NULL DEFAULT 0,
    [Quantity] int NULL DEFAULT 0,
    [SalesOrderId] int NULL DEFAULT 0,
    [SizeId] int NULL DEFAULT 0,
    [SubCategoryId] int NULL DEFAULT 0
);
GO

IF OBJECT_ID(N'dbo.[SpinningProduction]', N'U') IS NULL
CREATE TABLE dbo.[SpinningProduction] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Broken] nvarchar(max) NULL,
    [BrokenPercentage] float NULL,
    [CircleDate] datetime NULL,
    [CircleIssued] nvarchar(max) NULL,
    [CircleSize] nvarchar(max) NULL,
    [Date] datetime NULL,
    [Discrepancy] nvarchar(max) NULL,
    [FGWeight] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [ItemName] nvarchar(max) NULL,
    [NetBroken] nvarchar(max) NULL,
    [NetBrokenPercentage] float NULL,
    [ProductFromBroken] nvarchar(max) NULL,
    [ProductionFromBroken] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [StaffId] int NULL DEFAULT 0,
    [Trimming] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[SubCategories]', N'U') IS NULL
CREATE TABLE dbo.[SubCategories] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [CategoriesId] int NULL DEFAULT 0,
    [Discription] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Name] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[Trivia]', N'U') IS NULL
CREATE TABLE dbo.[Trivia] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Contents] nvarchar(max) NULL,
    [Image] varbinary(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Point1] nvarchar(max) NULL,
    [Point10] nvarchar(max) NULL,
    [Point2] nvarchar(max) NULL,
    [Point3] nvarchar(max) NULL,
    [Point4] nvarchar(max) NULL,
    [Point5] nvarchar(max) NULL,
    [Point6] nvarchar(max) NULL,
    [Point7] nvarchar(max) NULL,
    [Point8] nvarchar(max) NULL,
    [Point9] nvarchar(max) NULL,
    [SubContents] nvarchar(max) NULL,
    [TabName] nvarchar(max) NULL,
    [Title] nvarchar(max) NULL,
    [Type] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[UnitOfMeasurement]', N'U') IS NULL
CREATE TABLE dbo.[UnitOfMeasurement] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [IsDeleted] bit NOT NULL DEFAULT 0,
    [UnitOfMeasurement] nvarchar(200) NULL
);
GO

IF OBJECT_ID(N'dbo.[Users]', N'U') IS NULL
CREATE TABLE dbo.[Users] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Address] nvarchar(max) NULL,
    [Adhar] nvarchar(max) NULL,
    [Bankaccountno] nvarchar(max) NULL,
    [Bankname] nvarchar(max) NULL,
    [Branch] nvarchar(max) NULL,
    [Department] nvarchar(max) NULL,
    [Dob] datetime NULL,
    [Doj] datetime NULL,
    [Dol] datetime NULL,
    [Email] nvarchar(256) NULL,
    [EnteringTime] datetime NULL,
    [Esino] nvarchar(max) NULL,
    [Ifsc] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [LeavingTime] datetime NULL,
    [Location] nvarchar(max) NULL,
    [Mobile] nvarchar(max) NULL,
    [Name] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [Pfno] nvarchar(max) NULL,
    [Photo] varbinary(max) NULL,
    [SalesTarget] int NULL DEFAULT 0,
    [State] nvarchar(max) NULL,
    [Target] int NULL DEFAULT 0,
    [UserType] nvarchar(100) NULL
);
GO

IF OBJECT_ID(N'dbo.[VehicleLog]', N'U') IS NULL
CREATE TABLE dbo.[VehicleLog] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Amount] nvarchar(max) NULL,
    [Destination] nvarchar(max) NULL,
    [EndReading] nvarchar(max) NULL,
    [FuelFilled] nvarchar(max) NULL,
    [FuelQuantity] nvarchar(max) NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [Purpose] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [StaffId] int NULL DEFAULT 0,
    [StartingPoint] nvarchar(max) NULL,
    [StartReading] nvarchar(max) NULL,
    [Timestamp] datetime NULL,
    [VehicleNo] nvarchar(max) NULL,
    [Voucher] nvarchar(max) NULL
);
GO

IF OBJECT_ID(N'dbo.[VehicleNo]', N'U') IS NULL
CREATE TABLE dbo.[VehicleNo] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [isDeleted] bit NOT NULL DEFAULT 0,
    [VehicleNo] nvarchar(200) NULL
);
GO

IF OBJECT_ID(N'dbo.[VisitLog]', N'U') IS NULL
CREATE TABLE dbo.[VisitLog] (
    [Id] int IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [Amount] nvarchar(max) NULL,
    [CustomerId] int NULL DEFAULT 0,
    [Datetime] datetime NULL,
    [Isdeleted] bit NOT NULL DEFAULT 0,
    [OrderStatus] nvarchar(max) NULL,
    [Ordervalue] nvarchar(max) NULL,
    [PaymentMode] nvarchar(max) NULL,
    [Reasonfornoorder] nvarchar(max) NULL,
    [Reasonfornopayment] nvarchar(max) NULL,
    [Remarks] nvarchar(max) NULL,
    [StaffId] int NULL DEFAULT 0
);
GO

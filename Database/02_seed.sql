-- Minimal seed data so the portal is usable locally.
-- Login: admin@sims.local / admin123   (the app stores passwords in plain text)
SET NOCOUNT ON;

IF NOT EXISTS (SELECT 1 FROM dbo.Department WHERE Department = 'Admin')
    INSERT dbo.Department (Department, isDeleted) VALUES ('Admin', 0), ('Marketing', 0), ('Operations', 0), ('Accounts', 0);

IF NOT EXISTS (SELECT 1 FROM dbo.Users WHERE Email = 'admin@sims.local')
    INSERT dbo.Users (Name, Address, Location, State, Dob, Mobile, Doj, Adhar, Esino, Pfno, Bankname,
                      Bankaccountno, Branch, Ifsc, Email, Password, UserType, Department,
                      EnteringTime, LeavingTime, Target, SalesTarget, Isdeleted)
    VALUES ('Local Admin', '-', '-', '-', '1990-01-01', '0000000000', '2020-01-01', '-', '-', '-', '-',
            '-', '-', '-', 'admin@sims.local', 'admin123', 'Admin', 'Admin',
            '2020-01-01 09:00', '2020-01-01 18:00', 0, 0, 0);

-- One AccessMatrix row per module name the controllers look up.
DECLARE @modules TABLE (ModuleName nvarchar(100));
INSERT @modules VALUES ('Attendance'),('Category'),('Cheque'),('Customer'),('Department'),('ExpenseReport'),
    ('Gallery'),('Item'),('ItemSize'),('LeaveApply'),('LeaveApplyApprove'),('MaterialMovement'),('Payment'),
    ('PaymentExpense'),('Place'),('Sales'),('SalesOrder'),('SpinningProduction'),('SubCategory'),
    ('UnitOfMeasurement'),('Users'),('VehicleLog'),('VehicleNo'),('VisitLog');

INSERT dbo.AccessMatrix (ModuleName, Isdeleted)
SELECT m.ModuleName, 0 FROM @modules m
WHERE NOT EXISTS (SELECT 1 FROM dbo.AccessMatrix a WHERE a.ModuleName = m.ModuleName);

-- Full permissions for the Admin role.
INSERT dbo.AccessMatrixDetails (AccessMatrixId, UserType, IsIndex, IsCreate, IsEdit, IsDetails, IsTally,
                                IsUpdate, IsSearch, IsExport, Isdeleted, IsRowDeleted)
SELECT a.Id, 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0
FROM dbo.AccessMatrix a
WHERE NOT EXISTS (SELECT 1 FROM dbo.AccessMatrixDetails d WHERE d.AccessMatrixId = a.Id AND d.UserType = 'Admin');
GO

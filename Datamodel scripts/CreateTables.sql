USE [DB_A2CDED_core];

CREATE TABLE [core].[People](
	[PersonId] INT PRIMARY KEY IDENTITY(1,1),
	[FirstName] [nchar](20) NULL,
	[MiddleName] [nchar](20) NULL,
	[LastName] [nchar](20) NULL,
	[LastName2] [nchar](20) NULL,
	[AliasName] [nchar](40) NULL,
	[PositionID] INT,
	[ManagerID] INT,
	[Salary] float,
	[SalaryPeriod] INT,
	[EmergencyContactPersonName] [nchar](50) NULL,
	[EmergencyContactPersonRelation] [nchar](50) NULL,
	[EmergencyContactPersonPhone] [nchar](20) NULL,
	[CommunicationID] INT,
	[FacilityID] INT,
	[AddressID] INT,
	[PersonTypeId] INT,
	[DepartmentId] INT
)

CREATE TABLE [core].[SalaryPeriod](
	[Id] INT PRIMARY KEY IDENTITY(1,1),
	[Period] nvarchar(30)
)

CREATE TABLE [core].[PersonType](
	[TypeId] INT PRIMARY KEY IDENTITY(1,1),
	[TypeName] nvarchar(30)
)

CREATE TABLE [core].[Department](
	[DeptId] INT PRIMARY KEY IDENTITY(1,1),
	[DeptName] varchar(100)
)

CREATE TABLE [core].[OrgPositions](
	[PositionID] INT PRIMARY KEY IDENTITY(1,1),
	[PositionName] varchar(50)
)

CREATE TABLE [core].[Address](
	[AddressID] INT PRIMARY KEY IDENTITY(1,1),
	[Address1] [nchar](30) NULL,
	[Address2] [nchar](30) NULL,
	[BarrioBoroughSub] [nchar](30) NULL,
	[City] [nchar](30) NULL,
	[State] [nchar](30) NULL,
	[Country] [nchar](30) NULL,
	[PostalCode] [nchar](10) NULL
)

CREATE TABLE [core].[Communication](
	[CommunicationID] INT PRIMARY KEY IDENTITY(1,1),
	[Phone] [nchar](20) NULL,
	[PhoneType] [nchar](20) NULL,
	[email] [nchar](50) NULL,
	[SoftName] [nchar](30) NULL,
	[WhatsApp] [nchar](20) NULL,
	[FB] [nchar](50) NULL,
	[LinkedIn] [nchar](50) NULL
)


CREATE TABLE [core].[Facility](
	[FacilityID] INT PRIMARY KEY IDENTITY(1,1),
	[FacilityName] varchar(100),
	[BusinessUnit] [nchar](30) NULL,
	[CreationDate] date,
	[ActivationDate] Date,
	[InactiveDate] Date,
	[DBAName] [nchar](30) NULL,
	[Contact] [nchar](30) NULL,
	[AddressID] INT,
	[OrgID] INT
)


CREATE TABLE [core].[Organization](
	[OrgID] INT PRIMARY KEY IDENTITY(1,1),
	[OrgName1] [nchar](50) NULL,
	[OrgName2] [nchar](50) NULL,
	[OrgAlias] [nchar](50) NULL,
	[EIN] [nchar](20) NULL,
	[LegalName] [nchar](50) NULL,
	[Contact] [nchar](50) NULL
)

CREATE TABLE [core].[Agency](
	[AgencyId] INT PRIMARY KEY IDENTITY(1,1),
	[AgencyNumber] varchar(20),
	[ContactName] varchar(100),
	[ContactInfo] varchar(100),
	[AddressId] INT,
	[Website] text,
	[UserName] varchar(20),
	[Password] varchar(30),
	[AgencyLevel] varchar(30),
	[CreatedBy] varchar(50),
	[CreationDate] datetime,
	[ModificationDate] datetime,
	[FacilityID] INT
)
	

--Foreign Key s on People Table
ALTER TABLE [core].[People] ADD FOREIGN KEY([SalaryPeriod])
REFERENCES [core].[SalaryPeriod] ([Id])

ALTER TABLE [core].[People] ADD FOREIGN KEY([AddressID])
REFERENCES [core].[Address] ([AddressID])

ALTER TABLE [core].[People] ADD FOREIGN KEY([CommunicationID])
REFERENCES [core].[Communication] ([CommunicationID])

ALTER TABLE [core].[People] ADD FOREIGN KEY([FacilityID])
REFERENCES [core].[Facility] ([FacilityID])

ALTER TABLE [core].[People] ADD FOREIGN KEY([PersonTypeId])
REFERENCES [core].[PersonType] ([TypeId])

ALTER TABLE [core].[People] ADD FOREIGN KEY([DepartmentId])
REFERENCES [core].[Department] ([DeptId])

ALTER TABLE [core].[People] ADD FOREIGN KEY([PositionID])
REFERENCES [core].[OrgPositions] ([PositionID])

ALTER TABLE [core].[People] ADD FOREIGN KEY([ManagerID])
REFERENCES [core].[People] ([PersonId])

--Foreign Key s on Facility Table
ALTER TABLE [core].[Facility] ADD FOREIGN KEY([AddressID])
REFERENCES [core].[Address] ([AddressID])

ALTER TABLE [core].[Facility] ADD FOREIGN KEY([OrgID])
REFERENCES [core].[Organization] ([OrgID])

--Foreign Key s on Agency Table
ALTER TABLE [core].[Agency] ADD FOREIGN KEY([AddressID])
REFERENCES [core].[Address] ([AddressID])

ALTER TABLE [core].[Agency] ADD FOREIGN KEY([FacilityID])
REFERENCES [core].[Facility] ([FacilityID])

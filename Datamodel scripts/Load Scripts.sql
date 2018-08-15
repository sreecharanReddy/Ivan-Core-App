INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro Inc.','660261149')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Santurce Inc.','660402798')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Bayamon Inc.','660274463')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Caparra Inc.','660362608')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Carolina Inc.','660372477')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Arecibo Inc.','660380121')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Mayaguez Inc.','660349107')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Ponce Inc.','660325467')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Caguas Inc.','660402735')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Fajardo Inc.','660499213')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Catano Inc.','660791038')
INSERT INTO core.Organization(OrgName1,EIN) VALUES('Refricentro de Humacao Inc.','660-84-1504')


INSERT INTO core.OrgPositions VALUES('Manager')
INSERT INTO core.OrgPositions VALUES('Employee')

INSERT INTO core.Department VALUES('Sales')
INSERT INTO core.Department VALUES('Manufacturing')

INSERT INTO core.PersonType VALUES('Employee')
INSERT INTO core.PersonType VALUES('Vendor')

INSERT INTO core.Address VALUES('ABC','ABC','ABC','NY','NY','US','123')
INSERT INTO core.Address VALUES('XYZ','XYZ','XYZ','NY','NY','US','456')

INSERT INTO core.Communication VALUES('123456','Home','ABC','ABC','ABC','ABC','ABC')
INSERT INTO core.Communication VALUES('345678','Home','XYZ','XYZ','XYZ','XYZ','XYZ')

INSERT INTO core.Facility([FacilityName],[BusinessUnit],AddressId,OrgId) VALUES('GRY','CBU',2,1)
INSERT INTO core.Facility([FacilityName],[BusinessUnit],AddressId,OrgId) VALUES('HR','EBU',1,2)

INSERT INTO [core].[People](FirstName,MiddleName,CommunicationID,FacilityID,AddressID,PersonTypeId,DepartmentId) VALUES('Charan','Sri',1,7,1,1,1)
INSERT INTO [core].[People](FirstName,MiddleName,CommunicationID,FacilityID,AddressID,PersonTypeId,DepartmentId) VALUES('Ivan','Garcia',2,8,2,2,2)

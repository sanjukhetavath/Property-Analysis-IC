
question 1.a
Select OwnerProperty.PropertyId, Property.Name from Property
INNER JOIN OwnerProperty ON Property.Id = OwnerProperty.PropertyId
where OwnerId = '1426'

question 1.b

select OwnerProperty.PropertyId, PropertyHomeValue.Value, PropertyHomeValue.IsActive from Property
INNER JOIN OwnerProperty ON Property.Id = OwnerProperty.PropertyId
INNER JOIN PropertyHomeValue On OwnerProperty.PropertyId = PropertyHomeValue.PropertyId
where OwnerId = '1426' 

question 1.c
select PaymentAmount, PaymentFrequencyId, PropertyID, StartDate, EndDate from dbo.TenantProperty where PropertyId in ( Select OwnerProperty.PropertyId from Property
INNER JOIN OwnerProperty ON Property.Id = OwnerProperty.PropertyId
where OwnerId = '1426')



Question 1.d

select * from Job WHERE JobStatusId = 1

Question 1.e

Select OwnerProperty.PropertyId, 
       Property.Name, 
	   Person.FirstName, 
	   Person.LastName from Property
       INNER JOIN OwnerProperty ON Property.Id = OwnerProperty.PropertyId
       INNER JOIN Person ON OwnerProperty.PropertyId = Person.Id
       where OwnerId = '1426'

select * from Property where Ownerid = '1426'

SELECT p.[Name] AS PropertyName ,
       Person.FirstName AS TenantFirstName , 
	   Person.LastName AS TenantLastName , 
	   prp.Amount AS RentalPaymentAmount , 
	   trt.[Name] AS RentalPaymentFrequency FROM OwnerProperty AS op 
	   INNER JOIN Property AS p ON op.PropertyId=p.Id
	   INNER JOIN TenantProperty AS tp ON p.Id=tp.PropertyId 
	   INNER JOIN Tenant AS t ON tp.TenantId=t.Id 
	   INNER JOIN Person ON t.Id=Person.Id 
	   INNER JOIN PropertyRentalPayment AS prp ON p.Id=prp.PropertyId
       INNER JOIN TargetRentType AS trt ON prp.FrequencyType=trt.Id
	   WHERE op.OwnerId=1426


select * from Property
select * from OwnerProperty
select * from TenantProperty
select * from Tenant
select * from Person
select * from PropertyRentalPayment
select * from TargetRentType
use DealershipDB
go


delete Cars
go 
insert Cars (Model, ModelYear, Color, DatePurchased, PricePurchased, DateSold, PriceSold, isSold,CusFirstName,CusLastName,CusPhoneNum)
select 'Trailblazer', 2025, 'gray', '2024-08-01', 18000, NULL, NULL, NULL, NULL, NULL, NULL
union select 'Trailblazer', 2024, 'black', '2024-01-02', 18000, NULL, NULL, NULL, NULL, NULL, NULL
union select 'Trailblazer', 2023, 'blue', '2022-10-01', 17500, '2023-06-01', 20300, 0,'Abe','Katz', '8258769580'
union select 'Trailblazer', 2022, 'white', '2021-11-01', 17000, '2022-05-10', 30000, 1 , 'Sim', 'Sabel', '7849685512'
union select 'Trax', 2025, 'gray', '2024-08-01', 17000, '2024-08-15', 28000, 1, 'Chang', 'Chi', '7418574789'
union select 'Trax', 2020, 'red', '2020-04-01', 16000, '2021-03-01', 21300, 0 , 'Dave', 'Rabin', '7368758888'
union select 'Silveradoo', 2024, 'gray', '2024-02-01', 24000, '2024-05-10', 35000, 1, 'Uri','Pomera' , '7087779896'
union select 'Silveradoo', 2024, 'red', '2023-10-20', 24000, '2024-06-12', 37000, 1 , 'Bure', 'Stro', '2125556688'
union select 'Silveradoo', 2020, 'white', '2020-03-01', 23000, NULL, NULL, NULL, NULL, NULL, NULL 
union select 'Malibu', 2024, 'gray', '2023-09-01', 15000, '2024-01-23', 18200, 0, 'Jake', 'Sulivan', '8785596863'
union select 'Corvette', 2025, 'orange', '2024-08-01', 45000, NULL, NULL, NULL, NULL, NULL, NULL  
union select 'Camaro', 2022, 'gray', '2022-02-01', 40000, '2022-10-08', 60000, 1, 'Pete', 'Lange', '8475542873'

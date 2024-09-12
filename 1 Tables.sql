use DealershipDB
go
drop table if exists Cars

create table dbo.Cars
(
    CarId int identity primary key,
    Model varchar(50) not null constraint ck_Model_cannot_be_blank check (Model > ''),
    ModelYear int not null,
    Color varchar(15) not null constraint ck_Color_cannot_be_blank check (Color > ''),
    DatePurchased date not null constraint ck_DatePurchased_cannot_be_in_the_future check(DatePurchased <= convert(date,getdate())),
    PricePurchased int not null constraint ck_PricePurchased_must_be_greater_then_10000 check(PricePurchased > 10000),
    DateSold date,
    PriceSold int constraint ck_PriceSold_must_be_greater_then_10000 check (PriceSold > 10000),
    isSold bit,
    CusFirstName varchar(50) constraint ck_CusFirstName_cannot_be_blank check(CusFirstName > ''),
    CusLastName varchar(50) constraint ck_CusLastName_cannot_be_blank check(CusLastName > ''),
    CusPhoneNum varchar(10) constraint ck_CusPhoneNum_must_be_10_num_only_and_not_start_with_0 check (CusPhoneNum like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
 
    constraint ck_ModelYear_can_only_be_from_Year_purchased_or_year_after 
        check(ModelYear between year(DatePurchased) and year(DatePurchased) + 1),
    constraint ck_Cannot_sell_car_5_years_after_model_year
        check (ModelYear > year(DateSold) - 5),
    constraint ck_Car_sold_needs_to_be_sold_at_least_for_20000_dollars
        check ((isSold = 1 and PriceSold > 20000) or isSold = 0),
    constraint ck_All_fields_have_to_be_filled_out_when_car_is_sold
        check ((DateSold is not null and PriceSold is not null and isSold is not null and CusFirstName is not null and CusLastName is not null and CusPhoneNum is not null)
             or (DateSold is null and PriceSold is null and isSold is null and CusFirstName is null and CusLastName is null and CusPhoneNum is null))
);


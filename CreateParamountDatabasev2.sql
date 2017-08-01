create Database ParamountSIlver;
use ParamountSIlver;


Create table Members(
UserID varchar(50) Not null,
Name varchar(50) Not null,
Credit_Card_Number varchar(50) Not null,
ExpiryDate DateTime Not null,
PhoneNumber int Not null,
Primary key (UserID));

CREATE TABLE Movies(
MovieID nvarchar(50) PRIMARY KEY, 
movieName nvarchar(50),
movieDescription nvarchar(50),
movieCast nvarchar(50),
Duration Decimal(2,1),
Genre nvarchar(50), 
ThumbNailImg nvarchar(50),
ImgUrl nvarchar(50)
);

Create table Schedule(
ScheduleID int Identity(1,1) Primary key,
MovieID nvarchar(50) Not null,
ScreenID nvarchar(50) Not null,
MovieDate DateTime ,
ShowNumber varchar(20) Not null,
Foreign key(MovieID) References Movies(MovieID)
);


Create table Booking(
BookingID int identity(1,1) Not null,
ScheduleID int Not null,
UserID varchar(50) Not null,
NumberofSeats int Not null,
PaymentVia varchar(20) Not null,
Selected_Seats varchar(50) not null,
Total decimal(7,2) Not null,
Primary key (BookingID),
Foreign key(UserID) References Members(UserID),
Foreign key(ScheduleID) References Schedule(ScheduleID));



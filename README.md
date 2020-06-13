# E-Passport
Overview


2.1	System Description


The e-Passport should support the following users.
•	Administrator (A)
•	User (U)

The common functional requirements are explained below.

2.1.1	Authentication

Any end-user should be authenticated using a unique login ID and password.

2.1.2	Authorization

The operations supported and allowed would be based on the user type. For example, Administrator has the rights to add or modify appointment schedule details.

Login

Perform Administrative tasks & Logout
 

e-Passport System
 
Login


Perform User tasks & Logout


Passport/User details
 

e-Passport Database

2.2	Environment
 
The system will be developed on a Windows 10 machine using ASP.NET, C# and SQL Server 2014.
•	Intel hardware machine (PC i5, 4 GB RAM, 500 GB HDD)
•	Windows 10
•	.NET Framework 4.6 or higher
•	IIS 7.0 or higher
•	Visual Studio 2017 or higher
•	Database – SQL Server 2014 or higher

3.	Sub-system Details

3.1	Administrator

The Administrative User should be able to do the following operations once he has logged in with his unique user id and password
•	Add Passport Office Details
•	Add Appointment Schedule Details
•	Modify Appointment Schedule Details
•	View User Information
•	View User Documents
•	Update Passport Status (Issue/Pending/Cancel upon verification)
•	Quit Session

Add Passport Office Details: 

As part of this operation, the admin should have the ability to add passport office details into the system and get confirmation on successful entry. OfficeID is auto- generated.

Passport Office Details include:

•	OfficeID
•	OfficeName
•	Jurisdiction
•	Address
•	PhoneNumber

NOTE: More fields for passport office details can be added depending on requirement.

Add Appointment Schedule Details:

As part of this operation, the admin should have the ability to add appointment schedule details into the system and get confirmation on successful entry. MonthID is auto-generated.

Appointment Schedule Details include:

•	MonthID
•	MonthName
•	AvailableDays
•	TimeSlots

Modify Appointment Schedule Details:

As part of this operation, the admin should have the ability to edit appointment schedule details in the system by picking MonthID from the list.

Appointment Schedule Details include:

•	AvailableDays
•	TimeSlots
 

View User Information: 

As part of this operation, the admin should have the ability to view user information who has registered to the system.

View Documents: 

As part of this operation, the admin should have the ability to view user documents in the system by picking up ApplicantID.

Update Passport Status:

As part of this operation, the admin should have the ability to update the status of user passport upon verification. Status can be issued/pending/cancel.

Quit Session: 

As part of this operation, admin should have the ability to quit the session completely.

3.2	User


The User should be able to do the following operations once he has logged in with his unique LoginID and password.

•	Fill and Submit Application Form
•	View/Print Application Form
•	Upload Supporting Documents
•	Request for Appointment
•	Change Appointment
•	Quit Session

User Registration

An unregistered user should be able to register into the system by selecting the passport office that falls under his/her jurisdiction with the following details.

Registration details include (all mandatory):

•	FirstName
•	LastName
•	DOB
•	Gender
•	EmailID
•	Password
•	PhoneNo

When the registration is complete, a LoginID (numeric) will be auto-generated and displayed to the user.
(Refer to section 4. Data Organization –> Table 1: RegistrationDetails) Fill Application Form
A registered user should be able to fill and submit the application form into the system with the following details.


Application Form details include (all mandatory):

Applicants Details:
•	FirstName
•	LastName
•	DOB
•	PlaceOfBirth
•	Gender
•	State
•	District
•	MaritalStatus
•	PAN
•	EmploymentType
•	EducationalQualification

Family Details:

•	Fathers Name
•	Mothers Name

Address Details:

•	HouseNo
•	Street Name
•	City
•	State
•	District
•	PINCode
•	TelephoneNumber
•	EmailID

Reference Details:

•	Reference Name
•	Address
•	Telephone Number

Note: Application Form details provided here are indicative. Extra details can be added if required.

When the application form filling is complete, an ApplicantID (numeric) will be auto-generated and displayed to the user.

View/Print Application Form:

As part of this operation, the user should have the ability to get all application form details by using ApplicantID and print the same.

Upload Supporting Documents:

As part of this operation, the user should have the ability to upload all supporting documents by using ApplicantID.

Request for Appointment: 

As part of this operation, the user should be able to take online appointment based on date and timeslots available.

Change Appointment:

As part of this operation, the user should be able to change appointment schedule.

Quit Session: As part of this operation, the user should have the ability to quit the session completely.

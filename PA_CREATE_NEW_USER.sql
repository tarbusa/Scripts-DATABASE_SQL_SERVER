CREATE PROCEDURE PA_CREATE_NEW_USER(
	@pi_firstName varchar(150),
	@pi_lastName varchar(150),
	@pi_userName varchar(150),
	@pi_email varchar(150),
	@pi_pass varchar (256)
)
AS
BEGIN
	INSERT INTO [dbo].[USUARIO]
	([firstName],[lastName],[userName],[email],[pass])
	VALUES
	(@pi_firstName, @pi_lastName, @pi_userName, @pi_email, @pi_pass)
END
CREATE PROCEDURE PA_GET_USER_AUTHENTICATION(
	@pi_user varchar(150),
	@pi_pass varchar(256)
)
AS
BEGIN
	SELECT
		U.idUsuario AS IdUsuario,
		U.firstName AS FirstName,
		U.lastName AS LastName,
		U.userName AS UserName,
		U.email AS Email
	FROM 
		[dbo].[USUARIO] U WITH(NOLOCK)
	WHERE
		(U.userName = @pi_user or U.email = @pi_user) AND
		(U.pass = @pi_pass)
END
with cte5 as (
select * from dbo.cales where UserID in (1, 2, 3)
)

select SaleID from cte5;
--select UserID from cte5;

/*create function dbo.mub2(@UserID int)
returns int
as
begin

return @UserID*2
end;
*/
-- Create the function in a user-defined schema (e.g., dbo)
CREATE FUNCTION dbo.mub2(@UserID INT)
RETURNS INT
AS
BEGIN
    RETURN @UserID * 2;
END;


--select dbo.mub2(UserID) as sm, SaleAmount from cales;
SELECT dbo.mub2(UserID) AS sm, SaleAmount
FROM cales;

create or replace PROCEDURE donors_id (INPUT_D_ID IN NUMBER, OUTPUT_D_ID OUT NUMBER) AS 
BEGIN
  SELECT donor_id INTO OUTPUT_D_ID FROM Donors WHERE donor_id = INPUT_D_ID;
END donors_id;
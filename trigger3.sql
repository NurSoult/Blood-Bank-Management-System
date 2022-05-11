create or replace trigger blood_received
before update on Donations
for each row
when(NEW.donor_id != OLD.donor_id)
declare 
  
begin
    dbms_output.put_line('Blood bag given to the patient');
end;
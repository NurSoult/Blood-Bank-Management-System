create or replace trigger loc_change
before update on Donors
for each row
when(NEW.address_id != OLD.address_id)
declare 
  
begin
    dbms_output.put_line('Old location : '|| :OLD.address_id);
    dbms_output.put_line('New location : '|| :NEW.address_id);
end;



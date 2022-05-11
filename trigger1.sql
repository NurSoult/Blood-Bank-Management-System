create or replace trigger desease_trg
before insert on Donors
for each row
when(NEW.donor_id > 0)
begin
    if :NEW.MEDICAL_CONDITION = 1 then
        dbms_output.put_line('donor with disease!');
        delete from Donors where donor_id = :NEW.donor_id;
    end if;
end;




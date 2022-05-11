create or replace procedure DeleteStaff(staf_id in Number)
is begin
    delete from Staff where staff_id = staf_id;
end;
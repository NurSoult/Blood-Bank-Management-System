create or replace procedure DeleteDonor(don_id in Number)

is begin
    delete from Donors where donor_id = don_id;
end;


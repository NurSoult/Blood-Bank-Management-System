Create or replace procedure search_donation(d_date in date) is
cursor c1 is
    SELECT * 
    from Donations;
begin
    for d_d in c1
      loop
      if d_d.donation_date = d_date then
      dbms_output.put_line(d_d.donation_id);
      end if;
      end loop;
end;

set serveroutput on;
begin
    search_donation(22.05.2021);
end;
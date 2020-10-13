with Ada.Text_IO; use Ada.Text_IO;

procedure hello is
X : Integer := 10;

begin
   -- if X > 5 then
   --    Put(Integer'Image(X));
   -- end if;
   -- Put_Line("");
   -- Ada.Text_IO.Put_Line("Hello, ADA!");

   for I in 1..6 loop
      Put(Integer'Image(I));
   end loop;
end hello;
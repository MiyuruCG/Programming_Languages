with Ada.Text_IO; use Ada.Text_IO;

procedure hello is
X : Integer := 10;
type MyInt is range 1 .. 50;
type MyIntArray is array(1 .. 6) of MyInt;
Arr : MyIntArray := (2, 3, 1, 6, 4, 9);

begin
   if X > 5 then
      Put(Integer'Image(X));
   end if;
   Put_Line("");
   Ada.Text_IO.Put_Line("Hello, ADA!");

   for I in 1..6 loop
      Put(Integer'Image(I));
   end loop;
end hello;
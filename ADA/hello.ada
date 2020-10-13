with Ada.Text_IO; use Ada.Text_IO;

procedure Hello is
X : Integer := 10;

begin
   if X > 5 then
      Put(Integer'Image(X));
   end if;
   Put_Line("");
   Ada.Text_IO.Put_Line("Hello, ADA!");
end Hello;
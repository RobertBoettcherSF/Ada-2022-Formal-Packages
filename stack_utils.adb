pragma Ada_2022;

package body Stack_Utils is

   procedure Swap_Top_Two (S : in out Stack_Ops.Stack) is
      A, B : Stack_Ops.Elem;
   begin
      Stack_Ops.Pop (S, A);
      Stack_Ops.Pop (S, B);
      Stack_Ops.Push (S, A);
      Stack_Ops.Push (S, B);
   end Swap_Top_Two;

end Stack_Utils;

pragma Ada_2022;

with Stacks;

generic
   with package Stack_Ops is new Stacks (<>);
package Stack_Utils is

   --  Requires Length (S) >= 2. Swaps the two most recently pushed items.
   procedure Swap_Top_Two (S : in out Stack_Ops.Stack)
     with Pre => Stack_Ops.Length (S) >= 2;

   function Length (S : Stack_Ops.Stack) return Natural
     renames Stack_Ops.Length;

end Stack_Utils;

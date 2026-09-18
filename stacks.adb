pragma Ada_2022;

package body Stacks is

   procedure Clear (S : in out Stack) is
   begin
      S.Top := 0;
   end Clear;

   procedure Push (S : in out Stack; Item : Elem) is
   begin
      S.Top := S.Top + 1;
      S.Data (S.Top) := Item;
   end Push;

   procedure Pop (S : in out Stack; Item : out Elem) is
   begin
      Item := S.Data (S.Top);
      S.Top := S.Top - 1;
   end Pop;

   function Length (S : Stack) return Natural is
   begin
      return S.Top;
   end Length;

end Stacks;

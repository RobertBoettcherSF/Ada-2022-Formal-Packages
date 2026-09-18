--  Signature: a minimal stack abstraction as a generic package.
pragma Ada_2022;

generic
   type Elem is private;
package Stacks is

   type Stack is limited private;

   procedure Clear (S : in out Stack);
   procedure Push (S : in out Stack; Item : Elem);
   procedure Pop (S : in out Stack; Item : out Elem);
   function Length (S : Stack) return Natural;

   Capacity : constant := 8;

private

   type Store is array (1 .. Capacity) of Elem;
   type Stack is record
      Data : Store;
      Top  : Natural := 0;
   end record;

end Stacks;

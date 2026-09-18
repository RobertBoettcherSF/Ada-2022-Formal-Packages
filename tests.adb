pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Stacks;
with Stack_Utils;

procedure Tests is
   package Int_Stacks is new Stacks (Elem => Integer);
   package Int_Utils is new Stack_Utils (Stack_Ops => Int_Stacks);

   S : Int_Stacks.Stack;
   X : Integer;
begin
   Int_Stacks.Clear (S);
   Int_Stacks.Push (S, 1);
   Int_Stacks.Push (S, 2);
   Int_Stacks.Push (S, 3);
   Assert (Int_Utils.Length (S) = 3);
   Put_Line ("PASS Stacks + formal package Length rename");

   Int_Utils.Swap_Top_Two (S);
   Int_Stacks.Pop (S, X);
   Assert (X = 2);
   Int_Stacks.Pop (S, X);
   Assert (X = 3);
   Int_Stacks.Pop (S, X);
   Assert (X = 1);
   Put_Line ("PASS formal package Swap_Top_Two");

   Put_Line ("All Formal Packages topic tests passed.");
end Tests;

Inductive B: Type :=
| true
| false.

Inductive rgb: Type :=
| red
| green
| blue.

Inductive color: Type :=
| black
| white
| primary (p: rgb).

(** Pattern matching **)
Definition monochrome (c: color): B :=
match c with 
| black => true
| white => true
| primary p => false
end.

Definition isref (c: color): B :=
match c with
| black => false
| white => false
| primary red => true
| primary _ => false
end.

Example test_color1: (monochrome black) = true.
Proof. simpl. reflexivity. Qed.
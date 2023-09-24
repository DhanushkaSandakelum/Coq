Inductive B: Type :=
| true
| false.

Definition negb (b:B): B :=
match b with
| true => false
| false => true
end.

Definition andb (b1 b2:B): B :=
match b1 with
| true => b2
| false => false
end.

Definition orb (b1 b2: B): B :=
match b1 with
| true => true
| false => b2
end.

Example test_orb1: (orb false false) = false.
Proof. simpl. reflexivity. Qed.
Example test_orb2: (orb false true) = true.
Proof. simpl. reflexivity. Qed.
Example test_orb3: (orb true false) = true.
Proof. simpl. reflexivity. Qed.
Example test_orb4: (orb true true) = true.
Proof. simpl. reflexivity. Qed.

(** Define notations for existing definitions **)
Notation "x && y" := (andb x y).
Notation "x || y" := (orb x y).

Example test_orb5: false || false || true = true.
Proof. simpl. reflexivity. Qed.

Inductive N: Type :=
| O
| S (n: N).

Definition pred (n: N): N :=
match n with
| O => O
| S n` => n`
end.

Check (S (S O))
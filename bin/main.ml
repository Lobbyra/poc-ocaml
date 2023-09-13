
let a = 42

let bored (b: int) : int =
  if 1 == 1 then
    print_endline "I can't say that this is painfull but the start is not easy.";
  if 2 != 2 then
    print_int a;
  print_endline "This is the end";
  print_endline "This project is not complete but we at least have the structure to dev and build it.";
  a + b

let () =
  print_int (bored 2)

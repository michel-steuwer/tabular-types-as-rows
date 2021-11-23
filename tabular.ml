(* Examples from https://github.com/brownplt/B2T2/blob/main/ExampleTables.md *)
let students : < name : string; age : int; favorite_color : string > list = [
  object method name = "Bob";   method age = 12; method favorite_color = "blue"   end;
  object method name = "Alice"; method age = 17; method favorite_color = "green"  end;
  object method name = "Eve";   method age = 13; method favorite_color = "red"    end;
]

let studentsMissing : < name : string option;
                        age : int option;
                        favorite_color : string option > list = [
  object
    method name           = Some "Bob"; 
    method age            = None;
    method favorite_color = Some "blue"
  end;
  object
    method name           = Some "Alice";
    method age            = Some 17;
    method favorite_color = Some "green"
  end;
  object
    method name           = Some "Eve"; 
    method age            = Some 13;
    method favorite_color = None
  end;
]

let employees : < last_name : string; department_id : int option > list = [
  object
    method last_name      = "Rafferty"
    method department_id  = Some 31
  end;
  object
    method last_name      = "Jones"
    method department_id  = Some 32
  end;
  object
    method last_name      = "Heisenberg"
    method department_id  = Some 33
  end;
  object
    method last_name      = "Robinson"
    method department_id  = Some 34
  end;
  object
    method last_name      = "Smith"
    method department_id  = Some 34
  end;
  object
    method last_name      = "Williams"
    method department_id  = None
  end;
]

let departments : < department_name : string; department_id : int > list = [
  object method department_id = 31; method department_name = "Sales"        end;
  object method department_id = 33; method department_name = "Engineering"  end;
  object method department_id = 34; method department_name = "Clerical"     end;
  object method department_id = 35; method department_name = "Marketing"    end;
]

let jellyAnon : < get_acne : bool;
                  red : bool;
                  black : bool;
                  white : bool;
                  green : bool;
                  yellow : bool;
                  brown : bool;
                  orange : bool;
                  pink : bool;
                  purple : bool;
                > list = [
  object
    method get_acne = true;
    method red = false;
    method black = false;
    method white = false;
    method green = true;
    method yellow = false;
    method brown = false;
    method orange = true;
    method pink = false;
    method purple = false
  end;
  object
    method get_acne = true;
    method red = false;
    method black = true;
    method white = false;
    method green = true;
    method yellow = true;
    method brown = false;
    method orange = false;
    method pink = false;
    method purple = false
  end;
]

let jellyNamed : <name: string;
                  get_acne : bool;
                  red : bool;
                  black : bool;
                  white : bool;
                  green : bool;
                  yellow : bool;
                  brown : bool;
                  orange : bool;
                  pink : bool;
                  purple : bool;
                > list = [
  object
    method name = "Emily";
    method get_acne = true;
    method red = false;
    method black = false;
    method white = false;
    method green = true;
    method yellow = false;
    method brown = false;
    method orange = true;
    method pink = false;
    method purple = false
  end;
  object
    method name = "Jacob";
    method get_acne = true;
    method red = false;
    method black = true;
    method white = false;
    method green = true;
    method yellow = true;
    method brown = false;
    method orange = false;
    method pink = false;
    method purple = false
  end;
]

let gradebook : < name : string;
                  age : int;
                  quiz1 : int;
                  quiz2 : int;
                  midterm : int;
                  quiz3 : int;
                  quiz4 : int;
                  final : int;
                > list = [
  object
    method name = "Bob";
    method age = 12;
    method quiz1 = 8;
    method quiz2 = 9;
    method midterm = 77;
    method quiz3 = 7;
    method quiz4 = 9;
    method final = 87;
  end;
  object
    method name = "Alice";
    method age = 17;
    method quiz1 = 6;
    method quiz2 = 8;
    method midterm = 88;
    method quiz3 = 8;
    method quiz4 = 7;
    method final = 85;
  end;
]

let gradebookMissing : <name : string;
                        age : int option;
                        quiz1 : int option;
                        quiz2 : int option;
                        midterm : int option;
                        quiz3 : int option;
                        quiz4 : int option;
                        final : int option;
                       > list = [
  object
    method name = "Bob";
    method age = Some 12;
    method quiz1 = Some 8;
    method quiz2 = Some 9;
    method midterm = Some 77;
    method quiz3 = Some 7;
    method quiz4 = Some 9;
    method final = Some 87;
  end;
  object
    method name = "Alice";
    method age = Some 17;
    method quiz1 = Some 6;
    method quiz2 = Some 8;
    method midterm = Some 88;
    method quiz3 = None;
    method quiz4 = Some 7;
    method final = Some 85;
  end;
]

let gradebookSeq : <name : string;
                    age : int;
                    quizzes : int list;
                    midterm : int;
                    final : int;
                  > list = [
  object
    method name = "Bob";
    method age = 12;
    method quizzes = [8; 9; 7; 9];
    method midterm = 77;
    method final = 87;
  end;
  object
    method name = "Alice";
    method age = 17;
    method quizzes = [6; 8; 8; 7];
    method midterm = 88;
    method final = 85;
  end;
]

let gradebookTable : <name : string;
                      age : int;
                      quizzes : < grade : int;
                                  quiz_number : int
                                > list;
                      midterm : int;
                      final : int;
                    > list = [
  object
    method name = "Bob";
    method age = 12;
    method quizzes = [
      object
        method quiz_number = 1;
        method grade = 8;
      end;
      object
        method quiz_number = 2;
        method grade = 9;
      end;
      object
        method quiz_number = 3;
        method grade = 7;
      end;
      object
        method quiz_number = 4;
        method grade = 9;
      end;
    ]
    method midterm = 77;
    method final = 87;
  end;
  object
    method name = "Alice";
    method age = 17;
    method quizzes = [
      object
        method quiz_number = 1;
        method grade = 6;
      end;
      object
        method quiz_number = 2;
        method grade = 8;
      end;
      object
        method quiz_number = 3;
        method grade = 8;
      end;
      object
        method quiz_number = 4;
        method grade = 7;
      end;
    ]
    method midterm = 88;
    method final = 85;
  end;
]

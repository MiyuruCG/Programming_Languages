marks(stu1, 70, 80).
marks(stu2, 60, 66).
marks(stu2, 55, 50).

avg_marks(Student, Avg) :-
    marks(Student, M_1, M_2),
    Avg is (M_1 + M_2) / 2.

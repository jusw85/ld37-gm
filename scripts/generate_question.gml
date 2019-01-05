switch (irandom(3)) {
    case 0:
        generate_question_1();
        break;
    case 1:
        generate_question_2();
        break;
    case 2:
        generate_question_3();
        break;
    case 3:
        generate_question_4();
        break;
}
/*
var n1 = irandom(3) + 1;
var n2 = irandom(5) + 1;
var answer_value = n1 + n2;

for (i = 0; i < 4; i++) {
    do {
        var fail = false;
        var choice_value = irandom(8) + 1;
        for (j = 0; j < i; j++) {
            if (choices[j] == choice_value) {
                fail = true;
                break;
            }
        }
        if (choice_value == answer_value) {
            fail = true;
        }
    } until (!fail)
    choices[i] = choice_value;
}

for (i = 0; i < 4; i++) {
    choices[i] = string(choices[i]);
}

text = "Whats " + string(n1) + " + " + string(n2) + "?";
answer = irandom(3) + 1;
choices[answer - 1] = string(answer_value);
*/

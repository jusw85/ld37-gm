var n1 = irandom_range(3, 15);
var n2 = irandom_range(2, (n1 - 1));
var answer_value = n1 - n2;

for (i = 0; i < 4; i++) {
    do {
        var fail = false;
        var choice_value = irandom_range(
            clamp(answer_value - 3, 1, 1000), answer_value + 6);
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

usable = rusable();
text = rfname() + " " + rlname() + " " + rfight() + " " + rmonster() + " with " + string(n1) + " " + usable[0, 0] + ". He used " + string(n2) + " " + usable[0, 1] + " during the fight. How many " + usable[0, 1] + " remained?";
answer = irandom(3) + 1;
choices[answer - 1] = answer_value;

for (i = 0; i < 4; i++) {
    choices[i] = string(choices[i]) + " " + usable[0, 1];
}

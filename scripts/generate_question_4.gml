var n1 = irandom_range(2, 20);
var n2 = irandom_range(2, 20);
var answer_value = n1 + n2;

for (i = 0; i < 4; i++) {
    do {
        var fail = false;
        var choice_value = irandom_range(
            clamp(answer_value - 8, 1, 1000), answer_value + 8);
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

item = ritem();
coin = rjewel();
text = "While adventuring, " + rfname() + " " + rlname() + " found " + string(n1) + " " + coin + " in a treasure chest. He added them to the " + string(n2) + " " + coin + " in his backpack. How many " + coin + " does he have now?";
answer = irandom(3) + 1;
choices[answer - 1] = answer_value;

for (i = 0; i < 4; i++) {
    choices[i] = string(choices[i]) + " " + coin;
}

var n1 = irandom_range(3, 12);
var n2 = irandom_range(2, 8);
var answer_value = n1 * n2;

for (i = 0; i < 4; i++) {
    do {
        var fail = false;
        var choice_value = irandom_range(
            clamp(answer_value - 15, 1, 1000), answer_value + 15);
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
coin = rcoin();
text = rfname() + " " + rlname() + " " + rwalk() + " to " + rfplace() + " " + rlplace() + " to purchase " + string(n1) + " " + item[0, 0] + ". The " + item[0, 1] + " cost " + string(n2) + " " + coin + " each. How many " + coin + " did he spend?";
answer = irandom(3) + 1;
choices[answer - 1] = answer_value;

for (i = 0; i < 4; i++) {
    choices[i] = string(choices[i]) + " " + coin;
}

#include <criterion/criterion.h>
#include <stdbool.h>
#include "xsos.h"

bool xo (char * str);

//Test(suite, test)

Test(equalsIgnoreCaseTest, should_return_true_if_both_characters_are_equal){
  cr_assert_eq(equalsIgnoreCase('a', 'A'), true);
}

Test(countCharacterTest, should_return_count_of_given_character_in_the_word){
  cr_assert_eq(countCharacter('o', "word"), 1);
  cr_assert_eq(countCharacter('w', "wword"), 2);
  cr_assert_eq(countCharacter('x', "wword"), 0);
}

Test(xo_test, should_pass_all_the_tests_provided) {
    cr_assert_eq(xo("xo"), true);
    cr_assert_eq(xo("Xo"), true);
    cr_assert_eq(xo("xxOo"), true);
    cr_assert_eq(xo("xxxm"), false);
    cr_assert_eq(xo("Oo"), false);
    cr_assert_eq(xo("ooom"), false);
}

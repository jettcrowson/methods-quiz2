require_relative "test_maker"

t = Test.new
t.setup
t.create("methods_quiz2")
    t.new_test("without_doubles")
        t.function_test([
            t.test("Gives the sum of 7", [2,5, true], 7),
            t.test("Gives the sum of 7", [2,5, false], 7),
            t.test("Gives the sum of 5", [2,2, true], 5),
            t.test("Gives the sum of 4", [2,2, false], 4),
            t.test("Gives the sum of 7", [6,6, true], 7),
            t.test("Gives the sum of 12", [6,6, false], 12)
        ])
    t.new_test("max_maybe")
        t.function_test([
            t.test("5 is larger", [5,2], 5),
            t.test("5 is larger", [-2, 5], 5),
            t.test("3 is smaller, but has the same remainder when divided by 5", [3, 18], 3),
            t.test("0 becasue the values are the same", [5,5], 0)
        ])
    t.new_test("squirrels_play?")
        t.function_test([
            t.test("squirrels should play", [75, true], true),
            t.test("squirrels should play", [75, false], true),
            t.test("squirrels should not play", [100, false], false),
            t.test("squirrels should play", [100, true], true),
            t.test("squirrels should not play", [59, true], false),
            t.test("squirrels should not play", [59, false], false)
        ])
    t.new_test("red_ticket")
        t.function_test([
            t.test("all 2, so 10", [2,2,2], 10),
            t.test("all 4, so 5", [4,4,4], 5),
            t.test("b and c are different from a, so 1", [1,2,3], 1),
            t.test("either b or c is the same as a, so 0", [2,2,3], 0)
        ])

t.write(File.basename(__FILE__))
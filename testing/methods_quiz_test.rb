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
            t.test("Gives the sum of 12", [6,6, false], 7)
        ])
t.write(File.basename(__FILE__))
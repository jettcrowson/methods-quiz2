def without_doubles(num1, num2, no_doubles)
    if no_doubles
        if num1 == num2

            if num1 == 6
                num1 = 1
            elsif num2 == 6
                num2 = 1
            else
                num1 += 1
            end

            return num1 + num2

        else
            return num1 + num2
        end
    else
        return num1 + num2
    end
end

def max_maybe(num1, num2)
    if num1 == num2
        return 0
    elsif (num1 % 5) == (num2 % 5)
        return num1 > num2 ? num2 : num1
    else
        return num1 > num2 ? num1 : num2
    end
end
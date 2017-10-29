# Project Euler

##### #1: Multiples of 3 and 5

##### issue 1

> For anyone who is using Python3. If you've already converted from the iterive to the O(1) solution but you're still getting the "wrong answer" with Test Cases 2 and 3 here is why:
>
> When you divide integers in python 3, the answer is converted automatically to a float. Becuase Test Cases 2 and 3 involve very large numbers, when you convert back to integer, there will be a huge rounding error and your answers will be wrong.
>
> This is the issue I had to resolve. Luckily for me, my only division was a divide by two so I converted it to a bitwise right-shift.

##### solution

> You don't need iteration at all for this problem.
>
> Consider; the sum of all numbers from 1 to n is equal to n*(n+1)/2. Also the sum of all numbers less than n that divides d equals d times the sum of all numbers less than n/d.
>
> So the sum of all numbers less than 1000 that divides 3 is
>
> ```
> 3*floor(999/3)*(floor(999/3)+1)/2
> ```
>
> Likewise the sum of all numbers less than 1000 that divides 5 is
>
> ```
> 5*floor(999/5)*(floor(999/5)+1)/2
> ```
>
> Adding the two numbers would overcount though. Since the numbers that divides both 3 and 5 would get counted twice. The numbers that divides both 3 and 5 is precisely the numbers that divides `3*5/gcd(3,5)=15/1=15`.
>
> The sum of all numbers less than 1000 that divides 15 is
>
> ```
> 15*floor(999/15)*(floor(999/15)+1)/2
> ```
>
> So the final result is that the sum of all numbers less than 1000 that divides either 3 or 5 equals:
>
> ```
>   3 * (floor(999/3)  *  (floor(999/3)+1))/2
> + 5 * (floor(999/5)  *  (floor(999/5)+1))/2
> -15 * (floor(999/15) * (floor(999/15)+1))/2
> ```
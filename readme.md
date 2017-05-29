### Elixir script to convert Arabic numbers in the range (1 - 3999) to Roman Numerals

  This scripts converts a given number (ex 10) to it roman number equivalant (X)


### Steps to run.

  1. Clone the project.
  2. `cd arabic_to_roman_converter`
  3. `elixir arabic_to_roman_converter.exs`
  4. Enter the number to be converted and hit enter.


### Algorithm and considerations.

	> User input will be converted to an Integer.
	> If input is `0` then output will be "" (Empty String)
	> The algorithm will work by comparing a series of values to the number being converted. Each item in the series represents a specific Roman numeral letter or a letter pair representing a subtraction. The key numerals will be :- 
	
		M   (1000),
		CM  (900),
		D   (500),
		CD  (400),
		C   (100),
		XC   (90), 
		L    (50), 
		XL   (40), 
		X    (10), 
		IX    (9), 
		V     (5), 
		IV    (4), 
		I     (1)
		
	> Given a number (say 45) we check under which of the above clauses it matches. 
		In this case it is XL. And divide the original number by the matchings clause. To get the times we have to repeat the result.
		45 / 40 =>           1    ,    5
		                 (divisor), (remainder)
	
	We then repeat the comapre step with the remainder. (5) untill the remainder is 0.
	This time 5 is a direct match to V. And the remainder will be equal to 0 thus exiting the program.
	
	And yeilding the result of XLV.
	
### Screenshots.
![input](/home/icicle/spikes/elixr/arabic_to_roman_converter/imgs/input.png  "User Input")

![output](/home/icicle/spikes/elixr/arabic_to_roman_converter/imgs/output.png  "Program Output")

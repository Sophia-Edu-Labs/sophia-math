#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating the Mean]
#v(40pt)
#only("1-")[- a) Add all the numbers and divide by the count]
#v(10pt)
#only("2-")[- b) Subtract the smallest number from the largest]
#v(10pt)
#only("3-")[- c) Multiply all the numbers together]
#v(10pt)
#only("4-")[- d) Find the middle number]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's go through the options to understand why a) is the correct answer.")]
#only("2")[#voiceover("Option a) is correct. To calculate the mean of a set of numbers, you add all the numbers together and then divide by the count of the numbers.")]
#only("3")[#voiceover("Option b) is incorrect. Subtracting the smallest number from the largest gives you the range, not the mean.")]
#only("4")[#voiceover("Option c) is also incorrect. Multiplying all the numbers together does not give you the mean.")]
#only("5")[#voiceover("Option d) is incorrect as well. Finding the middle number is related to finding the median, not the mean.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Step 1: Add all the numbers together.]
#v(10pt)
#only("2-")[- Step 2: Count the number of values.]
#v(10pt)
#only("3-")[- Step 3: Divide the sum by the count.]
#v(40pt)

#only("1")[#voiceover("Let's break down the steps to calculate the mean.")]
#only("2")[#voiceover("Step 1: Add all the numbers together. For example, if we have the numbers 2, 4, and 6, we add them to get 12.")]
#only("3")[#voiceover("Step 2: Count the number of values. In our example, we have 3 numbers.")]
#only("4")[#voiceover("Step 3: Divide the sum by the count. So, we divide 12 by 3 to get 4. Therefore, the mean is 4.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- Numbers: 3, 5, 7, 9]
#v(10pt)
#only("2-")[- Sum: $3 + 5 + 7 + 9 = 24$]
#v(10pt)
#only("3-")[- Count: 4]
#v(10pt)
#only("4-")[- Mean: $24 / 4 = 6$]
#v(40pt)

#only("1")[#voiceover("Let's go through an example calculation.")]
#only("2")[#voiceover("We have the numbers 3, 5, 7, and 9.")]
#only("3")[#voiceover("First, we add them together to get 24.")]
#only("4")[#voiceover("Next, we count the number of values, which is 4.")]
#only("5")[#voiceover("Finally, we divide the sum by the count, so 24 divided by 4 equals 6. Therefore, the mean is 6.")]
]
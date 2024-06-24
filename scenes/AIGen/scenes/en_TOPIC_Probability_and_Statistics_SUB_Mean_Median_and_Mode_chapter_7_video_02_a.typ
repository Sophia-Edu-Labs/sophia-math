#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating the Mean]
#v(40pt)
#only("1-")[- Mean: average of a set of numbers 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all numbers ➕]
#v(20pt)
#only("3-")[- Step 2: Count of numbers 🔢]
#v(20pt)
#only("4-")[- Step 3: Divide sum by count ➗]
#v(20pt)
#only("5-")[- Mean of the set = 300]
#only("1")[
#voiceover("Great job on answering the question correctly! Let's go through the solution step-by-step. First, we need to understand what the mean is. The mean is the average of a set of numbers.")
]
#only("2")[
#voiceover("To find the mean, we start with Step 1: Calculate the sum of all the numbers in the set.")
]
#only("3")[
#voiceover("Step 2: Count the number of elements in the set.")
]
#only("4")[
#voiceover("Step 3: Divide the sum by the count of numbers to get the mean.")
]
#only("5")[
#voiceover("So, the mean of the set (300, 100, 500, 400, 200) is 300.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Numbers]
#v(40pt)
#only("1-")[- Numbers: 300, 100, 500, 400, 200]
#v(20pt)
#only("2-")[- Sum: $300 + 100 + 500 + 400 + 200$]
#v(20pt)
#only("3-")[- Sum = 1500]
#only("1")[
#voiceover("Let's begin with Step 1: Summing up the numbers in the set. The numbers are 300, 100, 500, 400, and 200.")
]
#only("2")[
#voiceover("We add these numbers together: 300 plus 100 plus 500 plus 400 plus 200.")
]
#only("3")[
#voiceover("The sum of these numbers is 1500.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Count of Numbers]
#v(40pt)
#only("1-")[- Numbers: 300, 100, 500, 400, 200]
#v(20pt)
#only("2-")[- Count: 5]
#only("1")[
#voiceover("Next, we move to Step 2: Counting the number of elements in the set. The numbers are 300, 100, 500, 400, and 200.")
]
#only("2")[
#voiceover("There are 5 numbers in the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Divide Sum by Count]
#v(40pt)
#only("1-")[- Sum = 1500]
#v(20pt)
#only("2-")[- Count = 5]
#v(20pt)
#only("3-")[- Mean = $1500 / 5$]
#v(20pt)
#only("4-")[- Mean = 300]
#only("1")[
#voiceover("Finally, we proceed to Step 3: Divide the sum by the count. The sum is 1500.")
]
#only("2")[
#voiceover("The count is 5.")
]
#only("3")[
#voiceover("We divide 1500 by 5.")
]
#only("4")[
#voiceover("The mean of the set is 300.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mean of (300, 100, 500, 400, 200) = 300]
#only("1")[
#voiceover("In conclusion, the mean of the set (300, 100, 500, 400, 200) is 300. Well done on solving this problem!")
]
]

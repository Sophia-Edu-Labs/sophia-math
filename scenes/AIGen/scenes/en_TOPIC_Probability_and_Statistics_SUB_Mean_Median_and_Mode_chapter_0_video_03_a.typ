#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1-")[- Mean: the average value of a set of numbers 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all numbers ➕]
#v(20pt)
#only("3-")[- Step 2: Count of numbers 🔢]
#v(20pt)
#only("4-")[- Step 3: Divide the sum by the count ➗]
#v(20pt)
#only("5-")[- Result: The mean of the set 🎯]
#only("1")[
#voiceover("Great job! Let's calculate the mean of the set (2, 4, 6, 8, 10). The mean is the average value of a set of numbers.")
]
#only("2")[
#voiceover("First, we need to find the sum of all the numbers in the set.")
]
#only("3")[
#voiceover("Next, we count the number of elements in the set.")
]
#only("4")[
#voiceover("Then, we divide the sum by the count of numbers.")
]
#only("5")[
#voiceover("Finally, we get the mean of the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Sum of Numbers]
#v(40pt)
#only("1-")[- Set: $ (2, 4, 6, 8, 10) $]
#v(20pt)
#only("2-")[- Sum: $ 2 + 4 + 6 + 8 + 10 $]
#v(20pt)
#only("3-")[- Total Sum: $ 30 $]
#only("1")[
#voiceover("The set of numbers we have is 2, 4, 6, 8, and 10.")
]
#only("2")[
#voiceover("We add these numbers together: 2 plus 4 plus 6 plus 8 plus 10.")
]
#only("3")[
#voiceover("The total sum is 30.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Count of Numbers]
#v(40pt)
#only("1-")[- Set: $ (2, 4, 6, 8, 10) $]
#v(20pt)
#only("2-")[- Count: $ 5 $]
#only("1")[
#voiceover("Next, we count the number of elements in the set.")
]
#only("2")[
#voiceover("There are 5 numbers in the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Divide Sum by Count]
#v(40pt)
#only("1-")[- Sum: $ 30 $]
#v(20pt)
#only("2-")[- Count: $ 5 $]
#v(20pt)
#only("3-")[- Mean: $ 30 / 5 $]
#v(20pt)
#only("4-")[- Result: $ 6 $]
#only("1")[
#voiceover("We have the sum of the numbers, which is 30.")
]
#only("2")[
#voiceover("And we have the count of the numbers, which is 5.")
]
#only("3")[
#voiceover("Now, we divide the sum by the count: 30 divided by 5.")
]
#only("4")[
#voiceover("The result is 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[- Mean of the set $ (2, 4, 6, 8, 10) $ is $ 6 $ 🎉]
#only("1")[
#voiceover("So, the mean of the set 2, 4, 6, 8, and 10 is 6. Great job!")
]
]
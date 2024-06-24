#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1-")[- Given set: $ (5, 10, 15, 20, 25) $ 📊]
#v(20pt)
#only("2-")[- Step 1: Sum of all elements ➕]
#v(20pt)
#only("3-")[- Step 2: Count of elements 🔢]
#v(20pt)
#only("4-")[- Step 3: Mean = Sum / Count 🧮]
#v(20pt)
#only("5-")[- Mean = $ 75 / 5 $ = $ 15 $ 🎉]
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step-by-step. We start with the given set of numbers: 5, 10, 15, 20, and 25.")
]
#only("2")[
#voiceover("First, we need to find the sum of all the elements in the set. So, we add 5, 10, 15, 20, and 25 together.")
]
#only("3")[
#voiceover("Next, we count the number of elements in the set. There are 5 elements.")
]
#only("4")[
#voiceover("Now, we calculate the mean by dividing the sum by the count of elements. The sum is 75 and the count is 5.")
]
#only("5")[
#voiceover("So, the mean of the set is 75 divided by 5, which equals 15. Well done!")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Sum Calculation]
#v(40pt)
#only("1-")[- $ 5 + 10 + 15 + 20 + 25 = 75 $ ➕]
#only("1")[
#voiceover("Let's break down the sum calculation. We add 5, 10, 15, 20, and 25 to get 75.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Count of Elements]
#v(40pt)
#only("1-")[- Number of elements = 5 🔢]
#only("1")[
#voiceover("Next, we count the number of elements in the set. There are 5 elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Mean Calculation]
#v(40pt)
#only("1-")[- Mean = $ 75 / 5 $ 🧮]
#only("2-")[- Mean = $ 15 $ 🎉]
#only("1")[
#voiceover("Finally, we calculate the mean by dividing the sum, which is 75, by the count of elements, which is 5.")
]
#only("2")[
#voiceover("So, the mean of the set is 75 divided by 5, which equals 15. Congratulations!")
]
]
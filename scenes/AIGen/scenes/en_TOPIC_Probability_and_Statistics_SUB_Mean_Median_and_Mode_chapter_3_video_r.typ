#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Calculating the Mean 📊]
#v(40pt)
#only("1-")[- The mean is a measure of central tendency. 📈]
#only("2-")[- It's calculated by adding all numbers and dividing by the count. ➗]
#only("3-")[- Useful for summarizing data sets. 📊]
#only("1")[
#voiceover("Let's review the concept of calculating the mean. The mean is a measure of central tendency, which helps us understand the average value in a data set.")
]
#only("2")[
#voiceover("To calculate the mean, we add all the numbers together and then divide by the count of the numbers.")
]
#only("3")[
#voiceover("This method is useful for summarizing data sets, giving us a single value that represents the entire set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Calculation]
#v(40pt)
#only("1-")[- Example set: $ {3, 5, 7, 9, 11} $]
#only("2-")[- Step 1: Add all numbers: $ 3 + 5 + 7 + 9 + 11 $]
#only("3-")[- Step 2: Divide by the count: $ (3 + 5 + 7 + 9 + 11) / 5 $]
#only("4-")[- Result: $ 7 $]
#only("1")[
#voiceover("Let's go through the steps of calculating the mean with an example set of numbers: 3, 5, 7, 9, and 11.")
]
#only("2")[
#voiceover("Step 1: Add all the numbers together. So, 3 plus 5 plus 7 plus 9 plus 11.")
]
#only("3")[
#voiceover("Step 2: Divide the sum by the count of the numbers. In this case, we have five numbers, so we divide the sum by 5.")
]
#only("4")[
#voiceover("The result is 7. So, the mean of the set 3, 5, 7, 9, and 11 is 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap 📝]
#v(40pt)
#only("1-")[- Mean = (Sum of all numbers) / (Count of numbers) ➗]
#only("2-")[- Example: $ {3, 5, 7, 9, 11} $ ➡ $ 7 $]
#only("3-")[- Useful for summarizing data sets. 📊]
#only("1")[
#voiceover("To recap, the mean is calculated by adding all the numbers together and then dividing by the count of the numbers.")
]
#only("2")[
#voiceover("For example, the mean of the set 3, 5, 7, 9, and 11 is 7.")
]
#only("3")[
#voiceover("Understanding how to calculate the mean is useful for summarizing data sets and finding the average value.")
]
]
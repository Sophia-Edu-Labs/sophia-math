#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mean]
#v(40pt)
#only("1-")[- Imagine you have a set of numbers: 3, 5, 7, 2, 8 📊]
#v(20pt)
#only("2-")[- How do we find the average of these numbers? 🤔]
#v(20pt)
#only("3-")[- The mean helps us find the central value. 📍]
#only("1")[
#voiceover("Imagine you have a set of numbers: 3, 5, 7, 2, 8. How do we find the average of these numbers? This is where the mean comes in. The mean helps us find the central value of a set of numbers.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating the Mean]
#v(40pt)
#only("1-")[- Step 1: Add all the numbers together ➕]
#v(20pt)
#only("2-")[- Step 2: Count the number of numbers 🔢]
#v(20pt)
#only("3-")[- Step 3: Divide the sum by the count ➗]
#v(20pt)
#only("4-")[- Example: $(3 + 5 + 7 + 2 + 8)/5 = 25/5 = 5$]
#only("1")[
#voiceover("To calculate the mean, we follow three simple steps. Step 1: Add all the numbers together. Step 2: Count the number of numbers. Step 3: Divide the sum by the count.")
]
#only("2")[
#voiceover("Let's go through an example. We have the numbers 3, 5, 7, 2, and 8. First, we add them together: 3 plus 5 plus 7 plus 2 plus 8 equals 25.")
]
#only("3")[
#voiceover("Next, we count the number of numbers. In this case, there are 5 numbers.")
]
#only("4")[
#voiceover("Finally, we divide the sum by the count. So, 25 divided by 5 equals 5. Therefore, the mean of these numbers is 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mean: Central value of a set of numbers 📍]
#v(20pt)
#only("2-")[- Calculated by adding all numbers and dividing by the count ➗]
#v(20pt)
#only("3-")[- Example: $(3 + 5 + 7 + 2 + 8)/5 = 5$]
#only("1")[
#voiceover("In summary, the mean is the central value of a set of numbers. It is calculated by adding all the numbers together and then dividing by the count of numbers.")
]
#only("2")[
#voiceover("For example, the mean of the numbers 3, 5, 7, 2, and 8 is calculated as the sum of these numbers divided by the count, which equals 5.")
]
]
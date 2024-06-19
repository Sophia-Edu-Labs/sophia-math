#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mean with Complex Numbers]
#v(40pt)
#only("1-")[- Complex numbers are numbers in the form $a + b i$]
#v(20pt)
#only("2-")[- Mean: Sum of numbers divided by the count]
#v(20pt)
#only("3-")[- Why is it important? Useful in various fields like engineering and physics]
#only("1")[
#voiceover("Welcome! Today, we will learn how to calculate the mean for a set of complex numbers. Complex numbers are numbers in the form a plus b i, where a and b are real numbers, and i is the imaginary unit.")
]
#only("2")[
#voiceover("The mean is calculated as the sum of numbers divided by the count of those numbers.")
]
#only("3")[
#voiceover("Understanding the mean of complex numbers is important because it is useful in various fields like engineering and physics.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Calculation]
#v(40pt)
#only("1-")[- Example: $z_1 = 1 + 2 i$, $z_2 = 3 + 4 i$]
#v(20pt)
#only("2-")[- Add the complex numbers: $(1 + 2 i) + (3 + 4 i) = 4 + 6 i$]
#v(20pt)
#only("3-")[- Divide by the number of terms: $(4 + 6 i) / 2 = 2 + 3 i$]
#only("1")[
#voiceover("Let's go through an example step by step. Suppose we have two complex numbers: z one equals one plus two i, and z two equals three plus four i.")
]
#only("2")[
#voiceover("First, we add the complex numbers. One plus two i plus three plus four i equals four plus six i.")
]
#only("3")[
#voiceover("Next, we divide by the number of terms. Four plus six i divided by two equals two plus three i. So, the mean of the complex numbers is two plus three i.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Complex numbers: $a + b i$]
#v(20pt)
#only("2-")[- Mean: Sum divided by count]
#v(20pt)
#only("3-")[- Example: Mean of $1 + 2 i$ and $3 + 4 i$ is $2 + 3 i$]
#only("1")[
#voiceover("To recap, complex numbers are in the form a plus b i, where a and b are real numbers, and i is the imaginary unit.")
]
#only("2")[
#voiceover("The mean is calculated as the sum of the numbers divided by the count of those numbers.")
]
#only("3")[
#voiceover("In our example, the mean of one plus two i and three plus four i is two plus three i.")
]
]
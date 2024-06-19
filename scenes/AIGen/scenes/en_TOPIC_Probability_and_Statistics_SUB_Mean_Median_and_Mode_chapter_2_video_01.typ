#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mode]
#v(40pt)
#only("1-")[- Mode: The number that appears most frequently in a set of numbers 📊]
#v(20pt)
#only("2-")[- A set can have more than one mode or no mode at all ❓]
#v(20pt)
#only("3-")[- Example: In the set {1, 2, 2, 3, 3, 4}, the modes are 2 and 3 🔢]
#v(20pt)
#only("4-")[- Example: In the set {1, 2, 3, 4, 5}, there is no mode 🚫]
#only("1")[
#voiceover("Let's start by understanding what the mode is. The mode is the number that appears most frequently in a set of numbers.")
]
#only("2")[
#voiceover("A set can have more than one mode or no mode at all. This means that there can be multiple numbers that appear with the highest frequency, or there can be no number that repeats.")
]
#only("3")[
#voiceover("For example, in the set {1, 2, 2, 3, 3, 4}, the modes are 2 and 3 because both appear twice, which is more frequent than any other number in the set.")
]
#only("4")[
#voiceover("On the other hand, in the set {1, 2, 3, 4, 5}, there is no mode because no number repeats.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Mode]
#v(40pt)
#only("1-")[- Step 1: List the numbers in the set 📝]
#v(20pt)
#only("2-")[- Step 2: Count the frequency of each number 🔢]
#v(20pt)
#only("3-")[- Step 3: Identify the number(s) with the highest frequency 📈]
#v(20pt)
#only("4-")[- Example: Set {1, 2, 2, 3, 3, 3, 4} ➡ Mode is 3]
#only("1")[
#voiceover("To find the mode, we follow a few simple steps. First, list all the numbers in the set.")
]
#only("2")[
#voiceover("Next, count the frequency of each number. This means we count how many times each number appears in the set.")
]
#only("3")[
#voiceover("Finally, identify the number or numbers with the highest frequency. These are the modes.")
]
#only("4")[
#voiceover("For example, in the set {1, 2, 2, 3, 3, 3, 4}, the mode is 3 because it appears three times, which is more frequent than any other number in the set.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mode: Most frequent number in a set 📊]
#v(20pt)
#only("2-")[- Can have more than one mode or no mode at all ❓]
#v(20pt)
#only("3-")[- Example: Set {1, 2, 2, 3, 3, 4} ➡ Modes are 2 and 3 🔢]
#v(20pt)
#only("4-")[- Example: Set {1, 2, 3, 4, 5} ➡ No mode 🚫]
#only("1")[
#voiceover("In summary, the mode is the number that appears most frequently in a set of numbers.")
]
#only("2")[
#voiceover("A set can have more than one mode or no mode at all. This depends on the frequency of the numbers in the set.")
]
#only("3")[
#voiceover("For example, in the set {1, 2, 2, 3, 3, 4}, the modes are 2 and 3 because both appear twice.")
]
#only("4")[
#voiceover("In the set {1, 2, 3, 4, 5}, there is no mode because no number repeats.")
]
]
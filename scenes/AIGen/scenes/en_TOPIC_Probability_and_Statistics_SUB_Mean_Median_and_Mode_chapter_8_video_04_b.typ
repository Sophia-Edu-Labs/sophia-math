#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Median Calculation]
#v(40pt)
#only("1-")[- Given set: (33, 47, 35, 41, 45, 43, 37, 39) 📊]
#v(20pt)
#only("2-")[- Step 1: Sort the set in ascending order 📈]
#v(20pt)
#only("3-")[- Sorted set: (33, 35, 37, 39, 41, 43, 45, 47) 🔢]
#v(20pt)
#only("4-")[- Step 2: Find the middle elements (for even number of elements) 🔍]
#v(20pt)
#only("5-")[- Middle elements: 39 and 41]
#v(20pt)
#only("6-")[- Step 3: Calculate the median as the average of the middle elements ➗]
#v(20pt)
#only("7-")[- Median: (39 + 41) / 2 = 40]
#only("1")[
#voiceover("Nice try! Let's go through the correct solution step-by-step. First, we start with the given set of numbers: 33, 47, 35, 41, 45, 43, 37, 39.")
]
#only("2")[
#voiceover("The first step is to sort the set in ascending order.")
]
#only("3")[
#voiceover("After sorting, we get the set: 33, 35, 37, 39, 41, 43, 45, 47.")
]
#only("4")[
#voiceover("Next, we need to find the middle elements. Since the set has an even number of elements, we take the two middle elements.")
]
#only("5")[
#voiceover("The middle elements in this case are 39 and 41.")
]
#only("6")[
#voiceover("Finally, we calculate the median by taking the average of these two middle elements.")
]
#only("7")[
#voiceover("So, the median is calculated as the average of 39 and 41, which is (39 + 41) divided by 2, resulting in 40.")
]
]
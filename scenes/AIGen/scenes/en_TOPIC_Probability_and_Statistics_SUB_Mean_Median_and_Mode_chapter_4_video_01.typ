#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median in Larger Sets]
#v(40pt)
#only("1-")[- Median: Middle value of a sorted list 📊]
#v(20pt)
#only("2-")[- For odd number of elements: Middle element]
#v(20pt)
#only("3-")[- For even number of elements: Average of two middle elements]
#v(20pt)
#only("4-")[- Example: 3, 5, 7, 9, 11 → Median is 7]
#only("5-")[- Example: 2, 4, 6, 8 → Median is (4 + 6) / 2 = 5]
#only("1")[
#voiceover("In this video, we will learn how to find the median in larger sets and sets with an even number of elements. The median is the middle value of a sorted list.")
]
#only("2")[
#voiceover("If the number of elements in the list is odd, the median is simply the middle element.")
]
#only("3")[
#voiceover("However, if the number of elements is even, the median is the average of the two middle elements.")
]
#only("4")[
#voiceover("Let's look at an example with an odd number of elements. Consider the sorted list 3, 5, 7, 9, 11. The median here is 7, which is the middle element.")
]
#only("5")[
#voiceover("Now, let's consider an example with an even number of elements. For the sorted list 2, 4, 6, 8, the median is the average of the two middle elements, which is (4 + 6) divided by 2, resulting in 5.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Calculation]
#v(40pt)
#only("1-")[- Step 1: Sort the list in ascending order]
#v(20pt)
#only("2-")[- Step 2: Count the number of elements]
#v(20pt)
#only("3-")[- Step 3: Determine if the number of elements is odd or even]
#v(20pt)
#only("4-")[- Step 4: Find the median based on the count]
#only("1")[
#voiceover("Now, let's go through the steps to find the median step by step. First, sort the list in ascending order.")
]
#only("2")[
#voiceover("Next, count the number of elements in the list.")
]
#only("3")[
#voiceover("Then, determine if the number of elements is odd or even.")
]
#only("4")[
#voiceover("Finally, find the median based on whether the count is odd or even. If it's odd, the median is the middle element. If it's even, the median is the average of the two middle elements.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- List: 12, 4, 5, 3, 8, 7]
#v(20pt)
#only("2-")[- Sorted List: 3, 4, 5, 7, 8, 12]
#v(20pt)
#only("3-")[- Number of elements: 6 (even)]
#v(20pt)
#only("4-")[- Median: (5 + 7) / 2 = 6]
#only("1")[
#voiceover("Let's go through an example calculation. Consider the list 12, 4, 5, 3, 8, 7.")
]
#only("2")[
#voiceover("First, we sort the list in ascending order: 3, 4, 5, 7, 8, 12.")
]
#only("3")[
#voiceover("Next, we count the number of elements, which is 6. Since 6 is an even number, we need to find the average of the two middle elements.")
]
#only("4")[
#voiceover("The two middle elements are 5 and 7. So, the median is (5 + 7) divided by 2, which equals 6.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Median: Middle value of a sorted list]
#v(20pt)
#only("2-")[- Odd number of elements: Middle element]
#v(20pt)
#only("3-")[- Even number of elements: Average of two middle elements]
#v(20pt)
#only("4-")[- Steps: Sort, Count, Determine, Find]
#only("1")[
#voiceover("In summary, the median is the middle value of a sorted list. If the number of elements is odd, the median is the middle element. If the number of elements is even, the median is the average of the two middle elements.")
]
#only("2")[
#voiceover("To find the median, follow these steps: Sort the list, count the number of elements, determine if the count is odd or even, and find the median accordingly.")
]
]
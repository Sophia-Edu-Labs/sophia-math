#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
- How do you find the median of a set of numbers?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Add all the numbers and divide by the count]#only("2-")[#text(fill:red)[a) Add all the numbers and divide by the count]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Find the middle number in a sorted set]#only("3-")[#text(fill:green)[b) Find the middle number in a sorted set]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Multiply all the numbers together]#only("4-")[#text(fill:red)[c) Multiply all the numbers together]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Subtract the smallest number from the largest]#only("5-")[#text(fill:red)[d) Subtract the smallest number from the largest]]
#only("1")[#voiceover("Great job! Let's go over the correct answer step by step.")]
#only("2")[#voiceover("Option a is incorrect. Adding all the numbers and dividing by the count gives you the mean, not the median.")]
#only("3")[#voiceover("Option b is correct. The median is the middle number in a sorted set of numbers.")]
#only("4")[#voiceover("Option c is incorrect. Multiplying all the numbers together does not give you the median.")]
#only("5")[#voiceover("Option d is also incorrect. Subtracting the smallest number from the largest gives you the range, not the median.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Sort the numbers in ascending order.]
#v(10pt)
#only("2-")[- If the count of numbers is odd, the median is the middle number.]
#v(10pt)
#only("3-")[- If the count of numbers is even, the median is the average of the two middle numbers.]
#only("1")[#voiceover("First, you need to sort the numbers in ascending order.")]
#only("2")[#voiceover("If the count of numbers is odd, the median is simply the middle number in this sorted set.")]
#only("3")[#voiceover("If the count of numbers is even, the median is the average of the two middle numbers.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Consider the set of numbers: $3, 1, 4, 1, 5, 9, 2$]
#v(10pt)
#only("2-")[- Sorted set: $1, 1, 2, 3, 4, 5, 9$]
#v(10pt)
#only("3-")[- Median: $3$]
#only("1")[#voiceover("Let's consider an example set of numbers: 3, 1, 4, 1, 5, 9, 2.")]
#only("2")[#voiceover("First, we sort the set in ascending order: 1, 1, 2, 3, 4, 5, 9.")]
#only("3")[#voiceover("Since the count of numbers is odd, the median is the middle number, which is 3.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Another Example]
#v(40pt)
#only("1-")[- Consider the set of numbers: $7, 3, 5, 1$]
#v(10pt)
#only("2-")[- Sorted set: $1, 3, 5, 7$]
#v(10pt)
#only("3-")[- Median: $(3 + 5)/2 = 4$]
#only("1")[#voiceover("Now, let's consider another example set of numbers: 7, 3, 5, 1.")]
#only("2")[#voiceover("First, we sort the set in ascending order: 1, 3, 5, 7.")]
#only("3")[#voiceover("Since the count of numbers is even, the median is the average of the two middle numbers, which is (3 + 5) divided by 2, resulting in 4.")]
]
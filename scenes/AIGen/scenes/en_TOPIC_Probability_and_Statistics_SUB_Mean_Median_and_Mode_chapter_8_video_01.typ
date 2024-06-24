#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Median]
#v(40pt)
#only("1-")[- Finding the median in larger sets 📊]
#v(20pt)
#only("2-")[- Handling even number of elements 🔢]
#v(20pt)
#only("3-")[- Why is it important? 🤔]
#only("1")[
#voiceover("Welcome! Today, we will recap how to find the median in larger sets and sets with an even number of elements.")]
#only("2")[
#voiceover("We will also discuss how to handle cases where the number of elements is even.")]
#only("3")[
#voiceover("Finally, we will understand why finding the median is important in data analysis.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding the Median]
#v(40pt)
#only("1-")[- Arrange the data in ascending order 📈]
#v(20pt)
#only("2-")[- If the number of elements is odd, the median is the middle element]
#v(20pt)
#only("3-")[- Example: $3, 5, 7, 9, 11$ → Median is $7$]
#v(20pt)
#only("4-")[- If the number of elements is even, the median is the average of the two middle elements]
#v(20pt)
#only("5-")[- Example: $3, 5, 7, 9$ → Median is $(5+7)/2 = 6$]
#only("1")[
#voiceover("To find the median, first arrange the data in ascending order.")]
#only("2")[
#voiceover("If the number of elements is odd, the median is the middle element.")]
#only("3")[
#voiceover("For example, in the set 3, 5, 7, 9, 11, the median is 7.")]
#only("4")[
#voiceover("If the number of elements is even, the median is the average of the two middle elements.")]
#only("5")[
#voiceover("For example, in the set 3, 5, 7, 9, the median is the average of 5 and 7, which is 6.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why is Median Important?]
#v(40pt)
#only("1-")[- Represents the center of a data set 🎯]
#v(20pt)
#only("2-")[- Less affected by outliers than the mean]
#v(20pt)
#only("3-")[- Useful in understanding the distribution of data]
#only("1")[
#voiceover("The median represents the center of a data set.")]
#only("2")[
#voiceover("It is less affected by outliers than the mean, making it a more robust measure of central tendency.")]
#only("3")[
#voiceover("Understanding the median helps us understand the distribution of data more effectively.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Arrange data in ascending order 📈]
#v(20pt)
#only("2-")[- Odd number of elements: median is the middle element]
#v(20pt)
#only("3-")[- Even number of elements: median is the average of the two middle elements]
#v(20pt)
#only("4-")[- Median is important for understanding data distribution 🎯]
#only("1")[
#voiceover("In summary, to find the median, arrange the data in ascending order.")]
#only("2")[
#voiceover("If the number of elements is odd, the median is the middle element.")]
#only("3")[
#voiceover("If the number of elements is even, the median is the average of the two middle elements.")]
#only("4")[
#voiceover("The median is important for understanding the distribution of data.")]
]
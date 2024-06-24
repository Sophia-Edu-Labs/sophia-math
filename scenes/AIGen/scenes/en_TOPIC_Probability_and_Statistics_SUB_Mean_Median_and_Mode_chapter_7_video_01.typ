#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Mean Calculation]
#v(40pt)
#only("1-")[- Scenario: Analyzing test scores 📊]
#v(20pt)
#only("2-")[- Why calculate the mean? 🎯]
#v(20pt)
#only("3-")[- Helps in understanding data distribution]
#v(20pt)
#only("4-")[- Provides a central value for comparison]
#only("1")[
#voiceover("Let's start with a scenario: Imagine you are analyzing test scores of a class. Why would you want to calculate the mean?")]
#only("2")[
#voiceover("Calculating the mean helps you understand the distribution of the data.")]
#only("3")[
#voiceover("It provides a central value that you can use for comparison.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Mean Calculation]
#v(40pt)
#only("1-")[- Gather all data points: $x_1, x_2, ..., x_n$]
#v(20pt)
#only("2-")[- Sum all data points: $"sum" = x_1 + x_2 + ... + x_n$]
#v(20pt)
#only("3-")[- Count the number of data points: $n$]
#v(20pt)
#only("4-")[- Calculate the mean: $"mean" = "sum" / n$]
#only("1")[
#voiceover("To calculate the mean, first gather all your data points. Let's call them x1, x2, and so on up to xn.")]
#only("2")[
#voiceover("Next, sum all these data points. This gives you the total sum.")]
#only("3")[
#voiceover("Then, count the number of data points. This is your n.")]
#only("4")[
#voiceover("Finally, divide the total sum by the number of data points to get the mean.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[- Data points: $85, 90, 78, 92, 88$]
#v(20pt)
#only("2-")[- Sum: $85 + 90 + 78 + 92 + 88 = 433$]
#v(20pt)
#only("3-")[- Number of data points: $5$]
#v(20pt)
#only("4-")[- Mean: $433 / 5 = 86.6$]
#only("1")[
#voiceover("Let's go through an example. Suppose the test scores are 85, 90, 78, 92, and 88.")]
#only("2")[
#voiceover("First, sum these scores: 85 plus 90 plus 78 plus 92 plus 88 equals 433.")]
#only("3")[
#voiceover("Next, count the number of scores. There are 5 scores.")]
#only("4")[
#voiceover("Finally, divide the sum by the number of scores: 433 divided by 5 equals 86.6. So, the mean score is 86.6.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Mean helps in understanding data distribution 📊]
#v(20pt)
#only("2-")[- Steps: Gather data, sum, count, divide]
#v(20pt)
#only("3-")[- Example: Mean of $85, 90, 78, 92, 88$ is $86.6$]
#only("1")[
#voiceover("In summary, calculating the mean helps in understanding the distribution of data.")]
#only("2")[
#voiceover("The steps to calculate the mean are: gather your data, sum the data points, count the number of data points, and divide the sum by the count.")]
#only("3")[
#voiceover("For example, the mean of the scores 85, 90, 78, 92, and 88 is 86.6.")]
]
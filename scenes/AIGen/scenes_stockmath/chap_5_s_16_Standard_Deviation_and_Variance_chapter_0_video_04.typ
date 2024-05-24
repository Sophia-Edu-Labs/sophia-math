#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about variance. 📊")
]
#text(size: 30pt, weight: "bold")[Variance Recap]
// The title "Variance Recap" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Variance is a statistical measurement that describes the spread of numbers in a data set around the mean. It provides insight into the degree of dispersion.")
]
#only("2-")[
- Measures spread around mean 🎯
- Insight into dispersion 📏
]
// The bullet points are shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("Let's consider an example data set: 4, 8, 6, 5, 3. To calculate the variance, we first find the mean.")
]
#only("3-")[
- Example: $\{4, 8, 6, 5, 3\}$
- Mean $= (4+8+6+5+3)/5 = 5.2$
]
// The example data set and mean calculation are shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("Then, we calculate the squared differences between each data point and the mean, and take the average of these squared differences.")
]
#only("4-")[
- Variance $= [(4-5.2)^2 + (8-5.2)^2 + (6-5.2)^2 + (5-5.2)^2 + (3-5.2)^2]/5$
- $= 3.76$
]
// The variance calculation is shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("Remember, variance is always non-negative, and a higher variance indicates a greater spread of the data.")
]
#only("5-")[
- Always non-negative ≥0
- Higher variance = greater spread 📈
]
// The additional points about variance are shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("That's a wrap on variance! 🎉 It's a fundamental concept in statistics that helps us understand the spread of data.")
]
#text(size: 30pt, weight: "bold")[Key Takeaways]
// The title "Key Takeaways" is shown on this slide
#v(40pt)
#only("2-")[
- Variance measures spread around mean 📊
- Calculated using squared differences 🧮
- Provides insight into data dispersion 🔍
- Always non-negative ≥0
- Higher variance = greater spread 📈
]
// The key takeaways are shown from slide 2 onward
#v(40pt)
#only("2")[
#voiceover("Remember, variance measures the spread around the mean, it's calculated using squared differences, it provides insight into data dispersion, it's always non-negative, and a higher variance indicates a greater spread of the data.")
]
#only("3")[
#voiceover("Next up, we'll dive into standard deviation, which is closely related to variance. Stay tuned! 📺")
]
]
#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Growth Models]
#v(40pt)
#only("1-")[Which growth model adds a constant amount each year?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) Linear]#only("2-")[#text(fill:green)[a) Linear]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Exponential]#only("3-")[#text(fill:red)[b) Exponential]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Logarithmic]#only("4-")[#text(fill:red)[c) Logarithmic]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) None of the above]#only("5-")[#text(fill:red)[d) None of the above]]
#v(40pt)

#only("1")[#voiceover("That's correct, great job! Let's look at why that is the right answer.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) Linear is the correct answer. Linear growth is characterized by a constant increase or decrease by the same amount in each time period.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) Exponential is incorrect. Exponential growth is characterized by increases or decreases by a constant percentage in each time period, not a constant amount.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Logarithmic is also incorrect. Logarithmic growth slows down over time, with the amount added decreasing in each time period.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) None of the above is incorrect because linear growth does indeed add a constant amount each year.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Growth]
#v(40pt)
#only("1-")[Linear growth is characterized by:]
#v(20pt)
#only("2-")[- Constant change (increase or decrease) 📈]
#only("3-")[- Same amount added or subtracted each time period ⏰]
#only("4-")[- Forms a straight line when graphed 📉]

#only("1")[#voiceover("Let's dive deeper into what linear growth means.")]
#only("2")[#voiceover("Linear growth is characterized by a constant change, either an increase or decrease.")]
#only("3")[#voiceover("This means that the same amount is added or subtracted in each time period.")]
#only("4")[#voiceover("When you graph linear growth, it forms a straight line, hence the name 'linear'.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Growth Example]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

years = np.arange(1, 6)
population = 1000 + 100 * (years - 1)

plt.figure(figsize=(8, 6))
plt.plot(years, population, marker='o')
plt.title('Linear Population Growth')
plt.xlabel('Year')
plt.ylabel('Population')
plt.xticks(years)
plt.grid(True)

for x, y in zip(years, population):
    plt.annotate(str(int(y)), (x, y), textcoords="offset points", xytext=(0,10), ha='center')

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Consider a population starting at 1000 that grows by 100 each year.]
#v(20pt)
#only("2-")[Year 1: 1000]
#only("3-")[Year 2: 1000 + 100 = 1100]
#only("4-")[Year 3: 1100 + 100 = 1200]
#only("5-")[And so on...]

#only("1")[#voiceover("Let's look at a concrete example of linear growth.")]
#only("2")[#voiceover("Suppose we have a population that starts at 1000 in year 1.")]
#only("3")[#voiceover("In year 2, the population grows by 100, so it's now at 1100.")]
#only("4")[#voiceover("In year 3, the population again grows by 100, reaching 1200.")]
#only("5")[#voiceover("This pattern continues, with the population increasing by 100 each year. This is a perfect example of linear growth - the change is constant from one time period to the next.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear growth: constant change 📈]
#v(20pt)
#only("2-")[- Same amount added or subtracted each period ⏰]
#only("3-")[- Forms a straight line when graphed 📉]
#only("4-")[- Example: Population growing by 100 each year 👥]

#only("1")[#voiceover("To summarize, linear growth is characterized by a constant change.")]
#only("2")[#voiceover("This means the same amount is added or subtracted in each time period.")]
#only("3")[#voiceover("When graphed, linear growth forms a straight line.")]
#only("4")[#voiceover("We saw an example of a population growing by 100 each year, which is a clear case of linear growth.")]
]
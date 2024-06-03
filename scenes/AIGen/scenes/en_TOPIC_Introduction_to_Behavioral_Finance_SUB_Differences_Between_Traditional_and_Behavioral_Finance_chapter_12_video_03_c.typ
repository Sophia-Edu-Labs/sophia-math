#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior]
#v(40pt)
#only("1-")[Exercise 2 (MC): Herd behavior can lead to \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect.
#only("-1")[a) market stability]#only("2-")[#text(fill:red)[a) market stability]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) accurate predictions]#only("3-")[#text(fill:red)[b) accurate predictions]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) market bubbles or crashes]#only("4-")[#text(fill:green)[c) market bubbles or crashes]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) reduced risk]#only("5-")[#text(fill:red)[d) reduced risk]]

#only("1")[#voiceover("Great job! That's the correct answer. Let's see why.")]
#only("2")[#voiceover("Option a) market stability is incorrect. Herd behavior often leads to the opposite of market stability.")]
#only("3")[#voiceover("Option b) accurate predictions is also incorrect. Herd behavior is not based on accurate predictions but on following the crowd.")]
#only("4")[#voiceover("Option c) market bubbles or crashes is the correct answer. When investors follow the herd, it can lead to overvaluation (bubbles) or panic selling (crashes).")]
#only("5")[#voiceover("Option d) reduced risk is incorrect. Herd behavior often increases risk as it can lead to bubbles and crashes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Herd Behavior Explained]
#v(40pt)  
#only("1-")[- Herd behavior occurs when investors follow the actions of a larger group 🐑]
#v(20pt)
#only("2-")[- This can lead to irrational buying or selling decisions 🤔]
#v(20pt)
#only("3-")[- If many investors buy, prices rise sharply (bubble) 📈]
#v(20pt)
#only("4-")[- If many investors sell, prices fall sharply (crash) 📉]
#v(20pt)
#only("5-")[- Herd behavior amplifies market movements and increases risk ⚠]

#only("1")[#voiceover("Herd behavior in finance refers to when investors follow what the majority of the market is doing, rather than making independent decisions based on their own analysis.")]
#only("2")[#voiceover("This can lead to irrational buying or selling decisions. Investors buy or sell simply because others are doing so, not because the fundamentals justify it.")]
#only("3")[#voiceover("If many investors buy a stock due to herd behavior, the increased demand can drive the price up sharply, leading to a bubble.")]
#only("4")[#voiceover("On the other hand, if many investors sell a stock due to herd behavior, the increased supply can cause the price to fall sharply, leading to a crash.")]
#only("5")[#voiceover("Therefore, herd behavior amplifies market movements and increases risk. It can cause prices to deviate significantly from their fundamental values, leading to bubbles and crashes.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Herd Behavior]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Generate data
x = np.linspace(0, 10, 100)
y1 = 0.2 * np.exp(0.4 * x) 
y2 = 0.2 * np.exp(0.4 * x) + np.random.rand(100) * 0.05

# Create plot
fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, 'b-', linewidth=2, label='Fundamental Value')
ax.plot(x, y2, 'r-', linewidth=2, label='Market Price')

# Add labels and legend
ax.set_xlabel('Time')
ax.set_ylabel('Price')
ax.set_title('Herd Behavior: Price Deviates from Fundamental Value')
ax.legend()

# Show plot
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("2-")[- Blue line: Fundamental value based on company performance 📊]
#only("3-")[- Red line: Market price driven by herd behavior 📈]
#only("4-")[- Deviation increases risk of bubble and crash 💥]

#only("1")[#voiceover("Let's visualize how herd behavior can cause prices to deviate from their fundamental values.")]
#only("2")[#voiceover("The blue line represents the fundamental value of a stock, which is based on the underlying performance and prospects of the company.")]
#only("3")[#voiceover("The red line represents the market price of the stock, which is driven by investor behavior, including herd behavior.")]
#only("4")[#voiceover("As you can see, herd behavior causes the market price to deviate significantly from the fundamental value over time. This deviation increases the risk of a bubble forming and subsequently crashing.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Herd behavior: Investors following the crowd 🐑]
#v(20pt)
#only("2-")[- Leads to irrational buying/selling decisions 🤔]
#v(20pt)  
#only("3-")[- Can cause bubbles (price rises) and crashes (price falls) 📈📉]
#v(20pt)
#only("4-")[- Increases risk in financial markets ⚠]
#v(20pt)
#only("5-")[Great job on identifying the correct answer! 🎉]

#only("1")[#voiceover("To recap, herd behavior in finance is when investors follow the actions of the crowd rather than making independent decisions.")]
#only("2")[#voiceover("This can lead to irrational buying or selling decisions that are not based on the fundamentals.")]
#only("3")[#voiceover("Herd behavior can cause prices to rise sharply, forming a bubble, or fall sharply, causing a crash.")]
#only("4")[#voiceover("As a result, herd behavior increases risk in financial markets by causing prices to deviate from their fundamental values.")]
#only("5")[#voiceover("Great job on identifying that herd behavior can lead to market bubbles or crashes! Keep up the good work.")]
]
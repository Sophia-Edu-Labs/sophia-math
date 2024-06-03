#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory 🧠]
#v(40pt)
#only("1-")[- Developed by Kahneman and Tversky 👥]
#v(20pt)
#only("2-")[- Describes decision-making under risk 🎲]
#v(20pt)
#only("3-")[- Highlights the impact of loss aversion 📉]
#only("1")[
#voiceover("Let's recap the key points about prospect theory. This theory was developed by the psychologists Daniel Kahneman and Amos Tversky.")
]
#only("2")[
#voiceover("Prospect theory describes how people make decisions when they involve risk.")
]
#only("3")[
#voiceover("A key aspect of the theory is the impact of loss aversion. People tend to feel the pain of a loss more intensely than the pleasure of an equivalent gain.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Value Function 📈]
// The title "Value Function" with a chart emoji is shown on this slide
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np
# Define the value function
def value(x):
    if x >= 0:
        return x**0.5
    else:
        return -2*(-x)**0.5
# Create a range of values
x = np.linspace(-10, 10, 100)
# Calculate the corresponding y values
y = [value(i) for i in x]
# Plot the value function
plt.figure(figsize=(6, 4))
plt.plot(x, y, linewidth=2)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('Gains/Losses')
plt.ylabel('Value')
plt.title('Value Function in Prospect Theory')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the value function from prospect theory, which is concave for gains and convex for losses, with a steeper slope for losses. This figure is shown from slide 1 onward.
#only("1")[
#voiceover("The theory proposes a value function that is concave for gains and convex for losses. The function is steeper for losses than for gains, reflecting loss aversion.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Implications 💡]
#v(40pt)
#only("1-")[- Explains irrational behavior 🤔]
#v(20pt)
#only("2-")[- Challenges traditional finance 📚]
#v(20pt)
#only("3-")[- Influences behavioral finance 🧩]
#only("1")[
#voiceover("Prospect theory helps to explain why people sometimes make irrational decisions when it comes to financial matters.")
]
#only("2")[
#voiceover("It challenges the assumptions of traditional finance, which assumes that people are always rational in their decision-making.")
]
#only("3")[
#voiceover("Prospect theory has become a foundational part of behavioral finance, which incorporates insights from psychology into the study of financial behavior.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[1. Developed by Kahneman and Tversky 👥]
#v(20pt)
#only("2-")[2. Describes decision-making under risk 🎲]
#v(20pt)
#only("3-")[3. Highlights loss aversion 📉]
#v(20pt)
#only("4-")[4. Challenges traditional finance 📚]
#only("1")[
#voiceover("To summarize, prospect theory was developed by Kahneman and Tversky.")
]
#only("2")[
#voiceover("It describes how people make decisions when risk is involved.")
]
#only("3")[
#voiceover("A key insight is the impact of loss aversion - losses loom larger than gains.")
]
#only("4")[
#voiceover("Prospect theory challenges the assumptions of traditional finance and has become a cornerstone of behavioral finance.")
]
]
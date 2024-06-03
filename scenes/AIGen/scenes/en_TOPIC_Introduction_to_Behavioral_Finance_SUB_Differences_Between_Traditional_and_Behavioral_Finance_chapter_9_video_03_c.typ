#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory]
#v(40pt)
What does prospect theory highlight the impact of?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) market efficiency]#only("2-")[#text(fill:red)[a) market efficiency]] 
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) rational behavior]#only("3-")[#text(fill:red)[b) rational behavior]]
#v(10pt)  
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) loss aversion]#only("4-")[#text(fill:green)[c) loss aversion]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.  
#only("-4")[d) utility maximization]#only("5-")[#text(fill:red)[d) utility maximization]]

#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Market efficiency is not the focus of prospect theory. Prospect theory is a behavioral finance concept.")]  
#only("3")[#voiceover("Rational behavior is also not the main highlight of prospect theory. In fact, prospect theory often points out irrational behavior.")]
#only("4")[#voiceover("Loss aversion is indeed the key concept that prospect theory highlights the impact of.")]
#only("5")[#voiceover("Utility maximization is a traditional finance concept, not the focus of prospect theory which is a behavioral finance theory.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory and Loss Aversion]
#v(40pt)  
#only("1-")[Prospect theory, developed by Kahneman and Tversky, describes how people make decisions involving risk 🎲]
#v(20pt)
#only("2-")[It particularly highlights the impact of loss aversion 📉]
#v(20pt)  
#only("3-")[Loss aversion refers to the tendency of investors to prefer avoiding losses over acquiring equivalent gains 💰]

#only("1")[#voiceover("Prospect theory, developed by Daniel Kahneman and Amos Tversky, is a behavioral finance theory that describes how people make decisions when risk is involved.")]
#only("2")[#voiceover("A key concept that prospect theory highlights is loss aversion.")]  
#only("3")[#voiceover("Loss aversion refers to the tendency of investors to strongly prefer avoiding losses compared to acquiring equivalent gains.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Prospect Theory and Loss Aversion]
#v(40pt)  
#only("1-")[In other words, the pain of losing is psychologically about twice as powerful as the pleasure of gaining 🧠]
#v(20pt)  
#only("2-")[This leads to irrational decision making, like holding on to losing investments for too long 📊]

#only("1")[#voiceover("In psychological terms, the pain that one experiences in losing a sum of money appears to be about twice as powerful as the pleasure of gaining the same amount.")]  
#only("2")[#voiceover("This loss aversion can lead to irrational decision making, such as holding on to a losing investment for too long, rather than cutting one's losses.")]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Visualization of Loss Aversion]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

gains = np.linspace(0, 10, 100)
losses = np.linspace(-10, 0, 100)

value_gains = gains**0.5
value_losses = -2.5 * (-losses)**0.5

plt.figure(figsize=(8, 6))
plt.plot(gains, value_gains, color='green', label='Gains')
plt.plot(losses, value_losses, color='red', label='Losses')
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.xlabel('Gains/Losses')
plt.ylabel('Psychological Value')  
plt.legend()
plt.title('Prospect Theory Value Function')
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The graph illustrates the psychological impact of gains and losses according to prospect theory.]
#v(20pt)
#only("2-")[- The red curve (losses) is steeper than the green curve (gains) 📈]  
#v(20pt)
#only("3-")[- This asymmetry represents loss aversion: losses hurt more than gains feel good 😞 > 😊]

#only("1")[#voiceover("This graph is a visual representation of the value function in prospect theory. It illustrates the psychological impact of gains and losses.")]
#only("2")[#voiceover("Notice how the red curve, representing losses, is steeper than the green curve, representing gains.")]
#only("3")[#voiceover("This asymmetry is a key feature of prospect theory and represents loss aversion: the idea that losses hurt more than gains feel good.")]  
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)  
#only("1-")[- Prospect theory is a behavioral finance theory 🧠💰]
#v(20pt)  
#only("2-")[- It highlights the impact of loss aversion 📉]
#v(20pt)
#only("3-")[- Loss aversion: tendency to prefer avoiding losses over acquiring equivalent gains 💸]
#v(20pt)  
#only("4-")[- Leads to irrational decision making, like holding on to losing investments 📊]
#v(20pt)
#only("5-")[- Key insight: losses hurt more than gains feel good 😞 > 😊]  

#only("1")[#voiceover("To summarize, prospect theory is a key theory in behavioral finance.")]
#only("2")[#voiceover("It particularly highlights the impact of loss aversion on decision making.")]
#only("3")[#voiceover("Loss aversion refers to the tendency of people to prefer avoiding losses to acquiring equivalent gains.")]  
#only("4")[#voiceover("This can lead to irrational decision making, like holding on to losing investments for too long.")]
#only("5")[#voiceover("The key insight of prospect theory is that losses hurt more than gains feel good, which is a departure from traditional finance theories.")]
]
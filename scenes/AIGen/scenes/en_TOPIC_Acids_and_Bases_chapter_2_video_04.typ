#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's quickly recap the key properties of bases.")
]
#text(size: 30pt, weight: "bold")[Properties of Bases 🧪]
// The title "Properties of Bases" is shown on this slide, along with a test tube emoji
#v(40pt)
#only("2-")[
- Bitter taste 😖
]
#only("2")[
#voiceover("Firstly, bases have a bitter taste, unlike the sour taste of acids.")
]
#v(20pt)
#only("3-")[  
- Slippery feel 🧼
]
#only("3")[
#voiceover("Secondly, bases feel slippery to the touch, a property not shared by acids.")
]
#v(20pt)
#only("4-")[
- Conduct electricity ⚡
]
#only("4")[
#voiceover("Lastly, like acids, bases can conduct electricity when in solution.")
]
]

#slide()[
#only("1")[
#voiceover("Here's a quick summary of these properties.")
]
#text(size: 30pt, weight: "bold")[Bases Summary]
// The title "Bases Summary" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

properties = ['Bitter Taste', 'Slippery Feel', 'Conduct Electricity']

plt.figure(figsize=(6, 4))
plt.bar(properties, [1, 1, 1], color=['#1f77b4', '#ff7f0e', '#2ca02c'])
plt.ylim(0, 1.5)
plt.ylabel('Property')
plt.title('Key Properties of Bases')
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows a bar chart with the three key properties of bases. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Bases have a bitter taste, feel slippery, and can conduct electricity. These properties help distinguish bases from acids and other substances.")
]
]

#slide()[
#only("1")[
#voiceover("Remember these key properties to identify bases in your chemistry studies!")
]
#text(size: 30pt, weight: "bold")[Remember! 🧠]
// The title "Remember!" is shown on this slide, along with a brain emoji
#v(40pt)
#only("2-")[
- Bitter 😖
- Slippery 🧼 
- Conductive ⚡
]
// The three key properties are shown in bullet points from slide 2 onward
#only("2")[
#voiceover("Bitter taste, slippery feel, and the ability to conduct electricity - these are the hallmarks of bases.")
]
]
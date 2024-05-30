#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 2]
#v(40pt)
At which lake is the air pressure highest (assuming the same weather conditions)?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) At Lake Zurich]#only("2-")[#text(fill:red)[a) At Lake Zurich]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is incorrect.
#only("-2")[b) At Lake Neuchâtel]#only("3-")[#text(fill:red)[b) At Lake Neuchâtel]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) At Lake Klöntal]#only("4-")[#text(fill:red)[c) At Lake Klöntal]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) At Lake Maggiore]#only("5-")[#text(fill:green)[d) At Lake Maggiore]]
#only("1")[#voiceover("That's not correct. Let's take a look at the correct solution.")]
#only("2-5")[#voiceover("Let's see why d) At Lake Maggiore is the right choice.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Air Pressure and Altitude]
#v(40pt)
#only("1-")[- Air pressure decreases with increasing altitude 🏔️]
#v(20pt)
#only("2-")[- Lower altitude ⇒ higher air pressure]
#v(20pt)  
#only("3-")[- Altitudes of the lakes:]
  - Lake Maggiore: 193 m
  - Lake Neuchâtel: 429 m 
  - Lake Zurich: 406 m
  - Lake Klöntal: 848 m
#only("1")[#voiceover("It's important to remember that air pressure decreases as altitude increases.")]
#only("2")[#voiceover("This means that locations at lower altitudes will have higher air pressure compared to those at higher altitudes.")]
#only("3")[#voiceover("Let's look at the altitudes of the given lakes. Lake Maggiore is at 193 meters, Lake Neuchâtel at 429 meters, Lake Zurich at 406 meters, and Lake Klöntal at 848 meters.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
lakes = ['Lake Maggiore', 'Lake Neuchâtel', 'Lake Zurich', 'Lake Klöntal']
altitudes = [193, 429, 406, 848]
plt.figure(figsize=(8, 6))
plt.barh(lakes, altitudes)
plt.xlabel('Altitude (m)')
plt.title('Altitudes of Lakes')
plt.gca().invert_yaxis()  
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Among the given lakes, #text(fill:green, weight: "bold")[Lake Maggiore has the lowest altitude at 193 m].]
#v(20pt)
#only("2-")[Therefore, #text(fill:green, weight: "bold")[Lake Maggiore will have the highest air pressure].]
#only("1")[#voiceover("This graph clearly shows that among the given lakes, Lake Maggiore has the lowest altitude at 193 meters.")]  
#only("2")[#voiceover("Consequently, Lake Maggiore will have the highest air pressure, assuming the same weather conditions at all lakes.")]
]

#slide()[  
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Air pressure decreases with increasing altitude 📉]
#v(20pt)
#only("2-")[- Lower altitude ⇒ higher air pressure 🌡️]
#v(20pt)
#only("3-")[- Lake Maggiore has the lowest altitude among the given lakes 🥇]
#v(20pt)
#only("4-")[⇒ Lake Maggiore has the highest air pressure 🎉]
#only("1")[#voiceover("Remember, air pressure decreases as altitude increases.")]
#only("2")[#voiceover("So, locations at lower altitudes will have higher air pressure.")]  
#only("3")[#voiceover("Among the lakes in the question, Lake Maggiore has the lowest altitude.")]
#only("4")[#voiceover("Therefore, Lake Maggiore will have the highest air pressure. Great job on answering this question correctly!")]
]
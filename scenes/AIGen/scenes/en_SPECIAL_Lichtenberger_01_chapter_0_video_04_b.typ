#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Air Pressure and Altitude]
#v(40pt)
#only("1-")[At which lake is the air pressure highest (assuming the same weather conditions)?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) At Lake Zurich]#only("2-")[#text(fill:red)[a) At Lake Zurich]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) At Lake Neuchâtel]#only("3-")[#text(fill:red)[b) At Lake Neuchâtel]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) At Lake Klöntal]#only("4-")[#text(fill:red)[c) At Lake Klöntal]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) At Lake Maggiore]#only("5-")[#text(fill:green)[d) At Lake Maggiore]]
#only("1")[#voiceover("That's not quite right. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Lake Zurich is not the correct answer. It's located at a higher altitude compared to Lake Maggiore, so the air pressure there would be lower.")]
#only("3")[#voiceover("Lake Neuchâtel is also incorrect. While it's at a lower altitude than Lake Zurich, it's still higher than Lake Maggiore.")]
#only("4")[#voiceover("Lake Klöntal is situated at an even higher altitude than Lake Zurich and Lake Neuchâtel, so the air pressure there would be the lowest among the given options.")]
#only("5")[#voiceover("The correct answer is d) At Lake Maggiore. Lake Maggiore has the lowest altitude among the given lakes, and since air pressure decreases with increasing altitude, the air pressure would be highest at Lake Maggiore.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Here's why Lake Maggiore has the highest air pressure:]
#v(20pt)
#only("2-")[🏔 Air pressure decreases with increasing altitude]
#only("3-")[📏 Lake Maggiore has the lowest altitude among the given lakes]
#only("4-")[⇒ Therefore, Lake Maggiore has the highest air pressure]

#only("1")[#voiceover("Let's understand why Lake Maggiore is the correct answer.")]
#only("2")[#voiceover("A key concept to remember is that air pressure decreases as altitude increases. The higher you go, the lower the air pressure becomes.")]
#only("3")[#voiceover("Among the lakes mentioned in the question, Lake Maggiore is located at the lowest altitude.")]
#only("4")[#voiceover("Consequently, since Lake Maggiore is at the lowest altitude and air pressure is highest at lower altitudes, we can conclude that Lake Maggiore would have the highest air pressure among the given options.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt

lakes = ['Lake Klöntal', 'Lake Zurich', 'Lake Neuchâtel', 'Lake Maggiore']
altitudes = [800, 400, 200, 100]  # Approximate altitudes in meters

plt.figure(figsize=(8, 6))
plt.barh(lakes, altitudes)
plt.xlabel('Altitude (meters)')
plt.ylabel('Lakes')
plt.title('Altitude Comparison of Lakes')
plt.grid(axis='x')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[This graph compares the altitudes of the lakes:]
#v(20pt)
#only("2-")[- Lake Maggiore has the lowest altitude 📏]
#only("3-")[- Lower altitude ⇒ Higher air pressure 🌡]
#only("4-")[So, Lake Maggiore has the highest air pressure among the given lakes 🏆]

#only("1")[#voiceover("This bar graph provides a visual comparison of the altitudes of the different lakes.")]
#only("2")[#voiceover("As we can see, Lake Maggiore has the shortest bar, indicating that it is situated at the lowest altitude among the lakes.")]
#only("3")[#voiceover("Remember, lower altitude corresponds to higher air pressure.")]
#only("4")[#voiceover("Therefore, this graph reinforces our conclusion that Lake Maggiore would have the highest air pressure among the given options.")]
]
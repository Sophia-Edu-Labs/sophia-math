#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Change]
#v(40pt)
#only("1-")[If the water level in the reservoir drops by 2 m, how does the pressure at the fourth floor change?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Increase by 0.2 bar]#only("2-")[#text(fill:red)[a) Increase by 0.2 bar]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Decrease by 0.2 bar]#only("3-")[#text(fill:green)[b) Decrease by 0.2 bar]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Remain the same]#only("4-")[#text(fill:red)[c) Remain the same]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Increase by 2 bar]#only("5-")[#text(fill:red)[d) Increase by 2 bar]]
#only("1")[#voiceover("Great job, that's the correct answer!")]
#only("2")[#voiceover("Option a) is incorrect. The pressure will not increase if the water level drops.")]
#only("3")[#voiceover("Option b) is correct. The pressure will indeed decrease by 0.2 bar. Let's see why in the next slide.")]
#only("4")[#voiceover("Option c) is incorrect. The pressure will not remain the same if the water level changes.")]
#only("5")[#voiceover("And option d) is also incorrect. The pressure change is not the same as the water level change.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[Recall the hydrostatic pressure formula: $p = rho g h$]
#v(20pt)
#only("2-")[- $rho$: density of water (1000 kg/m³)]
#only("3-")[- $g$: acceleration due to gravity (9.81 m/s²)]
#only("4-")[- $h$: height of the water column]
#v(40pt)
#only("5-")[If $h$ decreases by 2 m, then $p$ decreases by:]
#v(20pt)
#only("6-")[$ Delta p = rho g Delta h$]
#only("7-")[$ = 1000 dot 9.81 dot 2$]
#only("8-")[$ = 19620 "Pa" = 0.1962 "bar" approx 0.2 "bar"$]
#only("1")[#voiceover("To understand why the pressure decreases by 0.2 bar, let's recall the hydrostatic pressure formula: p equals rho g h.")]
#only("2")[#voiceover("Here, rho is the density of water, which is 1000 kilograms per cubic meter.")]
#only("3")[#voiceover("g is the acceleration due to gravity, 9.81 meters per second squared.")]
#only("4")[#voiceover("And h is the height of the water column.")]
#only("5")[#voiceover("Now, if h decreases by 2 meters, then the pressure p will decrease by:")]
#only("6")[#voiceover("Delta p equals rho g Delta h.")]
#only("7")[#voiceover("Plugging in the values, we get 1000 times 9.81 times 2.")]
#only("8")[#voiceover("This equals 19620 Pascals, which is about 0.2 bar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

h1 = 14  # Initial height
h2 = 12  # Height after water level drops

p1 = 1000 * 9.81 * h1  # Initial pressure
p2 = 1000 * 9.81 * h2  # Pressure after water level drops

heights = [0, h2, h1]
pressures = [0, p2, p1]
labels = ['Ground', '4th Floor (After)', '4th Floor (Before)']

plt.figure(figsize=(8, 6))
plt.plot(pressures, heights, marker='o', markersize=10, linewidth=2)
plt.yticks(heights, labels)
plt.xlabel('Pressure (Pa)')
plt.ylabel('Height')
plt.title('Pressure vs Height')
plt.grid(True)
plt.annotate(f'Pressure Drop: {round((p1-p2)/1e5, 2)} bar', 
             xy=((p1+p2)/2, (h1+h2)/2),
             xytext=(p1*1.1, (h1+h2)/2),
             arrowprops=dict(facecolor='black', shrink=0.05))

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a visual representation of the situation. The blue line shows the pressure at different heights. The red dots mark the pressure at the fourth floor before and after the water level drops by 2 meters. The arrow indicates the pressure drop, which is about 0.2 bar.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Hydrostatic pressure depends on the height of the water column 📏]
#v(20pt)
#only("2-")[- A decrease in water level leads to a decrease in pressure 🔽]
#v(20pt)
#only("3-")[- The pressure change can be calculated using $Delta p = rho g Delta h$ 🧮]
#only("1")[#voiceover("To summarize, hydrostatic pressure depends on the height of the water column.")]
#only("2")[#voiceover("A decrease in water level leads to a decrease in pressure.")]
#only("3")[#voiceover("And the pressure change can be calculated using the formula Delta p equals rho g Delta h.")]
]
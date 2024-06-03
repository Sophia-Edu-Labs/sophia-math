#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Excellent, that's correct! Let's go through the key metrics you need to consider step by step.")
]

#text(size: 30pt, weight: "bold")[Key Metrics]

#v(40pt)

#only("2-")[To compute the spring constant, we need:]
// The introduction to the key metrics is shown from slide 2 onward

#only("2")[
#voiceover("To compute the spring constant needed for your pinball machine, there are several key metrics you need to consider.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Mass of the Pinball]

#v(40pt)

#only("1-")[- Denoted by $m$ 🎱]
// The mass of the pinball is shown from slide 1 onward

#only("1")[
#voiceover("First, you need to know the mass of the pinball, which we denote by m.")
]

#only("2")[
#voiceover("This is crucial because the mass directly influences the amount of energy needed to launch the pinball to the desired height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Height to the Top]

#v(40pt)

#only("1-")[- Denoted by $h$ 📏]

#only("1")[
#voiceover("Next, you need to consider the height to the top of the pinball machine, which we denote by h.")
]

#only("2")[
#voiceover("This height determines the gravitational potential energy the pinball will have at the top, which needs to be provided by the spring at launch.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Spring Compression Distance]

#v(40pt)

#only("1-")[- Denoted by $x$ 🌀]
// The spring compression distance is shown from slide 1 onward

#only("1")[
#voiceover("The spring compression distance, denoted by x, is another key metric.")
]

#only("2")[
#voiceover("This is the distance the spring is compressed before launching the pinball. It directly relates to the elastic potential energy stored in the spring.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gravitational Acceleration]

#v(40pt)

#only("1-")[- Denoted by $g$ 🌍]
// The gravitational acceleration is shown from slide 1 onward

#only("1")[
#voiceover("Lastly, you need to consider the gravitational acceleration, denoted by g.")
]

#only("2")[
#voiceover("This is a constant that relates the pinball's mass and height to its gravitational potential energy.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[The key metrics are:]
// The summary is shown from slide 1 onward

#only("2-")[- Mass of the pinball ($m$) 🎱]
// The mass is shown from slide 2 onward

#only("3-")[- Height to the top ($h$) 📏]
// The height is shown from slide 3 onward

#only("4-")[- Spring compression distance ($x$) 🌀]
// The spring compression distance is shown from slide 4 onward

#only("5-")[- Gravitational acceleration ($g$) 🌍]
// The gravitational acceleration is shown from slide 5 onward

#only("1")[
#voiceover("To summarize, the key metrics you need to consider for your computations are:")
]

#only("2")[
#voiceover("the mass of the pinball,")
]

#only("3")[
#voiceover("the height to the top of the machine,")
]

#only("4")[
#voiceover("the spring compression distance,")
]

#only("5")[
#voiceover("and the gravitational acceleration.")
]

#only("6")[
#voiceover("With these metrics, you'll be able to equate the elastic potential energy of the spring to the gravitational potential energy at the top and solve for the necessary spring constant.")
]
]
#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Buoyancy and Volume]
#v(40pt)
#only("1-")[Of three differently sized objects with the same mass, the one with the medium volume floats. Which other object also floats?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) the small one]#only("2-")[#text(fill:red)[a) the small one]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) the large one]#only("3-")[#text(fill:green)[b) the large one]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) both]#only("4-")[#text(fill:red)[c) both]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) neither]#only("5-")[#text(fill:red)[d) neither]]
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option a), the small one, is incorrect. The small object will have less volume and therefore less buoyancy, so it is less likely to float compared to the medium and large objects.")]
#only("3")[#voiceover("Option b), the large one, is the correct answer. An object with a larger volume will displace more water, increasing its buoyancy. So if the medium object floats, the large one will too.")]
#only("4")[#voiceover("Option c), both, is incorrect. While the large object will also float, the small one likely will not due to its smaller volume and therefore less buoyancy.")]
#only("5")[#voiceover("And option d), neither, is also incorrect, as we know at least the medium object floats, and therefore the large one will too due to its greater volume.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Understand the given information:]
#v(20pt)
#only("2-")[- Three objects have the same mass but different volumes]
#only("3-")[- The medium-volume object floats]
#v(40pt)
#only("4-")[2. Consider the relationship between volume and buoyancy:]
#v(20pt)
#only("5-")[- Buoyancy depends on the volume of water displaced]
#only("6-")[- Larger volume $arrow$ more water displaced $arrow$ more buoyancy 🌊]

#only("1")[#voiceover("Let's go through the solution step by step.")]
#only("2")[#voiceover("First, we understand the given information. We have three objects with the same mass but different volumes.")]
#only("3")[#voiceover("We also know that the medium-volume object floats.")]
#only("4")[#voiceover("Next, we consider the relationship between volume and buoyancy.")]
#only("5")[#voiceover("Buoyancy depends on the volume of water displaced by an object.")]
#only("6")[#voiceover("A larger volume means more water is displaced, which results in more buoyancy.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[3. Deduce which other object will also float:]
#v(20pt)
#only("2-")[- The large object has more volume than the medium one]
#only("3-")[- So, it will have more buoyancy and also float 🎈]
#v(40pt)
#only("4-")[Therefore, the large object will also float.]

#only("1")[#voiceover("Now, we can deduce which other object will also float.")]
#only("2")[#voiceover("The large object has more volume than the medium one.")]
#only("3")[#voiceover("So, it will have more buoyancy and will also float.")]
#only("4")[#voiceover("Therefore, we can conclude that the large object will also float, as it has more volume and thus more buoyancy than the medium object that we know floats.")]
]
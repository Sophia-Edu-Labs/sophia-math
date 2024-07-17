#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
    #only("1")[
        #voiceover("Great job on recognizing the correct answer! Let's go through the solution step by step together.")
    ]
    #text(size: 30pt, weight: "bold")[Absolute Frequency of Deaths]
    #v(40pt)
    #only("2-")[- Given: 10,000 COVID-19 cases 🦠]
    #v(20pt)
    #only("3-")[- Deaths: 150 💀]
    #v(20pt)
    #only("4-")[- Absolute frequency = Total number of deaths]
    #v(20pt)
    #only("5-")[- Answer: 150 deaths]
    #only("2")[
        #voiceover("We are given that there are ten thousand COVID-19 cases.")
    ]
    #only("3")[
        #voiceover("Out of these, one hundred fifty people died.")
    ]
    #only("4")[
        #voiceover("The absolute frequency is simply the total number of deaths.")
    ]
    #only("5")[
        #voiceover("Therefore, the absolute frequency of deaths is one hundred fifty.")
    ]
]


#slide()[
    #only("1")[
        #voiceover("Now let's visualize the data to better understand the concept.")
    ]
    #text(size: 30pt, weight: "bold")[Visualization]
    #v(40pt)
    #box()[
        #morphchildren(id: "plot")[
            #figure(
                pyimage(
```

                    import matplotlib.pyplot as plt

labels = ['Survived', 'Died']
sizes = [9850, 150]
colors = ['#66b3ff', '#ff6666']
explode = (0, 0.1)

plt.pie(sizes, explode=explode, labels=labels, colors=colors,
        autopct='%1.1f%%', shadow=True, startangle=140)
plt.axis('equal')
plt.title('COVID-19 Cases Outcome')
plt.show()
                ```,
                width: 360pt),
            )
        ]
    ]
    #only("1")[
        #voiceover("Here, we have a pie chart showing the outcomes of the ten thousand COVID-19 cases. The blue section represents the survivors, while the red section represents the deaths.")
    ]
]


#slide()[
    #only("1")[
        #voiceover("Let's summarize what we have learned.")
    ]
    #text(size: 30pt, weight: "bold")[Summary]
    #v(40pt)
    #only("2-")[- Total cases: 10,000 🦠]
    #v(20pt)
    #only("3-")[- Deaths: 150 💀]
    #v(20pt)
    #only("4-")[- Absolute frequency of deaths = 150]
    #only("2")[
        #voiceover("We started with a total of ten thousand COVID-19 cases.")
    ]
    #only("3")[
        #voiceover("Out of these, one hundred fifty people died.")
    ]
    #only("4")[
        #voiceover("Thus, the absolute frequency of deaths is one hundred fifty.")
    ]
]
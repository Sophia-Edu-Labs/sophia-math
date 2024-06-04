#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Umweltbedenken]
#v(40pt)
Was ist ein häufiges Umweltproblem, das mit Wasserkraftwerken verbunden ist?
#v(40pt)

// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-1")[a) Luftverschmutzung]#only("2-")[#text(fill:red)[a) Luftverschmutzung]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) Lärmbelästigung]#only("3-")[#text(fill:red)[b) Lärmbelästigung]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-3")[c) Lebensraumstörung]#only("4-")[#text(fill:green)[c) Lebensraumstörung]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) Treibhausgasemissionen]#only("5-")[#text(fill:red)[d) Treibhausgasemissionen]]

#only("1")[#voiceover("Leider war das nicht die richtige Antwort.")]
#only("2")[#voiceover("Luftverschmutzung ist kein großes Problem bei Wasserkraftwerken, da sie keine Schadstoffe in die Luft abgeben wie fossile Kraftwerke.")]
#only("3")[#voiceover("Lärmbelästigung ist ebenfalls kein bedeutendes Problem. Während der Bauphase kann es zu Lärm kommen, aber der Betriebsgeräuschpegel ist in der Regel niedrig.")]
#only("4")[#voiceover("Lebensraumstörung ist jedoch ein echtes Problem. Der Bau von Dämmen kann große Flächen überfluten, Ökosysteme verändern und Wildtiere vertreiben.")]
#only("5")[#voiceover("Die Treibhausgasemissionen sind bei Wasserkraft minimal, da es sich um eine erneuerbare Energiequelle handelt, die keine fossilen Brennstoffe verbrennt.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Lebensraumstörung]
#v(40pt)
Wie stören Wasserkraftwerke Lebensräume? 🌿🦌
#v(20pt)

#only("1-")[- Überflutung von Landflächen 🌊]
#only("2-")[- Veränderung der Flussökosysteme 🐟]
#only("3-")[- Blockierung von Fischwanderungsrouten 🐠]
#only("4-")[- Änderungen der Wassertemperatur und Sauerstoffgehalt 🌡]

#only("1")[#voiceover("Erstens überfluten die Stauseen hinter den Dämmen große Landflächen, was Wälder, Feuchtgebiete und andere Lebensräume zerstören kann.")]
#only("2")[#voiceover("Zweitens verändern Dämme den natürlichen Fluss von Flüssen, was das Ökosystem für Wasserpflanzen und -tiere stromabwärts verändert.")]
#only("3")[#voiceover("Drittens können Dämme die Wanderungsrouten von Fischen blockieren und sie daran hindern, ihre Laichgebiete zu erreichen.")]
#only("4")[#voiceover("Schließlich können Dämme die Wassertemperatur und den Sauerstoffgehalt verändern, was das Wasserleben schädigen kann.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Minderungsstrategien]
#v(40pt)
Wie können diese Auswirkungen gemindert werden? 🤔
#v(20pt)

#only("1-")[- Sorgfältige Standortwahl 🗺]
#only("2-")[- Fischleitern und -passagen 🐟➡]
#only("3-")[- Aufrechterhaltung minimaler Wasserflüsse 💧]
#only("4-")[- Bemühungen zur Wiederherstellung von Lebensräumen 🌳]

#only("1")[#voiceover("Eine sorgfältige Standortwahl kann helfen, die überflutete Fläche zu minimieren und besonders empfindliche Lebensräume zu vermeiden.")]
#only("2")[#voiceover("Fischleitern und -passagen können gebaut werden, um Fischen zu ermöglichen, den Damm zu umgehen und ihre Laichgebiete zu erreichen.")]
#only("3")[#voiceover("Die Aufrechterhaltung minimaler Wasserflüsse kann helfen, die Flussökosysteme stromabwärts zu erhalten.")]
#only("4")[#voiceover("Und Bemühungen zur Wiederherstellung von Lebensräumen können helfen, die Auswirkungen des Lebensraumverlusts zu mindern.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]
#v(40pt)
#only("1-")[- Wasserkraftwerke können Lebensräume durch Überflutung, Veränderung von Flussökosystemen, Blockierung von Fischwanderungen und Änderung der Wasserbedingungen stören 🌊🐟]
#v(20pt)
#only("2-")[- Minderungsstrategien umfassen sorgfältige Standortwahl, Fischpassagen, Aufrechterhaltung von Wasserflüssen und Wiederherstellung von Lebensräumen 🗺🐟➡🌳]
#v(20pt)
#only("3-")[- Umweltbelange müssen bei der Entwicklung von Wasserkraft sorgfältig berücksichtigt werden 🌿💭]

#only("1")[#voiceover("Zusammenfassend lässt sich sagen, dass Wasserkraftwerke Lebensräume auf verschiedene Weise erheblich stören können.")]
#only("2")[#voiceover("Es gibt jedoch Strategien, die helfen können, diese Auswirkungen zu mindern.")]
#only("3")[#voiceover("Es ist wichtig, Umweltbelange bei der Planung und dem Betrieb von Wasserkraftwerken sorgfältig zu berücksichtigen.")]
]
#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Funciones Inversas]
// El título "Funciones Inversas" se muestra en esta diapositiva
#v(40pt)
#only("1-")[Si $f(x)$ y $g(x)$ son funciones inversas, ¿qué es cierto sobre sus dominios y rangos?]
// La pregunta se muestra desde la diapositiva 1 en adelante
#v(40pt)
#only("2-")[a) Son los mismos]
// La opción de respuesta a) se muestra desde la diapositiva 2 en adelante
#v(10pt)
#only("3-")[b) Están intercambiados]
// La opción de respuesta b) se muestra desde la diapositiva 3 en adelante
#v(10pt)
#only("4-")[c) Son complementarios]
// La opción de respuesta c) se muestra desde la diapositiva 4 en adelante
#v(10pt)
#only("5-")[d) No están relacionados]
// La opción de respuesta d) se muestra desde la diapositiva 5 en adelante
#only("1")[#voiceover("Consideremos la siguiente pregunta sobre funciones inversas. Si f de x y g de x son funciones inversas, ¿qué es cierto sobre sus dominios y rangos?")]
#only("2")[#voiceover("¿Son los dominios y rangos de las funciones inversas los mismos,")]
#only("3")[#voiceover("o están intercambiados,")]
#only("4")[#voiceover("o tal vez son complementarios,")]
#only("5")[#voiceover("o no están relacionados?")]
]#questionDef(
questionText: "Si $f(x)$ y $g(x)$ son funciones inversas, ¿qué es cierto sobre sus dominios y rangos?",
answerOptions: ("Son los mismos", "Están intercambiados", "Son complementarios", "No están relacionados"),
correctAnswerIndex: 1,
)
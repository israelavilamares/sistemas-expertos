(defrule rule-1
    (enfermedad 
        (signo $? "presencia de sangre al toser" $?)
        (name ?e))
    =>
    (printout t "La enfermedad es: " ?e crlf))


(defrule rule-2
    (enfermedad 
        (signo $?s1 "olor fuerte de la orina" "sensibilidad en la parte inferior del abdomen" $?)
        (sintoma $?s2 "Dolor y ardor al orinar" "necesidad frecuente de orinar" "orina turbia o con sangre" $?)
        (name ?e))
    =>
    (printout t ?e crlf))

(defrule rule-3
    (enfermedad 
        (signo $?s1 "Erupción cutanea" "sensibilidad a la luz" $?)
        (sintoma $?s2 "Fiebre" "rigidez en el cuello" "dolor de cabeza intenso" "confusion" $?)
        (name ?e))
    =>
    (printout t ?e crlf))

(defrule rule-4
    (enfermedad 
        (signo $?s1 "respiración rapida" "cianosis piel azulada" $?)
        (sintoma $?s2 "Tos persistente" "fiebre" "dificultad para respirar" "dolor en el pecho" $?)
        (name ?e))
    =>
    (printout t ?e crlf))

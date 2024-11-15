(deftemplate enfermedad

	(slot name (type STRING))
   	(multislot signo (type STRING))
   	(multislot sintoma (type STRING))
)

(deffacts enfermedades
	
	(enfermedad (name "infeccion Urinaria") 
	(signo "olor fuerte de la orina" "sensibilidad en la parte inferior del abdomen") (sintoma "Dolor y ardor al orinar" "necesidad frecuente de orinar" "orina turbia o con sangre"))

	(enfermedad (name "Tuberculosis") (signo "presencia de sangre al toser" "sudores nocturnos") (sintoma "Fiebre" "tos persistente" "pérdida de peso" "fatiga"))

	(enfermedad (name "meningitis bacteriana") (signo "Erupción cutanea" "sensibilidad a la luz") (sintoma "Fiebre" "rigidez en el cuello" "dolor de cabeza intenso" "confusion"))

	(enfermedad (name "neumonia") (signo "respiración rapida" "cianosis piel azulada") (sintoma "Tos persistente" "fiebre" "dificultad para respirar" "dolor en el pecho"))

	(enfermedad (name "Salmonelosis") (signo "vomitos" "perdida de peso") (sintoma "Diarrea" "fiebre" "calambres abdominales"))

	(enfermedad (name "gripa") (signo "Nariz congestionada" "escalofrios") (sintoma "Fiebre" "dolor de cabeza" "dolor muscular" "tos" "fatiga"))

	(enfermedad (name "COVID-19") (signo "perdida del sentido del olfato y gusto" "coloracion azulada en los labios o el rostro") (sintoma "Fiebre" "tos" "dificultad para respirar" "fatiga"))

	(enfermedad (name "VIH/SIDA") (signo "infecciones por hongos en la boca" "sarcoma de Kaposi") (sintoma "Fiebre" "fatiga" "pérdida de peso" "ganglios linfáticos inflamados" "diarrea")) 

	(enfermedad (name "Herpes Simple") (signo "Enrojecimiento" "hinchazon") (sintoma "Ampollas o llagas dolorosas alrededor de los labios o la zona genital" "dolor" "picazon")) 

	(enfermedad (name "Gastroenteritis Viral") (signo "piel fría y humeda" "ojos hundidos") (sintoma "Diarrea" "vómitos" "fiebre" "dolor abdominal"))

)
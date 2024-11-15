;;insertar
(deffunction insertar-enfermedad (?name ?signo ?sintoma)
   (assert (enfermedad (name ?name) (signo ?signo) (sintoma ?sintoma)))
)

;;eliminar

(deffunction eliminar-enfermedad (?name)
   (do-for-all-facts ((?f enfermedad))
                     (eq ?name (fact-slot-value ?f name))
                     (retract ?f))
)


;;actualizar 

(deffunction actualizar-enfermedad (?name ?nuevo-signo ?nuevo-sintoma)
   (do-for-all-facts ((?f enfermedad)) 
                     (eq ?name (fact-slot-value ?f name))
                     (retract ?f))
   (assert (enfermedad (name ?name) (signo ?nuevo-signo) (sintoma ?nuevo-sintoma)))
)
   
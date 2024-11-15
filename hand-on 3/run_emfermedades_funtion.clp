(load "load_emfermedades.clp")

;; inicializamos con el temple

(reset)

;;-----------------------------
(load "load_emfermedades_function.clp")

(insertar-enfermedad "Gripe" "Congestión nasal" "Fiebre y dolor de cabeza")

;;mostramos

(facts)

;; 
 (actualizar-enfermedad "gripa" "cuello dolor" "dolor del higado")

 (facts)

(eliminar-enfermedad "gripa")
(facts)

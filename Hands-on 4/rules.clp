;24 meses sin intreses con tarjetabanamex y por comprar iphone 16
(defrule rule-1 

	(smartphone (modelo  "iPhone 16"))
	(tarjetascred (banco "banamex") (grupo "oro") )
	=> 
	(printout t "puede tener los 24 meses sin intereses" crlf)
	
)


; 12 meses sinintereces ocn tarjeta livepool y por comprar telefono samsung
(defrule rule-2

	(smartphone (modelo  "Samsung Note 21"))
	(tarjetascred (banco "Liverpool") (grupo "VISA") )
	=> 
	(printout t "puede tener los 12 meses sin intereses" crlf)	
)


;descuento y agregar computadora y telefono comprado 
(defrule rule-3
  (orden (part-number ?part-num1) (tipo "smartphone") (marca "apple") (modelo "iPhone 16") (qty ?qty1))
  (orden (part-number ?part-num2) (tipo "computadora") (marca "apple") (modelo "MacBook Air") (qty ?qty2))
  (line-item (part-number ?pd) (customer-id ?cust-id))
  =>
  (bind ?tel-price (* 23999 ?qty1))
  (bind ?mac-price (* 29999 ?qty2))

  ; Creación del hecho smartphone 
  (assert (smartphone 
            (part-number ?part-num1) 
            (marca "apple") 
            (modelo "iPhone 16") 
            (color "negro") 
            (price 23999) 
            (camara "48MP")
            (qty ?qty1)
          ))

  ; Creación del hecho computadora 
  (assert (computadoras 
            (part-number ?part-num2) 
            (marca "apple") 
            (modelo "MacBook Air") 
            (color "plateado") 
            (price 29999) 
            (procesador "M1")
            (qty ?qty2)
          ))

  ; Calcular el precio total
  (bind ?total-price (+ ?tel-price ?mac-price))
   
  ; Generar un ID único para el vale
  (bind ?id-vale (gensym))
   
  (assert (Vales 
            (id-vale ?id-vale) 
            (customer-id ?cust-id) 
            (monto 120) 
            (tipo "fidelidad")))

  (printout t "Bono de $" (/ ?total-price 1000) " por la compra de un iPhone 16 y una MacBook Air." crlf)
)


; descuneto del al cliente 
(defrule rule-4
  ?veriforden <- (order (order-number ?num-orden) (customer-id ?id-cliente))
  (line-item (order-number ?num-orden) (part-number ?smartphone-part-number))
  (orden (order-id ?order-id) (part-number ?smartphone-part-number) (tipo "smartphone"))
  ?funda <- (accesorios (nombre "Funda para celular") (price ?precio-funda))
  ?mica <- (accesorios (nombre "Mica") (price ?precio-mica))
  =>
  (bind ?descuento-funda (* ?precio-funda 0.85))
  (bind ?descuento-mica (* ?precio-mica 0.85))
  
  (printout t "El cliente con ID " ?id-cliente " tiene un 15% de descuento en accesorios." crlf)
  (printout t "Precio con descuento para la funda: $" ?descuento-funda crlf)
  (printout t "Precio con descuento para la mica: $" ?descuento-mica crlf)
) 

(defrule identificar-mayorista
  (orden (order-id ?order-id) (qty ?quantity) (part-number ?pid))
  (test (> ?quantity 9))
  (line-item (order-number ?orNum) (part-number ?pid) (customer-id ?custId) (quantity ?quantity))
  ?customer <- (customer (customer-id ?custId) (kind-of-client ?kind))
  =>
  (retract ?customer)
  (assert (customer (customer-id ?custId) (kind-of-client "Mayorista")))
  (assert (order (order-number ?orNum) (customer-id ?custId)))
  (printout t "El cliente con ID " ?custId " es identificado como Mayorista." crlf)
)


(defrule MAIN::identificar-minorista
   (orden (order-id ?order-id) (qty ?quantity) (part-number ?pid))
   (test (<= ?quantity 9))
   (line-item (order-number ?orNum) (part-number ?pid) (customer-id ?custId) (quantity ?quantity))
   ?customer <- (customer (customer-id ?custId) (kind-of-client ?kind))
   =>
  (retract ?customer)
  (assert (customer (customer-id ?custId) (kind-of-client "Mayorista")))
  (assert (order (order-number ?orNum) (customer-id ?custId)))
  (printout t "El cliente con ID " ?custId " es identificado como Minoria." crlf)
)
  

(defrule rule-5
  (orden (qty ?quantity))
  (test(> ?quantity 9) )
  => 
  (printout t "mayorista" crlf)
  
)


(defrule rule-6
  (orden (qty ?quantity))
  (test(< ?quantity 9) )
  => 
  (printout t "minurista" crlf)
  
)

(defrule rule-7
  ?orden <- (orden (tipo ?tipo) (marca ?marca) (modelo ?modelo) (qty ?cantidad))
  (test (>= ?cantidad 10))
  =>
  (bind ?descuento (* (/ (- ?cantidad (mod ?cantidad 10)) 10) 5))
  (printout t "Descuento aplicado: " ?descuento "%" crlf)
)

;descuento
(defrule rule-8
  (customer (customer-id ?id))              
  (line-item (customer-id ?cid) (quantity ?quty))  
  (test (> ?quty 5))                        
  =>
  (printout t "Cliente con ID " ?id " recibe un vale de descuento del 20% para su próxima compra." crlf)
)


;descuento a cliente
(defrule rule-9
  (order (order-number ?order-num) (customer-id ?cust-id))
  (line-item (order-number ?order-num) (part-number ?part-num))
  (orden (order-id ?order-id) (part-number ?part-num) (modelo "iPhone 16"))
  =>
  (assert (Vales 
            (id-vale (gensym*)) 
            (monto 50) 
            (customer-id ?cust-id)  
            (tipo "Descuento Especial por Compra iPhone 16")))
  (printout t "El cliente con ID " ?cust-id " ha recibido un vale de $50 por la compra de un iPhone 16." crlf)
)

(defrule rule-10
  (order (order-number ?order-num) (customer-id ?cust-id))
  (line-item (order-number ?order-num) (part-number ?part-num))
  (orden (order-id ?order-id) (part-number ?part-num) (modelo "iPhone 16"))
  =>
  (assert (Vales 
            (id-vale (gensym*)) 
            (monto 50) 
            (customer-id ?cust-id)  
            (tipo "Descuento Especial por Compra iPhone 16")))
  (printout t "El cliente con ID " ?cust-id " ha recibido un vale de $50 por la compra de un iPhone 16." crlf)
)

(defrule rule-11-meses-sin-intereses
  (orden (order-id ?order-id) (part-number ?part-num) (modelo "iPhone 16"))
  (tarjetascred (banco ?ban) (grupo ?grcred))
  =>
  (printout t "tiene 3 meses sin intereses con " ?grcred crlf)
)

(defrule rule-12
  (orden (order-id ?order-id) (part-number ?numPa) (tipo "smartphone") (marca "apple") (modelo "iPhone 16") (qty ?qt))
  =>
  (printout t "Agrega un MacBook Air y con tu número de cliente obtén un vale de regalo." crlf)
)

;agregar vale
(defrule rule-13
  (orden (part-number ?part-num) (modelo "iPhone 16"))
  (orden (part-number ?part-num) (modelo "MacBook Air"))
  (line-item (order-number ?order-num) (part-number ?part-num)) 
  (order (order-number ?order-num) (customer-id ?cust-id))
 
  => 
   (assert (Vales 
    (id-vale (gensym*)) 
    (monto 50) 
    (customer-id ?cust-id)  
    (tipo "Regalo")))
    (printout t "El cliente con ID " ?cust-id " ha recibido un  de $200 pesos en vales" crlf)
  
)

;recibir mensajes si el cliente es mal comprador
(defrule text-cust (customer (customer-id ?cid) (name ?name) (phone ?phone))
(not (order (order-number ?order) (customer-id ?cid)))
=>
(assert (text-customer ?name ?phone "tienes 25% desc prox compra"))
(printout t ?name " 3313073905 tienes 25% desc prox compra" ))


;enviar paquete gratis si compro el iphone 16 con la cantidad de 15

(defrule rule-15
  (orden (order-id ?order-id) (modelo "iPhone 16") (part-number ?pd) (qty ?quty))
  (line-item (part-number ?pd) (customer-id ?cust-id) (order-number ?order-num))
  (order (order-number ?order-num) (customer-id ?cust-id))
  (test (>= ?quty 15))
  =>
  (assert (EnvioGratis ?order-num))
  (printout t "El cliente con ID " ?cust-id " tiene envío gratuito para la orden " ?order-num "." crlf)
)


;promocion especial por tarjeta
(defrule rule-16
  (order (order-number ?order-num) (customer-id ?cust-id))
  (tarjetascred (banco ?banco) (grupo "Santander"))
  =>
  (printout t "Cliente con ID " ?cust-id " tiene 18 meses sin intereses en su compra con American Express." crlf)
)

;bono
(defrule rule-17
   (customer (customer-id ?cust-id))
   (order (customer-id ?cust-id))
   =>
   (bind ?order-count 0)
   (foreach ?order (find-all-facts ((?o order)) (eq ?cust-id (fact-slot-value ?o customer-id)))
      (bind ?order-count (+ ?order-count 1))
   )
   (if (> ?order-count 3) then
     (bind ?id-vale (gensym))
     (bind ?bono 150)  ; Define el valor del bono aquí
       (assert 
       (Vales (id-vale ?id-vale) 
              (customer-id ?cust-id) 
              (monto ?bono) 
              (tipo "fidelidad")))
      (printout t "Cliente con ID " ?cust-id " recibe un bono de $150 por haber realizado más de 3 pedidos en el año." crlf)
   )
)

;; Define a rule for calling  custormers who have not bought ...

(defrule call-cust 
(customer (customer-id ?cid) (name ?name) (phone ?phone))
(not (order (order-number ?order) (customer-id ?cid)))

=>

(assert (call-customer ?name ?phone "tienes 25% desc prox compra"))
(printout t ?name " 3313073905 tienes 25% desc prox compra" ))


;vale
(defrule rule-19-bono
  (orden (order-id ?order-id) (tipo ?tipo) (marca ?marca) (modelo ?modelo) (qty ?cantidad))
  (line-item (part-number ?pd) (customer-id ?cust-id))
  (test (>= ?cantidad 10))
  =>
  (bind ?bono (* (/ (- ?cantidad (mod ?cantidad 10)) 10) 1000))
  (bind ?id-vale (gensym))
  (assert (Vales (id-vale ?id-vale) 
                 (customer-id ?cust-id) 
                 (monto ?bono) 
                 (tipo"fidelidad")))

   (printout t "Bono otorgado: $" ?bono " MXN por la compra de " ?cantidad " unidades" crlf)
)



;; 20 Define a rule for finding customers and their shopping info
(defrule customer-shopping
   (customer (customer-id ?id) (name ?cn))
   (order (order-number ?order) (customer-id ?id))
   (line-item (order-number ?order) (part-number ?part))
   (orden (part-number ?part) (tipo ?pn))
   =>
   (printout t ?cn " bought  " ?pn crlf))



(defrule rule-21
  
    (orden (qty ?quantity))
    (test(> ?quantity 9) )
    => 
    (printout t " por tu compra a mayor tienes 24 meses sin intereses"  crlf)
    
)

   ;; Actualizar 

(defrule actualizar-stock-smartphone
  ?orden <- (orden (order-id ?order-id) (part-number ?part-number) (tipo "smartphone") (marca ?marca) (modelo ?modelo) (qty ?cantidad))
  ?producto <- (smartphone (part-number ?part-number) (marca ?marca) (modelo ?modelo) (qty ?stock-cant))
  (not (stock-actualizado (order-id ?order-id)))
  (test (numberp ?stock-cant))
  (test (numberp ?cantidad))
  =>
  (retract ?producto)
  (assert (smartphone (part-number ?part-number) (marca ?marca) (modelo ?modelo) (qty (- ?stock-cant ?cantidad))))
  (assert (stock-actualizado (order-id ?order-id)))
  (printout t "Actualizado el stock de " ?marca " " ?modelo ". Cantidad en stock: " (- ?stock-cant ?cantidad) crlf)
)

(defrule actualizar-stock-computadoras
  ?orden <- (orden (order-id ?order-id) (part-number ?part-number) (tipo "computadora") (marca ?marca) (modelo ?modelo) (qty ?cantidad))
  ?producto <- (computadoras (part-number ?part-number) (marca ?marca) (modelo ?modelo) (qty ?stock-cant))
  (not (stock-actualizado (order-id ?order-id)))
  (test (numberp ?stock-cant))
  (test (numberp ?cantidad))
  =>
  (retract ?producto)
  (assert (computadoras (part-number ?part-number) (marca ?marca) (modelo ?modelo) (qty (- ?stock-cant ?cantidad))))
  (assert (stock-actualizado (order-id ?order-id)))
  (printout t "Actualizado el stock de " ?marca " " ?modelo ". Cantidad en stock: " (- ?stock-cant ?cantidad) crlf)
)

(defrule actualizar-stock-accesorios
  ?orden <- (orden (order-id ?order-id) (part-number ?part-number) (tipo "accesorio") (marca ?nombre) (qty ?cantidad))
  ?producto <- (accesorios (part-number ?part-number) (nombre ?nombre) (qty ?stock-cant))
  (not (stock-actualizado (order-id ?order-id)))
  (test (numberp ?stock-cant))
  (test (numberp ?cantidad))
  =>
  (retract ?producto)
  (assert (accesorios (part-number ?part-number) (nombre ?nombre) (qty (- ?stock-cant ?cantidad))))
  (assert (stock-actualizado (order-id ?order-id)))
  (printout t "Actualizado el stock de " ?nombre ". Cantidad en stock: " (- ?stock-cant ?cantidad) crlf)
)
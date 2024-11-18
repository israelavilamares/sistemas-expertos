(deftemplate smartphone
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot camara)
 (slot qty (default 100))
)

(deftemplate computadoras
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot procesador)
  (slot qty (default 100))
)

(deftemplate accesorios
  (slot part-number)  
  (slot nombre)
  (slot color)
  (slot price)
  (slot qty (default 100))
)

(deftemplate orden
  (slot part-number)  
  (slot tipo)
  (slot marca)
  (slot modelo)
  (slot qty (default 1)))

(deftemplate customer
  (slot customer-id)
  (multislot name)
  (multislot address)
  (slot phone)
  (slot kind-of-client)
)

(deftemplate order
  (slot order-number)
  (slot customer-id)
)

(deftemplate line-item
  (slot order-number)
  (slot part-number)
  (slot customer-id)
  (slot quantity (default 1)))

(deftemplate tarjetascred
  (slot banco)
  (slot grupo)
  (slot exp-date)
)

(deftemplate Vales
    (slot id-vale)
    (slot customer-id) 
    (slot monto)
    (slot tipo)
  )

(deftemplate stock-actualizado
  (slot part-number)
)
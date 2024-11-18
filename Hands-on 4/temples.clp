(deftemplate smartphone
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot camara)
 (slot qty (default 1))
)

(deftemplate computadoras
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot procesador)
  (slot qty (default 1))
)

(deftemplate accesorios
  (slot part-number)  
  (slot nombre)
  (slot color)
  (slot price)
  (slot qty (default 1))
)

(deftemplate orden
  (slot part-number)  
  (slot tipo)
  (slot marca)
  (slot modelo)
  (slot qty (default 1)))

(deftemplate product
  (slot part-number)
  (slot name)
  (slot category)
  (slot price)
)

(deftemplate customer
  (slot customer-id)
  (multislot name)
  (multislot address)
  (slot phone)
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

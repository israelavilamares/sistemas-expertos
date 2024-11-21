(deftemplate smartphone
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot camara)
  (slot qty)
)

(deftemplate computadoras
  (slot part-number)  
  (slot marca)
  (slot modelo)
  (slot color)
  (slot price)
  (slot procesador)
  (slot qty )
)

(deftemplate accesorios
  (slot part-number)  
  (slot nombre)
  (slot color)
  (slot price)
  (slot qty )
)

(deftemplate orden
  (slot order-id)
  (slot part-number)
  (slot tipo)
  (slot marca)
  (slot modelo)
  (slot qty)
)
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
  (slot order-id)
)
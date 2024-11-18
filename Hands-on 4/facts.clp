(deffacts customers
  (customer (customer-id 101) (name joe) (address "bla bla bla") (phone 3313073905))
  (customer (customer-id 102) (name mary) (address "bla bla bla") (phone 333222345))
  (customer (customer-id 103) (name bob) (address "bla bla bla") (phone 331567890)) 
)

(deffacts orders 
  (order (order-number 300) (customer-id 102))
  (order (order-number 301) (customer-id 103))
)


(deffacts smartphones
  (smartphone (part-number "iphone13-001") (marca "Apple") (modelo "iPhone 13") (color "Blanco") (price 17000) (camara "12MP"))
  (smartphone (part-number "samsung-note21-001") (marca "Samsung") (modelo "Samsung Note 21") (color "Negro") (price 19999) (camara "108MP"))
  (smartphone (part-number "pixel6-001") (marca "Google") (modelo "Pixel 6") (color "Verde") (price 11999) (camara "50MP"))
  (smartphone (part-number "oneplus-9pro-001") (marca "OnePlus") (modelo "9 Pro") (color "Plateado") (price 14600) (camara "48MP"))
  (smartphone (part-number "iphone16-001") (marca "Apple") (modelo "iPhone 16") (color "Morado") (price 23999) (camara "58MP"))
  (smartphone (part-number "xiaomi-mi11-001") (marca "Xiaomi") (modelo "Mi 11") (color "Azul") (price 14999) (camara "108MP"))
)


(deffacts computadoras
  (computadoras (marca "Dell") (modelo "XPS 13") (color "Plata") (price 25999) (procesador "Intel i7"))
  (computadoras (marca "HP") (modelo "Spectre x360") (color "Negro") (price 23999) (procesador "Intel i5"))
  (computadoras (marca "Apple") (modelo "MacBook Air") (color "Gris Espacial") (price 29999) (procesador "M1"))
  (computadoras (marca "Lenovo") (modelo "ThinkPad X1") (color "Negro") (price 27999) (procesador "Intel i7"))
  (computadoras (marca "Asus") (modelo "ZenBook 14") (color "Azul") (price 17999) (procesador "AMD Ryzen 5"))
  (computadoras (marca "Acer") (modelo "Swift 3") (color "Plateado") (price 14999) (procesador "Intel i5"))
)

(deffacts accesorios
  (accesorios (nombre "Cargador inalámbrico") (color "Blanco") (price 499))
  (accesorios (nombre "Audífonos Bluetooth") (color "Negro") (price 899))
  (accesorios (nombre "Mica") (color "Negro") (price 150))
  (accesorios (nombre "Mouse inalámbrico") (color "Gris") (price 799))
  (accesorios (nombre "Funda para laptop") (color "Azul") (price 699))
  (accesorios (nombre "Soporte para monitor") (color "Negro") (price 999))
  (accesorios (nombre "Funda para celular") (color "Gris") (price 299))
)

(deffacts items-list
  (line-item (order-number 300) (customer-id 102) (part-number 1234))
  (line-item (order-number 301) (customer-id 103) (part-number 2341) (quantity 10))
)

(deffacts se-compro-con-tarjetascred
  (tarjetascred (banco "BBVA") (grupo "VISA") (exp-date "01-12-23"))
  (tarjetascred (banco "banamex") (grupo "oro") (exp-date "15-11-24"))
  (tarjetascred (banco "Santander") (grupo "VISA") (exp-date "01-08-25"))
  (tarjetascred (banco "HSBC") (grupo "Mastercard") (exp-date "01-09-23"))
  (tarjetascred (banco "Scotiabank") (grupo "platino") (exp-date "10-12-24"))
  (tarjetascred (banco "Liverpool") (grupo "VISA") (exp-date "10-12-24"))
)

(deffacts vales 
  (Vales (id-vale "12345") (monto 500) (customer-id 101) (tipo "Regalo"))
  (Vales (id-vale "12346") (monto 1000) (customer-id 102) (tipo "Promoción")) 
  (Vales (id-vale "12347") (monto 1500) (customer-id 103) (tipo "Descuento")) 
  (Vales (id-vale "12348") (monto 2000)  (customer-id 104) (tipo "Fidelidad")) 
  (Vales (id-vale "12349") (monto 2500)  (customer-id 105) (tipo "Bonificación"))
)



(deffacts orders
  (orden (part-number "iphone13-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 13") (qty 10))
  (orden (part-number "samsung-note21-001") (tipo "smartphone") (marca "Samsung") (modelo "Samsung Note 21") (qty 5))
  (orden (part-number "pixel6-001") (tipo "smartphone") (marca "Google") (modelo "Pixel 6") (qty 3))
  (orden (part-number "oneplus-9pro-001") (tipo "smartphone") (marca "OnePlus") (modelo "9 Pro") (qty 7))
  (orden (part-number "iphone16-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 16") (qty 15))
  (orden (part-number "xiaomi-mi11-001") (tipo "smartphone") (marca "Xiaomi") (modelo "Mi 11") (qty 20))
)


(deffacts customers
  (customer (customer-id 101) (name joe) (address "bla bla bla") (phone 3313073905)(kind-of-client "minoria"))
  (customer (customer-id 102) (name mary) (address "bla bla bla") (phone 333222345)(kind-of-client "minoria"))
  (customer (customer-id 103) (name bob) (address "bla bla bla") (phone 331567890) (kind-of-client "minoria") ) 
)

(deffacts orders 
  (order (order-number 299) (customer-id 101))
  (order (order-number 300) (customer-id 102))
  (order (order-number 301) (customer-id 103))
)

(deffacts items-list
  (line-item (order-number 299) (part-number "iphone13-001") (customer-id 101) )
  (line-item (order-number 300) (part-number "samsung-note21-001") (customer-id 102))
  (line-item (order-number 301) (part-number "macbook-air-001") (customer-id 103))
)

(deffacts smartphones
  (smartphone (part-number "iphone13-001") (marca "apple") (modelo "iPhone 13") (color "Blanco") (price 17000) (camara "12MP") (qty 500))
  (smartphone (part-number "samsung-note21-001") (marca "Samsung") (modelo "Samsung Note 21") (color "Negro") (price 19999) (camara "108MP") (qty 500))
  (smartphone (part-number "pixel6-001") (marca "Google") (modelo "Pixel 6") (color "Verde") (price 11999) (camara "50MP") (qty 500))
  (smartphone (part-number "oneplus-9pro-001") (marca "OnePlus") (modelo "9 Pro") (color "Plateado") (price 14600) (camara "48MP") (qty 500))
  (smartphone (part-number "iphone16-001") (marca "apple") (modelo "iPhone 16") (color "Morado") (price 23999) (camara "58MP") (qty 500))
)

(deffacts computadoras
  (computadoras (part-number "dell-xps13-001") (marca "Dell") (modelo "XPS 13") (color "Plata") (price 25999) (procesador "Intel i7") (qty 500))
  (computadoras (part-number "hp-spectre-001") (marca "HP") (modelo "Spectre x360") (color "Negro") (price 23999) (procesador "Intel i5") (qty 500))
  (computadoras (part-number "macbook-air-001") (marca "Apple") (modelo "MacBook Air") (color "Gris Espacial") (price 29999) (procesador "M1") (qty 500))
  (computadoras (part-number "lenovo-thinkpad-001") (marca "Lenovo") (modelo "ThinkPad X1") (color "Negro") (price 27999) (procesador "Intel i7") (qty 500))
  (computadoras (part-number "asus-zenbook-001") (marca "Asus") (modelo "ZenBook 14") (color "Azul") (price 17999) (procesador "AMD Ryzen 5") (qty 500))
  (computadoras (part-number "acer-swift3-001") (marca "Acer") (modelo "Swift 3") (color "Plateado") (price 14999) (procesador "Intel i5") (qty 500))
)

(deffacts accesorios
  (accesorios (part-number "charger-001") (nombre "Cargador inalámbrico") (color "Blanco") (price 499) (qty 500))
  (accesorios (part-number "headphones-001") (nombre "Audífonos Bluetooth") (color "Negro") (price 899) (qty 500))
  (accesorios (part-number "screen-protector-001") (nombre "Mica") (color "Negro") (price 150) (qty 500))
  (accesorios (part-number "mouse-001") (nombre "Mouse inalámbrico") (color "Gris") (price 799) (qty 500))
  (accesorios (part-number "laptop-case-001") (nombre "Funda para laptop") (color "Azul") (price 699) (qty 500))
  (accesorios (part-number "monitor-stand-001") (nombre "Soporte para monitor") (color "Negro") (price 999) (qty 500))
  (accesorios (part-number "phone-case-001") (nombre "Funda para celular") (color "Gris") (price 299) (qty 500))
)

(deffacts orders
  (orden (order-id 1) (part-number "iphone13-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 13") (qty 10))
   (orden (order-id 2)  (part-number "iphone13-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 13") (qty 10))
    (orden (order-id 3) (part-number "iphone13-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 13") (qty 10))

  (orden (order-id 4) (part-number "samsung-note21-001") (tipo "smartphone") (marca "Samsung") (modelo "Samsung Note 21") (qty 5))

  (orden (order-id 5) (part-number "pixel6-001") (tipo "smartphone") (marca "Google") (modelo "Pixel 6") (qty 3))

  (orden (order-id 6) (part-number "oneplus-9pro-001") (tipo "smartphone") (marca "OnePlus") (modelo "9 Pro") (qty 7))

  (orden (order-id 7) (part-number "iphone16-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 16") (qty 15))
   (orden (order-id 8) (part-number "iphone16-001") (tipo "smartphone") (marca "apple") (modelo "iPhone 16") (qty 15))
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
  (Vales (id-vale 12345) (monto 500) (customer-id 101) (tipo "Regalo"))
  (Vales (id-vale 12346) (monto 1000) (customer-id 102) (tipo "Promoción")) 
  (Vales (id-vale 12347) (monto 1500) (customer-id 103) (tipo "Descuento")) 
  (Vales (id-vale 12348) (monto 2000)  (customer-id 104) (tipo "Fidelidad")) 
  (Vales (id-vale 12349) (monto 2500)  (customer-id 105) (tipo "Bonificación"))
)





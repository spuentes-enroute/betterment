# Guide Ruby on Rails

<ol>
<li>
  ¿Cómo se maneja el dinero en rails?<br>
  gema money</li>
<li>¿Qué es un hash?<br>
  Un hash es una colección de datos en donde cada valor está asociado a una llave.</li>
<li>Que tipo de dato se usa en sus llaves:<br>
  Los símbolos</li>
<li>Diferencia entre símbolo y string:<br>
  <ul>
  <li>Un símbolo es el objeto mas básico que puedes crear en Ruby: es un nombre y una ID interna.</li>
  <li>Un símbolo se refiere al mismo objeto en todo el programa.</li>
  <li>Dos strings con el mismo nombre, son dos objetos distintos.</li>
  <li>No están envueltos en comillas.</li>
  <li>Empiezan con dos puntos (:).</li>
  <li>No contienen espacios en blanco.</li>
  </ul>
</li>
<li>Diferencia entre @ y @@@:<br>
@: Instance variable of a class<br>
@@: Class variable, also called as static variable in some cases<br><br>
A class variable is a variable that is shared amongst all instances of a class. This means that only one variable value exists for all objects instantiated from this class. If one object instance changes the value of the variable</li>
<li>¿Qué es un rango?<br>El principal uso y quizás el más apropiado para los rangos, es expresar una secuencia: las secuencias tienen un punto inicial y un punto final, y una forma de producir los sucesivos valores entre ambos.</li>
<li>Diferencia entre (1..7) y (1...7)<br>
[..] Secuencia donde los puntos límites están incluidos.<br>
[...] Es una secuencia en la que no está incluida el límite superior.</li>
<li>Operador ternario<br>Este operador condicional, es una versión abreviada de la instrucción if – else cuenta con 3 operandos y de allí viene el nombre de ternario. Devuelve uno de 2 valores dependiendo del valor de una expresión booleana.</li>
<li>Memoization:<br>
Put simply, memoization is saving a method's return value so it does not have to be recomputed each time. As with all caching, you are effectively trading memory for time

```ruby
def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
```

</li>
<li>Interpolacion<br>
Para interpolar

```
  #{VARIABLE_A_INTRODUCIR}
```

Por ejemplo:

```ruby
  nombre = "Saul"
  puts "Hola #{nombre}"
```

Nos dará como resultado: Hola Saul<br><br>
`<% %>`
Will execute Ruby code with no effect on the html page being rendered. The output will be thrown away.

`<%= %>` Will execute Ruby code and insert the output of that code in place of the <%= %>

</li>
<li>¿Qué onda con los archivos YML?<br>
YAML es un lenguaje de serialización de datos que suele utilizarse en el diseño de archivos de configuración. Para algunas personas, YAML significa otro lenguaje de marcado más; para otras, es un acrónimo recursivo que quiere decir YAML no es un lenguaje de marcado, lo que enfatiza la idea de que se utiliza para los datos, no para los documentos. 
</li>

<li>JSON a string<br>
  Utilizando el método to_json
  
  ```ruby
    my_hash = {:hello => "goodbye"}
    puts my_hash.to_json # => "{\"hello\":\"goodbye\"}"
  ```
</li>

<li>¿Qué es un controlador?<br>
Los controladores son clases de Ruby con métodos que se van a encargar de procesar las peticiones HTTP.
</li>
<li>Sumar dia a fechas<br>
La clase Date proporciona un operador + que hace precisamente eso.

```ruby
  d = Date.today
  (d+3).to_s
```

</li>
<li>Parsear un string hacia fecha:<br>

`to_date()` method converts a string to a Date value.

</li>

<li>Active support<br>
Es el componente Ruby on Rails responsable de proporcionar extensiones de lenguaje Ruby, utilidades y otras cosas transversales.
</li>

<li>¿Qué es active record?<br>
Es el modelo que es la capa del sistema responsable de representar a las empresas datos y lógica.</li>

<li>¿Què es callback en modelos?<br>
Callbacks are methods that get called at certain moments of an object's life cycle. With callbacks it is possible to write code that will run whenever an Active Record object is created, saved, updated, deleted, validated, or loaded from the database.</li>

<li>¿Cómo se hace relacion entre uno y muchos y mucho a muchos en modelo?<br>

Para hacer una relación entre uno y muchos se utilizan las clausulas `has_many` y `belongs_to`

```ruby
class User < ApplicationRecord
  has_many :articles
end

class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end
```

**Many to many relationship**<br>
One way to set up a many-to-many connection with another model is use has_many :through association. In order to do that, we need to create a new join model. We will use Physician, Patient and Appointment as example.

```ruby
class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end

class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end

class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
end
```

</li>
<li>Up, down, change<br>
Up or Down methods are what rails consider to be an old-style of migration.<br>
Change method instead of up method and Active Record is smart enough to know how to reverse the migration.</li>
<li>Patrones relacionados al service y helpers<br>
</li>
<li>Archivos de configuracion en general</li>

</ol>

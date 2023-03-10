# Forth programming language
Ejemplos y trucos utilizando el lenguaje de programación Forth

Aquí te pondré algunas cosas relacionadas con el lenguaje Forth.

<br>

Por ahora tengo tres juegos:

- [Eliza Forth](https://github.com/elGuille-info/Forth-programming-language/tree/main/juegos/eliza-forth)

- [Adivina Forth](https://github.com/elGuille-info/Forth-programming-language/tree/main/juegos/adivina-forth)

- [Digits-Forth](https://github.com/elGuille-info/Forth-programming-language/tree/main/juegos/digits-forth)

<br>

## ¿Qué es Forth?

```
Forth o FORTH es un lenguaje de programación y un ambiente de programación
  para ordenadores inventado por Charles H. Moore en 1968 y usado en 1970
  para controlar el telescopio de 30ft (11 metros) del National Radio Astronomy Observatory de Kitt Peak, Arizona.
Inicialmente diseñado para una aplicación muy concreta, la astronomía
  (cálculo de trayectorias de cuerpos en órbita, cromatografías, análisis de espectros de emisión),
  ha evolucionado hasta ser aplicable a casi todos los demás campos relacionados o no con esa rama
  de la ciencia (cálculos de probabilidad, bases de datos, análisis estadisticos y hasta financieros).
Forth es un lenguaje de programación procedimental, estructurado, imperativo, reflexivo,
  basado en pila y sin comprobación de tipos.
Una de sus importantes características es la utilización de una pila de datos
  para pasar los argumentos entre las palabras, que son los constituyentes de un programa en Forth.
En Forth para el manejo de la pila se usa la notación postfija (notación polaca inversa)
  de forma que para sumar dos números se escriba de esta forma: 3 2 +
  Se ponen los números en la pila y después se indica la operación a realizar con esos números,
    dejando en la pila el resultado.
  Si queremos sumar 3+2 y el resultado multiplicarlo por 7 lo haríamos así: 7 2 3 + *
    Primero se suman 2+3 y el resultado (que estará en la pila) se multiplica por 7.

Para mas información e implementaciones populares de Forth ver:
   Forth en Wikipedia                       https://es.wikipedia.org/wiki/Forth
   Forth Interest Group (FIG)               http://www.forth.org/
   Forth Standard                           https://forth-standard.org/
   GForth del Proyecto GNU                  https://gforth.org/
   Sitio web oficial de FORTH, Inc.         https://www.forth.com/
   Starting FORTH (tutorial de Leo Brodie)  https://www.forth.com/starting-forth/
       Este es el que he usado yo para empaparme de Forth.
```
<br>

<br>

> **Nota sobre util.forth:** 
> 
> El fichero **util.forth** se carga con los ficheros aquí incluidos (evidentemente salvo el propio util.forth).<br>
> En algunos casos, como en **eliza.forth**, he redefinido algunas de las palabras de util.forth para garantizar el funcionamiento,
> ya que las definiciones originales no son 100% compatibles con las de util.forth. <br>
> 
> Es posible que no siempre se utilicen las palabras de util.forth, pero como las suelo cargar desde esos _programas_ mantengo una copia
> de los mismos en las carpetas de cada juego/proyecto.<br>
> 
> De forma predeterminada el acceso a util.forth se hace usando la estructura de directorios de GitHub, pero en el código de cada programa,
> pongo también cómo incluirlo si lo mantienes en el mismo directorio del programa, de esa forma te resultará más fácil usarlo sin necesidad
> de crear toda la estructura de estos directorios. <br>
> 
> Igualmente intento, en la medida de lo posible, mantener una copia actualizada (y probada) en cada directorio de cada programa
> pero si ves que se me ha olvidado, siempre puedes descargar el que está en la carpeta **util-forth**.
>
> La carpeta util-forth tiene las definiciones de palabras de uso general (y un fichero/programa con pruebas).

<br>

<br>

> **Nota sobre la ubicación original de Adivina y Digits:**
>
> Estos son los enlaces a los repositorios originales (puede que los elimine).<br>
> Los he puesto de solo lectura.<br>
> 
> [Adivina-Forth](https://github.com/elGuille-info/Adivina-FORTH)
> 
> [Digits-Forth](https://github.com/elGuille-info/DIGITS-FORTH)

<br>

Actualizado por Guillermo Som (Guille) el 21 de enero de 2023.


CLASS zcl_2305_fib DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2305_FIB IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  CONSTANTS max_count TYPE i VALUE 20.
DATA numbers TYPE TABLE OF i.

DO max_count TIMES.
 CASE sy-index.
 WHEN 1.
 APPEND 0 TO numbers.
 WHEN 2.
 APPEND 1 TO numbers.
 WHEN OTHERS.
 APPEND numbers[ sy-index - 1 ] + numbers[ sy-index - 2 ] TO numbers.
 ENDCASE.
 enddo.
 data(counter) = 0.
 DATA output TYPE stringtab.
 LOOP AT numbers INTO DATA(number).
 counter = counter + 1.
 APPEND |{ counter WIDTH = 4 }: { number WIDTH = 10 ALIGN =
RIGHT }|
 TO output.

 ENDLOOP.
 out->write(
 data = output
 name = |The first { max_count } Fibonacci Numbers|
 ) .

ENDMETHOD.
ENDCLASS.

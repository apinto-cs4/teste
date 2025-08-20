CLASS zcl_2382_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2382_COMPUTE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

DATA result TYPE p LENGTH 8 DECIMALS 2.
    DATA number1 TYPE i.
    DATA number2 TYPE i.

    number1 = -8.
    number2 =  3.

    result = number1 / number2.

    DATA(output) = |{ number1 } / { number2 } = { result }|.

    out->write( output ).

  ENDMETHOD.
ENDCLASS.

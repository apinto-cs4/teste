CLASS zcl_2305_arithment_cal DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2305_ARITHMENT_CAL IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data: v_num1 TYPE i VALUE -1,
        v_num2 TYPE i VALUE 2,
        v_result TYPE p DECIMALS 2.
  v_result = v_num1 / v_num2.
  data(v_output) = |{ v_num1 } / { v_num2  } = { v_result }|.
  out->write( v_output ).
  ENDMETHOD.
ENDCLASS.

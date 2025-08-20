CLASS zcl_2305_switch_op DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2305_SWITCH_OP IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data: v_num1 TYPE i VALUE -1,
        v_num2 TYPE i VALUE 0,
        v_op TYPE c VALUE '~',
        v_result TYPE p DECIMALS 2.
  CASE v_op.
  WHEN '+'.
  v_result = v_num1 + v_num2.
  WHEN '*'.
  v_result = v_num1 * v_num2.
  WHEN '/'.
  try.
    v_result = v_num1 / v_num2.
    catch cx_sy_zerodivide.
    out->write( 'Division by zero not permitted' ).
     data(v_inv) = abap_true.
    exit.
  endtry.
    v_result = v_num1 / v_num2.
  WHEN '-'.
    v_result = v_num1 - v_num2.
  WHEN OTHERS.
    out->write( 'Invalid operator' ).
    v_inv = abap_true.
  ENDCASE.
  IF v_inv = abap_true.

  ELSE.
    data(v_output) = |{ v_num1 } { v_op } { v_num2  } = { v_result }|.
    out->write( v_output ).
  ENDIF.
ENDMETHOD.
ENDCLASS.

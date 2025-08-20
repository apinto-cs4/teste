CLASS zcl_hello_world_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_HELLO_WORLD_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lv_text TYPE string VALUE `Hello World`.
    out->write( lv_text ).
  ENDMETHOD.
ENDCLASS.

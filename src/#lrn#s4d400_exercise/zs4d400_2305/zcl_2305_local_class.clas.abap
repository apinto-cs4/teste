CLASS zcl_2305_local_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2305_LOCAL_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA connection TYPE REF TO lcl_connection.
    DATA connections TYPE TABLE OF REF TO lcl_connection.

    TRY.
        connection = NEW #( i_carrier_id = 'SQ' i_connection_id = '0001' ).
        APPEND connection TO connections.

        connection = NEW #( i_carrier_id = 'SQ' i_connection_id = '0002' ).
        APPEND connection TO connections.
      CATCH cx_abap_invalid_value.
        out->write( 'method failed' ).
    ENDTRY.
    LOOP AT connections INTO connection.
      out->write( connection->get_output( ) ).

    ENDLOOP.
    out->write(  lcl_connection=>conn_counter ).
  ENDMETHOD.
ENDCLASS.

CLASS zcl_2382_local_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2382_LOCAL_CLASS IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: connection TYPE REF TO lcl_connection.
    DATA: connections TYPE TABLE OF REF TO lcl_connection.

    connection = NEW #(  ).

    TRY.

        connection->set_attributes( i_carrier_id = 'DL' i_connection_id = '0973' ).
        APPEND connection TO connections.

      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

    connection = NEW #(  ).

    TRY.

        connection->carrier_id = 'BA'.
        connection->connection_id = '0015'.

        APPEND connection TO connections.

      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

    connection = NEW #(  ).

    TRY.

        connection->carrier_id = 'AA'.
        connection->connection_id = '0064'.

        APPEND connection TO connections.

      CATCH cx_abap_invalid_value.
        out->write( `Method call failed` ).
    ENDTRY.

    LOOP AT connections INTO connection.

      out->write( connection->get_output(  ) ).

    ENDLOOP.


  ENDMETHOD.
ENDCLASS.

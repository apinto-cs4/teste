*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_connection DEFINITION.

   PUBLIC SECTION.
METHODS constructor
 IMPORTING
 i_carrier_id TYPE /dmo/carrier_id
 i_connection_id TYPE /dmo/connection_id
 RAISING
 cx_abap_invalid_value.
  METHODS get_output
 returning
 value(r_output) type string_table.
  CLASS-DATA conn_counter.
   PRIVATE SECTION.
    DATA carrier_id TYPE /dmo/carrier_id.
 DATA connection_id TYPE /dmo/connection_id.
DATA airport_from_id TYPE /dmo/airport_from_id.
 DATA airport_to_id TYPE /dmo/airport_to_id.


ENDCLASS.
CLASS lcl_connection IMPLEMENTATION.
method constructor.
IF i_carrier_id IS INITIAL OR i_connection_id IS INITIAL.
 RAISE EXCEPTION TYPE cx_abap_invalid_value.
 ENDIF.
 carrier_id = i_carrier_id.
 connection_id = i_connection_id.
 SELECT SINGLE
 FROM /dmo/i_connection
 FIELDS departureairport, destinationairport
 WHERE airlineid = @i_carrier_id
 AND connectionid = @i_connection_id
 INTO ( @airport_from_id, @airport_to_id ).
 IF sy-subrc <> 0.
 RAISE EXCEPTION TYPE cx_abap_invalid_value.
 ENDIF.

 conn_counter = conn_counter + 1.
ENDMETHOD.
METHOD get_Output.
APPEND |--------------------------------| TO r_output.
 APPEND |Carrier: { carrier_id }| TO r_output.
 APPEND |Connection: { connection_id }| TO r_output.
 APPEND |Departure: { airport_from_id }| TO r_output.
 APPEND |Destination: { airport_to_id }| TO r_output.
ENDMETHOD.
ENDCLASS.

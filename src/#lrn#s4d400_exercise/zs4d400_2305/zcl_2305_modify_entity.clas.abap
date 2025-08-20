CLASS zcl_2305_modify_entity DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2305_MODIFY_ENTITY IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA agencies_upd TYPE TABLE FOR UPDATE /DMO/I_AgencyTP.
  agencies_upd = VALUE #( ( AgencyID = '070024' name = 'Cabo' ) ).
    MODIFY ENTITIES OF /DMO/I_AgencyTP
      ENTITY /dmo/agency
        UPDATE
          FIELDS ( Name ) WITH agencies_upd
      FAILED DATA(failed)
      REPORTED DATA(reported).
      COMMIT ENTITIES.
  ENDMETHOD.
ENDCLASS.

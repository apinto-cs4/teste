CLASS zcl_2382_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2382_ITERATE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    CONSTANTS: c_count TYPE i VALUE 20.
    DATA: t_output TYPE TABLE OF string.
    DATA: t_numbers TYPE TABLE OF i.
    DATA: l_counter TYPE i VALUE 0.
    DO c_count TIMES.

      CASE sy-index.
        WHEN 1.
          APPEND 0 TO t_numbers.
        WHEN 2.
          APPEND 1 TO t_numbers.
        WHEN OTHERS.
          APPEND t_numbers[ sy-index - 2 ] + t_numbers[ sy-index - 1 ] TO t_numbers.
      ENDCASE.

    ENDDO.

    LOOP AT t_numbers INTO DATA(wa_numbers).

      l_counter += 1.

      APPEND  | { l_counter WIDTH = 4 } : {  wa_numbers WIDTH = 10 ALIGN = RIGHT } | TO t_output.


    ENDLOOP.

    out->write(
           data   = t_output
           name   = |The first { c_count } Fibonacci Numbers|
                  ) .

  ENDMETHOD.
ENDCLASS.

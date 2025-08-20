CLASS zcl_2382_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_2382_HELLO_WORLD IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


*    out->write( `Hello World` ).

*----------------------------------------------------------------

*
** Data Objects with Built-in Types
***********************************************************************
*
*    " comment/uncomment the following declarations and check the output
**    DATA variable TYPE string.
**    DATA variable TYPE i.
**    DATA variable TYPE d.
**    DATA variable TYPE c LENGTH 10.
**    DATA variable TYPE n LENGTH 10.
*    DATA variable TYPE p LENGTH 8 DECIMALS 2.
*
** Output
***********************************************************************
*
*    out->write(  'Result with Initial Value' ).
*    out->write(   variable ).
*    out->write(  '---------' ).
*
*    variable = '19891109'.
*
*    out->write(  'Result with Value 19891109' ).
*    out->write(   variable ).
*    out->write(  '---------' ).


*--------------------------------------------------------------------------------------

** Example 1: Local Types
***********************************************************************
*
** Comment/Uncomment the following lines to change the type of my_var
*    TYPES my_type TYPE p LENGTH 3 DECIMALS 2.
**    TYPES my_type TYPE i .
**    TYPES my_type TYPE string.
**    TYPES my_type TYPE n length 10.
*
** Variable based on local type
*    DATA my_variable TYPE my_type.
*
*    out->write(  `my_variable (TYPE MY_TYPE)` ).
*    out->write(   my_variable ).
*
** Example 2: Global Types
***********************************************************************
*
** Variable based on global type .
*    " Place cursor on variable and press F2 or F3
*    DATA airport TYPE /dmo/airport_id VALUE 'FRA'.
*
*    out->write(  `airport (TYPE /DMO/AIRPORT_ID )` ).
*    out->write(   airport ).
*
** Example 3: Constants
***********************************************************************
*
*    CONSTANTS c_text   TYPE string VALUE `Hello World`.
*    CONSTANTS c_number TYPE i      VALUE 12345.
*
*    "Uncomment this line to see syntax error ( VALUE is mandatory)
**  constants c_text2   type string.
*
*    out->write(  `c_text (TYPE STRING)` ).
*    out->write(   c_text ).
*    out->write(  '---------' ).
*
*    out->write(  `c_number (TYPE I )` ).
*    out->write(   c_number ).
*    out->write(  `---------` ).
*
** Example 4: Literals
***********************************************************************
*
*    out->write(  '12345               ' ).    "Text Literal   (Type C)
*    out->write(  `12345               ` ).    "String Literal (Type STRING)
*    out->write(  12345                  ).    "Number Literal (Type I)
*
*    "uncomment this line to see syntax error (no number literal with digits)
**    out->write(  12345.67

*----------------------------------------------------------------


** Declarations
***********************************************************************
*
*    " comment/uncomment these line for different result types
*    TYPES t_result TYPE p LENGTH 8 DECIMALS 2.
**    TYPES t_result TYPE p LENGTH 8 DECIMALS 0.
**    TYPES t_result TYPE i.
*
*    DATA result TYPE t_result.
*
** Calculations
***********************************************************************
*    " comment/uncomment these lines for different calculations
*
**    result = 2 + 3.
**    result = 2 - 3.
**    result = 2 * 3.
*    result = 2 / 3.
**
**    result = sqrt( 2 ).
**    result = ipow( base = 2 exp = 3 ).
**
**    result = ( 8 * 7 - 6 ) / ( 5 + 4 ).
**   result = 8 * 7 - 6 / 5 + 4.
*
** Output
***********************************************************************
*
*    out->write( result ).


*------------------------------------------------------------------------------


** Declarations
***********************************************************************
*    TYPES t_amount TYPE  p LENGTH 8 DECIMALS 2.
*
*    DATA amount   TYPE t_amount VALUE '3.30'.
*    DATA amount1  TYPE t_amount VALUE '1.20'.
*    DATA amount2  TYPE t_amount VALUE '2.10'.
*
*    DATA the_date  TYPE d                     VALUE '19891109'.
*    DATA my_number TYPE p LENGTH 3 DECIMALS 2 VALUE '-273.15'.
*
*    DATA part1 TYPE string VALUE `Hello`.
*    DATA part2 TYPE string VALUE `World`.
*
** String Templates
***********************************************************************
*
*    " comment/uncomment the following lines for different examples
**    DATA(text) = |Hello World|.
**    DATA(text) = |Total: { amount } EUR|.
**    DATA(text) = |Total: { amount1 + amount2 } EUR|.
*
** Format Options
***********************************************************************
*
*    "Date
**    DATA(text) = |Raw Date: { the_date             }|.
**    DATA(text) = |ISO Date: { the_date Date = ISO  }|.
**    DATA(text) = |USER Date:{ the_date Date = USER }|.
*
*    "Number
**    DATA(text) = |Raw Number { my_number                    }|.
**    DATA(text) = |User Format{ my_number NUMBER = USER      }|.
**    DATA(text) = |Sign Right { my_number SIGN = RIGHT       }|.
**    DATA(text) = |Scientific { my_number STYLE = SCIENTIFIC }|.
*
** String expression (concatenation Operator)
***********************************************************************
*
**    DATA(text) = part1 && part2.
**    DATA(text) = part1 && | | && part2.
**    DATA(text) = |{ amount1 } + { amount2 }| &&
**                 | = | &&
**                 |{ amount1 + amount2 }|.
*
*    DATA(text) = |{ amount1 } + { amount2 } = { amount1 + amount2 }|.
** Output
***********************************************************************
*
*    out->write( text ).

*------------------------------------------------------------------------


*
** Declarations
***********************************************************************
*
*    CONSTANTS c_number TYPE i VALUE 0.
**    CONSTANTS c_number TYPE i VALUE 1.
**    CONSTANTS c_number TYPE i VALUE 2.
**    CONSTANTS c_number TYPE i VALUE -1.
**    CONSTANTS c_number TYPE i VALUE -2.
*
** Example 1: Simple IF ... ENDIF.
***********************************************************************
*
*    out->write(  `--------------------------------` ).
*    out->write(  `Example 1: Simple IF ... ENDIF.` ).
*    out->write(  `-------------------------------` ).
*
*    IF c_number = 0.
*      out->write( `The value of C_NUMBER equals zero`   ).
*    ELSE.
*      out->write( `The value of C_NUMBER is NOT zero`   ).
*    ENDIF.
*
** Example 2: Optional Branches ELSEIF and ELSE
***********************************************************************
*
*    out->write(  `--------------------------------------------` ).
*    out->write(  `Example 2: Optional Branches ELSEIF and ELSE` ).
*    out->write(  `--------------------------------------------` ).
*
*    IF c_number = 0.
*      out->write( `The value of C_NUMBER equals zero`            ).
*    ELSEIF c_number > 0.
*      out->write( `The value of C_NUMBER is greater than zero`   ).
*    ELSE.
*      out->write( `The value of C_NUMBER is less than zero`      ).
*    ENDIF.
*
** Example 3: CASE ... ENDCASE
***********************************************************************
*
*    out->write(  `---------------------------` ).
*    out->write(  `Example 3: CASE ... ENDCASE` ).
*    out->write(  `---------------------------` ).
*
*    CASE c_number.
*      WHEN 0.
*        out->write( `The value of C_NUMBER equals zero`             ).
*      WHEN 1.
*        out->write( `The value of C_NUMBER equals one`              ).
*      WHEN 2.
*        out->write( `The value of C_NUMBER equals two`              ).
*      WHEN OTHERS.
*        out->write( `The value of C_NUMBER equals non of the above` ).
*    ENDCASE.


*----------------------------------------------------------------------


*
** Declarations
***********************************************************************
*    DATA result TYPE i.
*
*    DATA numbers TYPE TABLE OF i.
*
** Preparation
***********************************************************************
*
*    APPEND 123 TO numbers.
*
** Example 1: Conversion Error (no Number)
***********************************************************************
*
*    CONSTANTS c_text TYPE string VALUE 'ABC'.
**    CONSTANTS c_text TYPE string VALUE '123'.
*
*    out->write(  `---------------------------` ).
*    out->write(  `Example 1: Conversion Error` ).
*    out->write(  `---------------------------` ).
*
*    TRY.
*        result = c_text.
*        out->write( |Converted content is { result }|  ).
*      CATCH cx_sy_conversion_no_number.
*        out->write( |Error: { c_text } is not a number!| ).
*    ENDTRY.
*
** Example 2: Division by Zero
***********************************************************************
*
*    CONSTANTS c_number TYPE i VALUE 0.
**    CONSTANTS c_number TYPE i VALUE 7.
*
*    out->write(  `---------------------------` ).
*    out->write(  `Example 2: Division by Zero` ).
*    out->write(  `---------------------------` ).
*
*    TRY.
*        result = 100 / c_number.
*        out->write( |100 divided by { c_number } equals { result }| ).
*      CATCH cx_sy_zerodivide.
*        out->write(  `Error: Division by zero is not defined!` ).
*    ENDTRY.
*
** Example 3: Itab Error (Line Not Found)
***********************************************************************
*
*    CONSTANTS c_index TYPE i VALUE 2.
**    CONSTANTS c_index TYPE i VALUE 1.
*
*    out->write(  `-------------------------` ).
*    out->write(  `Example 3: Line Not Found` ).
*    out->write(  `-------------------------` ).
*
*    TRY.
*        result = numbers[ c_index ].
*        out->write( |Content of row { c_index } equals { result }| ).
*      CATCH cx_sy_itab_line_not_found.
*        out->write(  `Error: Itab has less than { c_index } rows!` ).
*    ENDTRY.
*
*
** Example 4: Combination of Different Exceptions
***********************************************************************
**    CONSTANTS c_char TYPE c LENGTH 1 VALUE 'X'.
**    CONSTANTS c_char TYPE c length 1 value '0'.
*    CONSTANTS c_char TYPE c LENGTH 1 VALUE '1'.
**    CONSTANTS c_char TYPE c length 1 value '2'.
*
*    out->write(  `----------------------` ).
*    out->write(  `Example 4: Combination` ).
*    out->write(  `----------------------` ).
*
*    TRY.
*        result = numbers[ 2 / c_char ].
*        out->write( |Result: { result } | ).
*      CATCH cx_sy_zerodivide.
*        out->write( `Error: Division by zero is not defined`  ).
*      CATCH cx_sy_conversion_no_number.
*        out->write( |Error: { c_char } is not a number! | ).
*      CATCH cx_sy_itab_line_not_found.
*        out->write( |Error: Itab contains less than { 2 / c_char } rows| ).
*    ENDTRY.

*-----------------------------------------------------------------------------


** Declarations
***********************************************************************
*
*    CONSTANTS c_number TYPE i VALUE 3.
**    CONSTANTS c_number TYPE i VALUE 5.
**    CONSTANTS c_number TYPE i VALUE 10.
*
*    DATA number TYPE i.
*
** Example 1: DO ... ENDDO with TIMES
***********************************************************************
*
*    out->write(  `----------------------------------` ).
*    out->write(  `Example 1: DO ... ENDDO with TIMES` ).
*    out->write(  `----------------------------------` ).
*
*    DO c_number TIMES.
*      out->write(  `Hello World` ).
*    ENDDO.
*
** Example 2: DO ... ENDDO with Abort Condition
***********************************************************************
*
*    out->write(  `-------------------------------` ).
*    out->write(  `Example 2: With Abort Condition` ).
*    out->write(  `-------------------------------` ).
*
*    number = c_number * c_number.
*
*    " count backwards from number to c_number.
*    DO.
*
*      out->write( |{ sy-index }: Value of number: {  number }| ).
*      number = number - 1.
*
*      "abort condition
*      IF number <= c_number.
*        EXIT.
*      ENDIF.
*
*    ENDDO.


*-----------------------------------------------------------------


** Declarations
***********************************************************************
*
*    " Internal tables
*    DATA numbers TYPE TABLE OF i.
*
*    "Table type (local)
*    TYPES tt_strings TYPE TABLE OF string.
*    DATA texts1      TYPE tt_strings.
*
*    " Table type (global)
*    DATA texts2 TYPE string_table.
*
*    " work areas
*    DATA number TYPE i VALUE 1234.
*    DATA text TYPE string.
*
** Example 1: APPEND
***********************************************************************
*
*    APPEND 4711       TO numbers.
*    APPEND number     TO numbers.
*    APPEND 2 * number TO numbers.
*
*    out->write(  `-----------------` ).
*    out->write(  `Example 1: APPEND` ).
*    out->write(  `-----------------` ).
*
*    out->write( numbers ).
*
** Example 2: CLEAR
***********************************************************************
*
*    CLEAR numbers.
*
*    out->write(  `----------------` ).
*    out->write(  `Example 2: CLEAR` ).
*    out->write(  `----------------` ).
*
*    out->write( numbers ).
*
** Example 3: table expression
***********************************************************************
*    APPEND 4711       TO numbers.
*    APPEND number     TO numbers.
*    APPEND 2 * number TO numbers.
*
*    out->write(  `---------------------------` ).
*    out->write(  `Example 3: Table Expression` ).
*    out->write(  `---------------------------` ).
*
*    number = numbers[ 2 ] .
*
*    out->write( |Content of row 2: { number }|    ).
*    "Direct use of expression in string template
*    out->write( |Content of row 1: { numbers[ 1 ]  }| ).
*
** Example 4: LOOP ... ENDLOOP
***********************************************************************
*    out->write(  `---------------------------` ).
*    out->write(  `Example 4: LOOP ... ENDLOOP` ).
*    out->write(  `---------------------------` ).
*
*    LOOP AT numbers INTO number.
*
*      out->write( |Row: { sy-index } Content { number }| ).
*
*    ENDLOOP.
*
** Example 5: Inline declaration in LOOP ... ENDLOOP
***********************************************************************
*    out->write(  `-----------------------------` ).
*    out->write(  `Example 5: Inline Declaration` ).
*    out->write(  `-----------------------------` ).
*
*    LOOP AT numbers INTO DATA(number_inline).
*      out->write( |Row: { sy-tabix } Content { number_inline }| ).
*    ENDLOOP.
*



*
*    CONSTANTS c_carrier_id TYPE /dmo/carrier_id       VALUE 'LH'.
*    CONSTANTS c_connection_id TYPE /dmo/connection_id VALUE '0400'.
*
*    DATA connection  TYPE REF TO lcl_connection.
*    DATA connections  TYPE TABLE OF REF TO lcl_connection.
*
** Create Instance
***********************************************************************
*
*    connection = NEW #(  ).
*
** Call Method and Handle Exception
***********************************************************************
*    out->write(  |i_carrier_id    = '{ c_carrier_id }' | ).
*    out->write(  |i_connection_id = '{ c_connection_id }'| ).
*
*    TRY.
*        connection->set_attributes(
*          EXPORTING
*            i_carrier_id    = c_carrier_id
*            i_connection_id = c_connection_id
*        ).
*
*        APPEND connection TO connections.
*        out->write( `Method call successful` ).
*      CATCH cx_abap_invalid_value.
*        out->write( `Method call failed`     ).
*    ENDTRY.
*
*



   DATA connection  TYPE REF TO lcl_connection.
   DATA connections  TYPE TABLE OF REF TO lcl_connection.

* Create Instance
**********************************************************************

    connection = NEW #(  ).

    connection->set_attributes(
      EXPORTING
        i_carrier_id    = 'LH'
        i_connection_id = '0400'
    ).

    APPEND connection TO connections.

* Calling Functional Method
**********************************************************************
    " in a value assignment (with inline declaration for result)
    DATA(result) = connection->get_output( ).

    " in logical expression
    IF connection->get_output(  ) IS NOT INITIAL.

      " as operand in a statement
      LOOP AT connection->get_output(  ) INTO DATA(line).

      ENDLOOP.

      "  to supply input parameter of another method
      out->write( data = connection->get_output( )
                  name = `  ` ).

    ENDIF.


  ENDMETHOD.
ENDCLASS.

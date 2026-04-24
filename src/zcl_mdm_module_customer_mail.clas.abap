CLASS zcl_mdm_module_customer_mail DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
  CLASS-METHODS :
      GETDATA
      IMPORTING VALUE(CUSTOMER)  TYPE I_CUSTOMER-CUSTOMER OPTIONAL
      VALUE(TaxkID)  TYPE STring OPTIONAL
      VALUE(Mailtype)  TYPE ZSALESDISTR_CDS-DistributionChannel OPTIONAL
      RETURNING VALUE(Status) TYPE string.
       CLASS-DATA: lx_bcs_mail TYPE REF TO cx_bcs_mail.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUSTOMER_MAIL IMPLEMENTATION.


METHOD getdata.

     TYPES : BEGIN OF it_solisti1 ,
              line TYPE c LENGTH 255,
            END OF it_solisti1.

    DATA : i_objtx  TYPE STANDARD TABLE OF it_solisti1,
           i_objtxt TYPE it_solisti1,
          CUST_NAME TYPE STRING,
                 lv TYPE string,
                lv1 TYPE string,
                round       TYPE string,
           pdf_xstring TYPE xstring,
           pdf_xstringBill TYPE xstring,
            mail_id(512) TYPE C,
            indctr  TYPE C.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    i_objtxt-line = '<HTML> <BODY>'.
    APPEND i_objtxt TO i_objtx.
    CLEAR : i_objtxt.

    CONCATENATE '<p style="font-family:Calibri;font-size:16;">' 'Dear <b>' 'Sir/Madam,' '.' '</b>'  INTO i_objtxt-line.
    APPEND i_objtxt TO i_objtx.
    CLEAR : i_objtxt.

    CONCATENATE '<p>' 'Greetings!!!!' '<b>' '.' '</b></p>' INTO i_objtxt-line SEPARATED BY space.
    APPEND i_objtxt-line TO i_objtx.
    CLEAR : i_objtxt .

    CONCATENATE '<p>' 'Task id No- 1000028 is created by MDM001-Raghuraj Singh at 07/06/2025::17:10. This is Pending for your approval.' '<b>' '.' '</b></p>' INTO i_objtxt-line SEPARATED BY space.
    APPEND i_objtxt-line TO i_objtx.
    CLEAR : i_objtxt .

    CONCATENATE '<p>' 'Kindly Approve the Task.' '<b>' '.' '</b></p>' INTO i_objtxt-line SEPARATED BY space.
    APPEND i_objtxt-line TO i_objtx.
    CLEAR : i_objtxt .

    i_objtxt-line = '</body> </html>'.
    APPEND i_objtxt TO i_objtx.
    CLEAR i_objtxt.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  DATA :
      v_lines_txt TYPE i,
      v_lines_bin TYPE i.

    v_lines_txt = lines( i_objtx ).

    LOOP  AT i_objtx INTO i_objtxt .
      IF lv = ''.
        lv = i_objtxt.
      ELSE.
        CONCATENATE lv i_objtxt INTO lv.
        CONDENSE lv .
      ENDIF.
    ENDLOOP.


     TRY.
            DATA(lo_mail) = cl_bcs_mail_message=>create_instance( ).
            lo_mail->set_sender( 'noreply@sonaselection.com' ).
             lo_mail->add_recipient( '' ).

            lo_mail->set_subject( || ).
            lo_mail->set_main( cl_bcs_mail_textpart=>create_instance(
            iv_content      = lv
            iv_content_type = 'text/html'
            ) ).

          lo_mail->send( IMPORTING et_status = DATA(lt_status) ).
          CATCH cx_bcs_mail INTO lx_bcs_mail.
            DATA(msg2) = lx_bcs_mail->if_message~get_longtext(  ).
        ENDTRY.
ENDMETHOD.
ENDCLASS.

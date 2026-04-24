CLASS zcl_mdm_module_cus_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   CLASS-METHODS :
      Createcus
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      VALUE(VENDOR)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string,
      Unapprovedcus
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
            Userid   TYPE string
      RETURNING VALUE(StatusRetun) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUS_UPDATE IMPLEMENTATION.


 METHOD Createcus.


  UPDATE zgeneral_data SET
       businesspartner = @VENDOR
                WHERE
              taskid = @taxkid .
      COMMIT WORK AND WAIT.

   StatusRetun = 'Vendor Update '  .
 ENDMETHOD.


 METHOD  Unapprovedcus.

IF Userid IS NOT  INITIAL .

    UPDATE zgeneral_data SET
               apstatus  = '' ,
              appid = '',
              app_date = '00000000',
              app_time = '000000',
              unappid = @Userid,
              unapp_date  = @SY-datum,
              unapp_time = @SY-timlo
              WHERE
              taskid = @TaxkID .
ELSE.

   UPDATE zgeneral_data SET
               apstatus  = '' ,
              appid = '',
              app_date = '00000000',
              app_time = '000000'
                WHERE
              taskid = @TaxkID .

ENDIF.


 ENDMETHOD.
ENDCLASS.

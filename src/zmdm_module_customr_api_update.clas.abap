CLASS zmdm_module_customr_api_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
      CLASS-METHODS :
      GETDATA
      IMPORTING VALUE(CUSTOMER)  TYPE I_CUSTOMER-CUSTOMER OPTIONAL
      VALUE(TaxkID)  TYPE STring OPTIONAL
      VALUE(DistributionChannel)  TYPE ZSALESDISTR_CDS-DistributionChannel OPTIONAL
      VALUE(Division)  TYPE ZSALESDISTR_CDS-Division OPTIONAL
      VALUE(SALESORG)  TYPE ZSALESDISTR_CDS-Salesorganization OPTIONAL
      VALUE(TYP)  TYPE string OPTIONAL
      VALUE(DELUNDELTYP)  TYPE string OPTIONAL
      RETURNING VALUE(Status) TYPE string,
      CUS_po
      IMPORTING VALUE(json)  TYPE string OPTIONAL
      VALUE(CUSTOMER)  TYPE I_CUSTOMER-CUSTOMER OPTIONAL
      VALUE(Comapnycode)  TYPE I_CompanyCode-CompanyCode OPTIONAL
      VALUE(DistributionChannel)  TYPE ZSALESDISTR_CDS-DistributionChannel OPTIONAL
      VALUE(Division)  TYPE ZSALESDISTR_CDS-Division OPTIONAL
      VALUE(SALESORG)  TYPE ZSALESDISTR_CDS-Salesorganization OPTIONAL
      VALUE(TYP)  TYPE string OPTIONAL
      RETURNING VALUE(resp1) TYPE string,
      gET_ERROR
      IMPORTING VALUE(JSON)   TYPE string OPTIONAL
      RETURNING VALUE(ERROR_DESC) TYPE string,
      CreateDOCUMENT
      IMPORTING VALUE(JSON)   TYPE string OPTIONAL
      RETURNING VALUE(MAterialdocument) TYPE string,
      get_mat
      IMPORTING VALUE(mat)      TYPE i_product-Product
      VALUE(DistributionChannel)  TYPE ZSALESDISTR_CDS-DistributionChannel OPTIONAL
      VALUE(Division)  TYPE ZSALESDISTR_CDS-Division OPTIONAL
      VALUE(SALESORG)  TYPE ZSALESDISTR_CDS-Salesorganization OPTIONAL
      RETURNING VALUE(material) TYPE char18.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZMDM_MODULE_CUSTOMR_API_UPDATE IMPLEMENTATION.


METHOD CreateDOCUMENT.
   DATA lv TYPE string.
    FIELD-SYMBOLS <data>  TYPE data.
    FIELD-SYMBOLS <field> TYPE any.
    DATA(lr_d1) = /ui2/cl_json=>generate( json = json ).
    IF lr_d1 IS  BOUND .
    ASSIGN lr_d1->* TO <data>.
    ASSIGN COMPONENT `D` OF STRUCTURE <data> TO <field>.
    IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      ASSIGN COMPONENT `COMPANYCODE` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
        ASSIGN <field>->* TO <data>.
        IF sy-subrc = 0.
          ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
          ASSIGN <field>->* TO <data>.
        ENDIF.
      ENDIF.
    ENDIF.
     MAterialdocument  =   <data> .
    ENDIF .

  ENDMETHOD.


  METHOD CUS_po.

    TRY.

IF TYP = 'COM' .
DATA lv_url TYPE STRING.

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_CustomerCompany(Customer=%27{ CUSTOMER }%27,CompanyCode=%27{ Comapnycode }%27)|.

ELSEIF TYP = 'SALES'.

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_CustomerSalesArea(Customer=%27{ CUSTOMER }%27,SalesOrganization=%27{ salesorg }| &&
|%27,DistributionChannel=%27{ DistributionChannel }%27,Division=%27{ division }%27)|.

ENDIF.

        DATA(lo_http_destination) =
             cl_http_destination_provider=>create_by_url( lv_url ).
        DATA(lo_web_http_client1) = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination ).
        DATA(lo_web_http_request1) = lo_web_http_client1->get_http_request( ).
        lo_web_http_request1->set_authorization_basic( i_username = 'MIG0311'
                                                       i_password = 'TnsaKwxsYGoVMb+WTAznkK5bLbBcUbwynDnmDTNU' ).
        lo_web_http_request1->set_header_field( i_name  = 'X-CSRF-Token'
                                                i_value = 'fetch'  ).
        DATA(lo_web_http_response1) = lo_web_http_client1->execute( if_web_http_client=>get ).
        DATA(lv_response1) = lo_web_http_response1->get_header_fields( ).
        DATA(lv_COOKIE) = lo_web_http_response1->get_cookies( ).
        DATA(token) = VALUE #( lv_response1[ name = 'x-csrf-token' ]-value OPTIONAL ).

        " Create Http destination by url; API Endpoint for API Sandbox
        DATA(lo_http_destination1) =
             cl_http_destination_provider=>create_by_url( lv_url ).
        " create HTTP client by destination
        DATA(lo_web_http_client) = cl_web_http_client_manager=>create_by_http_destination( lo_http_destination1 ).
        " Adding headers
        DATA(lo_web_http_request) = lo_web_http_client->get_http_request( ).
        lo_web_http_request->set_authorization_basic( i_username = 'MIG0311'
                                                      i_password = 'TnsaKwxsYGoVMb+WTAznkK5bLbBcUbwynDnmDTNU' ).
        lo_web_http_request->set_header_fields( VALUE #( (  name = 'x-csrf-token' value = token )
                                                         (  name = 'DataServiceVersion' value = '2.0' )
                                                         (  name = 'Accept' value = 'application/json' )
                                                         (  name = 'Content-Type' value = 'application/json' ) ) ).
        DATA(cookie11) = lv_COOKIE[ 1 ].
        lo_web_http_request->set_cookie( i_domain  = cookie11-domain
                                         i_expires = cookie11-expires
                                         i_name    = cookie11-name
                                         i_path    = cookie11-path
                                         i_secure  = cookie11-secure
                                         i_value   = cookie11-value  ).

        CONDENSE json.
        lo_web_http_request->set_text( json ).
        " set request method and execute request
        DATA(lo_web_http_response) = lo_web_http_client->execute( if_web_http_client=>patch ).
        data(status)   =  lo_web_http_response->get_status( ) .
        data(Error1)   =  lo_web_http_response->get_text( ) .


        IF status-code = '201'.
*          resp1 =  |{ status-code } { createdocument( json =  lo_web_http_response->get_text( ) )  } |.
         "  resp1 =  |201  Created Successfully|  .
        ELSE.
          resp1 = get_error( json =  lo_web_http_response->get_text( ) ) .   " |{ status-code }{ 'Error' }
        ENDIF.

      CATCH cx_http_dest_provider_error cx_web_http_client_error cx_web_message_error.
        " error handling
    ENDTRY.

 ENDMETHOD.


METHOD GETDATA.


SELECT SINGLE * FROM ZCOMPANYCODECUSTOMER_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(company).

SELECT SINGLE * FROM ZSALESDISTR_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(paymentrans).

SELECT SINGLE * FROM ZGENERALDATACUSTOMER_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO @Data(genrdata).
SELECT * FROM ZCUS_WIHOLDING_CDS WITH PRIVILEGED ACCESS as a WHERE
Taskid = @taxkid INTO TABLE @Data(withholdtax).
 DATA fin_json TYPE STRING.
 DATA(rb) = '{'.
 DATA(lb) = '}'.

IF TYP = 'COM' AND DELUNDELTYP <> 'DEL'  AND DELUNDELTYP <> 'UNDEL'.
fin_json = fin_json &&
 | { rb } | &
 |{ '"d": {' }| &
 |"AuthorizationGroup": "{ company-Accountauthorizationgroup }",| .
 fin_json = fin_json &&
   |"AccountingClerkFaxNumber": "{ company-Acctgclerkfax }", | &
   |"AccountingClerkPhoneNumber": "{ company-Acctclerkstelno }", | &
   |"PaymentMethodsList": "{ company-Paymentmethods }", | &
   |"PaymentReason": "{ company-Paymentpaymentreason }", | &
   |"PaymentTerms": "{ company-Termsofpayment }", | .

 IF company-Clearingwcustomer <> ''.
 fin_json = fin_json &&
 |"ClearCustomerSupplier": { 'true' },| .
 ENDIF.

   IF company-Localprocessing <> ''.
   fin_json = fin_json &&
   |"IsToBeLocallyProcessed": { 'true' },| .
   ENDIF.

   IF company-Sentpaymentadvice <> '' .
   fin_json = fin_json &&
   |"PaymentIsToBeSentByEDI": { company-Sentpaymentadvice },| .
   ENDIF.

   fin_json = fin_json &&
   |"HouseBank": "{ company-Housebank }",| &
   |"CustomerHeadOffice": "{ company-Headoffice }",| &
   |"LayoutSortingRule": "{ company-Sortkey }",| &
   |"APARToleranceGroup": "{ company-Tolerancegroup }",| &
   |"CashPlanningGroup": "{ company-Planninggroup }",| .

   IF company-Checkdoubleinvoice <>  '' .
    fin_json = fin_json &&
   |"IsToBeCheckedForDuplicates": { 'true' },| .
   ENDIF.
 fin_json = fin_json &&
 |"CompanyCode": "{ company-Companycode }",| &
 |"ReconciliationAccount": "{ company-Reconciliationacct }",| .


  fin_json = fin_json &&
 |"CustomerAccountGroup": "{ genrdata-Customeraccountgroup }"| &

* |"to_WithHoldingTax": { '{' }        | &
* |"results":    { '[' }                                                 | .
*
*
********************************************************************************
*SELECT FROM @withholdtax as a
*FIELDS COUNT( * ) INTO @DATA(COUNTLINE).
*DATA N TYPE I .
*
*LOOP AT withholdtax INTO DATA(wa_withholdtax).
*
* N = N + 1 .
*
*fin_json = fin_json &&
* |        { '{' }                                                       | &
* |           "Customer": "{ CUSTOMER }",                                | &
* |           "CompanyCode": "{ company-Companycode }",                             | &
* |           "WithholdingTaxType": "{ wa_withholdtax-Wtaxtype }",                      | .
*
**IF wa_withholdtax-Subject <> '' .
** fin_json = fin_json &&
** |           "WithholdingTaxAgent": { wa_withholdtax-Subject },                     | .
** ENDIF.
*
*
* fin_json = fin_json &&
** |           "RecipientType": "{ wa_withholdtax-Rectype }",                           | &
* |           "WithholdingTaxCode": "{ wa_withholdtax-Wtaxcode }"                      | &
* |    { '}' }                                                     | .
*
*   IF countline <> 1 AND N <> countline .
*     fin_json = fin_json &&
*     | ,| .
*    ENDIF.
*
* ENDLOOP.
*
********************************************************************************
* fin_json = fin_json &&
* |  { ']' }                                                       | &
* | { '}' }                                                        | &
*
* |{  ',' } | &
* |   "to_CustomerDunning":  { '{' }                                                       | &
* |      "results": { '[' }                                                                | &
* |          { '{' }                                                                      | &
* |            "Customer": "{ CUSTOMER }",                                               | &
* |            "CompanyCode": "{ company-Companycode }",                                            | &
** |            "DunningArea": "{ company-d }",                                            | &
* |            "DunningBlock": "{ company-Dunningblock }",                                           | &
* |            "DunningLevel": "{ company-Dunninglevel }",                                           | &
* |            "DunningProcedure": "{ company-Dunningprocedure }",                                       | &
* |            "DunningRecipient": "{ company-Dunnrecipient }",                                       | &
** |            "LastDunnedOn": "/Date(1492041600000)/",                            | &
** |            "LegDunningProcedureOn": "/Date(1492041600000)/",                   | &
* |            "DunningClerk": "{ company-Dunningclerk }",                                           | &
* |            "AuthorizationGroup": "{ company-Accountauthorizationgroup }",                                     | &
* |            "CustomerAccountGroup": "{ genrdata-Customeraccountgroup }"                                    | &
* |         { '}' }                                                                | &
* |       { ']' }                                                                  | &
* |   { '}' }         | &
| { lb } | &
 | { lb } | .


ELSEIF TYP = 'SALES' AND DELUNDELTYP <> 'DEL' AND DELUNDELTYP <> 'UNDEL'.


fin_json = fin_json &&
 | { rb } | &
 | { '"d": {' }| &
 |  "Currency": "{ paymentrans-Currency }",                                     | &
 |  "CustomerPaymentTerms": "{ company-Termsofpayment }",                        | &
 |  "ItemOrderProbabilityInPercent": "{ paymentrans-Orderprobability }",                | &
 |  "OrderCombinationIsAllowed": true     ,                 | &
  | "CustomerGroup": "{ paymentrans-Customergroup }",                                           | &
  | "SalesDistrict": "{ paymentrans-Salesdistrict }",      | &
  | "SalesGroup": "{ paymentrans-Salesgroup }",    | &
  | "SalesItemProposal": "{ paymentrans-Itemproposal }",    | &
  | "SalesOffice": "{ paymentrans-Salesoffice }",    | &
  | "AccountByCustomer": "{ paymentrans-Accountatcustomer }",    | &
  | "AuthorizationGroup": "{ paymentrans-Authorizationgroup }",    | &
  | "PaymentGuaranteeProcedure": "{ paymentrans-Paymtguarantproc }",    | &
  | "ExchangeRateType": "{ paymentrans-Exchangeratetype }",    | &
  | "CustomerPriceGroup": "{ paymentrans-Pricegroup }",    | &
  | "CustomerPricingProcedure": "{ paymentrans-Custpricprocedure }",    | &
  | "CustomerStatisticsGroup": "{ paymentrans-Customerstats }",    | &
  | "PriceListType": "{ paymentrans-Pricelist }",    | &
  | "DeliveryPriority": "{ paymentrans-Deliverypriority }",    | &
  | "ShippingCondition": "{ paymentrans-Shippingconditions }",    | &
  | "InvoiceDate": "{ paymentrans-Invoicingdates }",    | &
  | "InvoiceListSchedule": "{ paymentrans-Invoicelistsched }",       | &
  | "IncotermsClassification": "{ paymentrans-Incoterms }",    | &
  |  "IncotermsTransferLocation": "{ paymentrans-Incotermloc1id }",| &
  | "IncotermsLocation2": "{ paymentrans-Incotermslocation2 }",  | &
  | "IncotermsVersion": "{ paymentrans-Incotermsversion }",    | &
  | "IncotermsLocation1": "{ paymentrans-Incotermslocation1 }",    | &
  | "CustomerAccountAssignmentGroup": "{ paymentrans-Acctassmtgrpcust }",    | &
  | "AdditionalCustomerGroup1": "{ paymentrans-Customergroup1 }",    | &
  | "AdditionalCustomerGroup2": "{ paymentrans-Customergroup2 }",    | &
  | "AdditionalCustomerGroup3": "{ paymentrans-Customergroup3 }",    | &
  | "AdditionalCustomerGroup4": "{ paymentrans-Customergroup4 }",    | &
  | "AdditionalCustomerGroup5": "{ paymentrans-Customergroup5 }"   | &

*  | "to_SalesAreaTax": { rb } | &
*  |    "results": [    | .

*SELECT * FROM  ZMDM_CUS_OTPTTAX_CDS WITH PRIVILEGED ACCESS as a
*WHERE Taskid = @taxkid INTO TABLE @DATA(OUTPUTAX).
*
*SELECT FROM @OUTPUTAX as a
*FIELDS COUNT( * ) INTO @DATA(COUNTLINEOUTPUT).
*
*CLEAR:N.
*LOOP AT OUTPUTAX INTO DATA(WA_OUTPUTAX) .
*
* N = N + 1 .
*
*  fin_json = fin_json &&
*  |     { rb }   | &
*  |          "Customer": "{ customer }",    | &
*  |          "SalesOrganization": "{ paymentrans-Salesorganization }",    | &
*  |          "DistributionChannel": "{ paymentrans-Distributionchannel }",    | &
*  |          "Division": "{ paymentrans-Division }",    | &
*  |          "DepartureCountry": "{ WA_OUTPUTAX-Depctryreg }",    | &
*  |          "CustomerTaxCategory": "{ WA_OUTPUTAX-Taxconditiontype }",    | &
*  |          "CustomerTaxClassification": "{ WA_OUTPUTAX-Taxclassification }"    | &
*  |     { lb }    | .
*
*     IF COUNTLINEOUTPUT <> 1 AND N <> COUNTLINEOUTPUT .
*     fin_json = fin_json &&
*     | ,| .
*    ENDIF.
*    CLEAR:WA_OUTPUTAX.
*
*  ENDLOOP.
*  fin_json = fin_json &&
*  |    ]    | &
   |  { lb }  | &
 | { lb } | .


ELSEIF  ( DELUNDELTYP = 'DEL'  ) AND ( TYP = 'SALES' OR TYP = 'COM').

fin_json = fin_json &&
    | { '{' } | &
    | { '"d": {' }| &
    | "DeletionIndicator": true | &
    |{ '}' }| &
    |{ '}' }|.

ELSEIF  ( DELUNDELTYP = 'UNDEL'  ) AND ( TYP = 'SALES' OR TYP = 'COM').

fin_json = fin_json &&
    | { '{' } | &
    | { '"d": {' }| &
    |"DeletionIndicator": false | &
    |{ '}' }| &
    |{ '}' }|.
ENDIF.

 CONDENSE fin_json .

   TRY .
    DATA(status261) = CUS_po( json = fin_json CUSTOMER = CUSTOMER typ = typ Comapnycode = company-Companycode distributionchannel = paymentrans-Distributionchannel division = paymentrans-Division
    salesorg = paymentrans-Salesorganization ).
    CATCH cx_static_check.
  ENDTRY .

 Status = status261.

ENDMETHOD.


 METHOD get_error.

      DATA lv TYPE string.
      FIELD-SYMBOLS <data>  TYPE data.
      FIELD-SYMBOLS <field> TYPE any.
      DATA(lr_d1) = /ui2/cl_json=>generate( json = json ).

      IF lr_d1 IS  BOUND .
      ASSIGN lr_d1->* TO <data>.
      ASSIGN COMPONENT `ERROR` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      ASSIGN COMPONENT `INNERERROR` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      IF sy-subrc = 0.
      ASSIGN COMPONENT `ERRORDETAILS` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      LOOP AT <data> ASSIGNING FIELD-SYMBOL(<fs>).
      ASSIGN <fs>->* TO FIELD-SYMBOL(<fs1>) .
      ASSIGN COMPONENT `MESSAGE` OF STRUCTURE <fs1> TO <field>    .
      IF sy-subrc = 0.
      ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
      ASSIGN <field>->* TO <data>.
      DATA ERRORMSJ TYPE STRING.
      ERRORMSJ = ERRORMSJ && cl_abap_char_utilities=>cr_lf && <data> .
      ENDIF.
      ENDLOOP.
      ENDIF.
      ENDIF.
      ENDIF.
      ELSE.
      ASSIGN COMPONENT `MESSAGE` OF STRUCTURE <data> TO <field>.
      IF sy-subrc = 0.
      ASSIGN <field>->* TO <data>.
      IF sy-subrc = 0.
      ASSIGN COMPONENT `VALUE` OF STRUCTURE <data> TO <field>.
      ASSIGN <field>->* TO <data>.
      ERRORMSJ  =  <data>.
      ENDIF.
      ENDIF.
      ENDIF.
      ERROR_DESC  =   ERRORMSJ .

      ENDIF .

 ENDMETHOD.


METHOD get_mat.
    DATA matnr TYPE char18.

    matnr = |{ mat ALPHA = IN }|.
    material = matnr.
  ENDMETHOD.


   METHOD if_oo_adt_classrun~main.
   DATA(RESS) = GETDATA( CUSTOMER = '8800000012'  taxkid = '01000082' typ = 'SALES' distributionchannel = '01' division = '01' ).
  ENDMETHOD.
ENDCLASS.

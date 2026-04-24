CLASS zcl_mdm_module_customer_api DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      CreateCUS
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.

      CLASS-METHODS :
      GETDATA
      IMPORTING VALUE(CUSTOMER)  TYPE I_CUSTOMER-CUSTOMER OPTIONAL
      VALUE(TaxkID)  TYPE STring OPTIONAL
      VALUE(companycode)  TYPE STring OPTIONAL
      VALUE(salesorg)  TYPE STring OPTIONAL
      VALUE(distributionchannel)  TYPE STring OPTIONAL
      VALUE(division)  TYPE STring OPTIONAL
      VALUE(TYP)  TYPE string OPTIONAL
      RETURNING VALUE(Status) TYPE string,

      CUS_po
      IMPORTING VALUE(json)  TYPE string OPTIONAL
      VALUE(CUSTOMER)  TYPE I_CUSTOMER-CUSTOMER OPTIONAL
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
      RETURNING VALUE(material) TYPE char18.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUSTOMER_API IMPLEMENTATION.


 METHOD CreateCUS.


* {
   "Supplier": "100000153",
   "CompanyCode": "2000",
   "PaymentTerms": "0001",
   "Currency": "INR",
   "ReconciliationAccount": "12110000",
   "SupplierAccountGroup": "SUPL",
   "IsToBeCheckedForDuplicates": true
*}

*https://my409624.s4hana.cloud.sap:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_Supplier(%27100000153%27)/to_SupplierCompany


*{
*   "Supplier": "100000153",
*   "PurchasingOrganization": "1000",
*   "CalculationSchemaGroupCode": "ZD",
*   "IncotermsVersion": "",
*   "IncotermsLocation1": "",
*   "IncotermsLocation2": "",
*   "InvoiceIsGoodsReceiptBased": "X",
*   "PaymentTerms": "0001",
*   "PurchaseOrderCurrency": "INR",
*   "PurchasingGroup": "P01",
*   "RoundingProfile": "",
*   "AuthorizationGroup": "",
*   "SupplierAccountGroup": "SUPL",
*   "to_PurchasingOrgText": {
*      "results": [
*         {
*            "Supplier": "100000153",
*            "PurchasingOrganization": "1000",
*            "Language": "E",
*            "LongTextID": "TEST"
*         }
*      ]
*   }
*}
 ENDMETHOD.


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

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_Customer(%27{ CUSTOMER }%27)/to_CustomerCompany|.

ELSEIF TYP = 'SALES'.

lv_url = |https://{ cl_abap_context_info=>get_system_url(  ) }:443/sap/opu/odata/sap/API_BUSINESS_PARTNER/A_Customer(%27{ CUSTOMER }%27)/to_CustomerSalesArea|.

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
        DATA(lo_web_http_response) = lo_web_http_client->execute( if_web_http_client=>post ).
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
 DATA COMVAL TYPE STRING.
 DATA SALESVAL TYPE STRING.
 DATA DISVAL TYPE STRING.
 DATA DIVVAL TYPE STRING.

 DATA(rb) = '{'.
 DATA(lb) = '}'.

IF TYP = 'COM'.

IF companycode <> ''.
COMVAL = companycode.
ELSE.
COMVAL = company-Companycode.
ENDIF.


fin_json = fin_json &&
 | { rb } | &
 |"Customer": "{ CUSTOMER }",| &
 |"AuthorizationGroup": "{ company-Accountauthorizationgroup }",| .

* IF company-Automaticpaymentblock <> ''.
* fin_json = fin_json &&
* |"SupplierIsBlockedForPosting": { 'true' },| .
* ENDIF.

 fin_json = fin_json &&
*   |"AccountingClerk": "{ company-Clerkatvendor }",                   | &
   |"AccountingClerkFaxNumber": "{ company-Acctgclerkfax }", | &
   |"AccountingClerkPhoneNumber": "{ company-Acctclerkstelno }", | &
*   |"SupplierClerk": "{ company-Accountwithvendor }", | &
*   |"SupplierClerkURL": "string", | &
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
*   |"ItemIsToBePaidSeparately": true,| &
   |"PaymentIsToBeSentByEDI": { company-Sentpaymentadvice },| .
   ENDIF.

   fin_json = fin_json &&
   |"HouseBank": "{ company-Housebank }",| &
*   |"SupplierClerkIDBySupplier": "{ company-Clerkatvendor }",| &
   |"CustomerHeadOffice": "{ company-Headoffice }",| &
*   |"AlternativePayee": "{ company-Alternativepayee }",| &
   |"LayoutSortingRule": "{ company-Sortkey }",| &
   |"APARToleranceGroup": "{ company-Tolerancegroup }",| &
*   |"SupplierCertificationDate": "/Date(1492041600000)/",| &
*   |"SupplierAccountNote": "{ company- }",| &
*   |"WithholdingTaxCountry": "{ company-Wtaxcrkey }",| &
*   |"DeletionIndicator": true,| &
   |"CashPlanningGroup": "{ company-Planninggroup }",| .

   IF company-Checkdoubleinvoice <>  '' .
    fin_json = fin_json &&
   |"IsToBeCheckedForDuplicates": { 'true' },| .
   ENDIF.
*   |"MinorityGroup": "{ company- }",| &
 fin_json = fin_json &&
 |"CompanyCode": "{ COMVAL }",| &
 |"ReconciliationAccount": "{ company-Reconciliationacct }",| .


  fin_json = fin_json &&
 |"CustomerAccountGroup": "{ genrdata-Customeraccountgroup }",| &

 |"to_WithHoldingTax": { '{' }        | &
 |"results":    { '[' }                                                 | .


*******************************************************************************
SELECT FROM @withholdtax as a
FIELDS COUNT( * ) INTO @DATA(COUNTLINE).
DATA N TYPE I .

LOOP AT withholdtax INTO DATA(wa_withholdtax).

 N = N + 1 .

fin_json = fin_json &&
 |        { '{' }                                                       | &
 |           "Customer": "{ CUSTOMER }",                                | &
 |           "CompanyCode": "{ COMVAL }",                             | &
 |           "WithholdingTaxType": "{ wa_withholdtax-Wtaxtype }",                      | .

*IF wa_withholdtax-Subject <> '' .
* fin_json = fin_json &&
* |           "WithholdingTaxAgent": { wa_withholdtax-Subject },                     | .
* ENDIF.


 fin_json = fin_json &&
* |           "RecipientType": "{ wa_withholdtax-Rectype }",                           | &
 |           "WithholdingTaxCode": "{ wa_withholdtax-Wtaxcode }"                      | &
 |    { '}' }                                                     | .

   IF countline <> 1 AND N <> countline .
     fin_json = fin_json &&
     | ,| .
    ENDIF.

 ENDLOOP.

*******************************************************************************
 fin_json = fin_json &&
 |  { ']' }                                                       | &
 | { '}' }                                                        | &

 |{  ',' } | &
 |   "to_CustomerDunning":  { '{' }                                                       | &
 |      "results": { '[' }                                                                | &
 |          { '{' }                                                                      | &
 |            "Customer": "{ CUSTOMER }",                                               | &
 |            "CompanyCode": "{ COMVAL }",                                            | &
* |            "DunningArea": "{ company-d }",                                            | &
 |            "DunningBlock": "{ company-Dunningblock }",                                           | &
 |            "DunningLevel": "{ company-Dunninglevel }",                                           | &
 |            "DunningProcedure": "{ company-Dunningprocedure }",                                       | &
 |            "DunningRecipient": "{ company-Dunnrecipient }",                                       | &
* |            "LastDunnedOn": "/Date(1492041600000)/",                            | &
* |            "LegDunningProcedureOn": "/Date(1492041600000)/",                   | &
 |            "DunningClerk": "{ company-Dunningclerk }",                                           | &
 |            "AuthorizationGroup": "{ company-Accountauthorizationgroup }",                                     | &
 |            "CustomerAccountGroup": "{ genrdata-Customeraccountgroup }"                                    | &
 |         { '}' }                                                                | &
 |       { ']' }                                                                  | &
 |   { '}' }         | &

 | { lb } | .


ELSEIF TYP = 'SALES'.


IF salesorg <> ''.
SALESVAL = salesorg.
ELSE.
SALESVAL = paymentrans-Salesorganization.
ENDIF.

IF distributionchannel <> ''.
DISVAL = distributionchannel.
ELSE.
DISVAL = paymentrans-Distributionchannel.
ENDIF.


IF division <> ''.
DIVVAL = division.
ELSE.
DIVVAL = paymentrans-Division.
ENDIF.

fin_json = fin_json &&
 | { rb } | &
 |  "Customer": "{ customer }",                              | &
 |  "SalesOrganization": "{ SALESVAL }",                           | &
 |  "DistributionChannel": "{ DISVAL }",                           | &
 |  "Division": "{ DIVVAL }",                                      | &
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


*  | "ItemOrderProbabilityInPercent": "{ paymentrans- }",    | &
*  | "CustomerABCClassification": "{ paymentrans-cu }",    | &
*  | "ProductUnitGroup": "{ paymentrans-p }",    | &
  | "PaymentGuaranteeProcedure": "{ paymentrans-Paymtguarantproc }",    | &
  | "ExchangeRateType": "{ paymentrans-Exchangeratetype }",    | &
*  | "Currency": "{ paymentrans-Currency }",    | &
  | "CustomerPriceGroup": "{ paymentrans-Pricegroup }",    | &
  | "CustomerPricingProcedure": "{ paymentrans-Custpricprocedure }",    | &
  | "CustomerStatisticsGroup": "{ paymentrans-Customerstats }",    | &
  | "PriceListType": "{ paymentrans-Pricelist }",    | &
  | "DeliveryPriority": "{ paymentrans-Deliverypriority }",    | &
  | "ShippingCondition": "{ paymentrans-Shippingconditions }",    | &
*  | "ProofOfDeliveryTimeValue": "{ paymentrans-Podtimeframe }",    | &
*  | "MaxNmbrOfPartialDelivery": "{ paymentrans-Maxpart }",    | &
*  | "PartialDeliveryIsAllowed": "{ paymentrans- }",      | &
*  | "UnderdelivTolrtdLmtRatioInPct": "{ paymentrans-Underdeltolerance }",    | &
*  | "OverdelivTolrtdLmtRatioInPct": "{ paymentrans-Overdelivtolerance }",    | &
  | "InvoiceDate": "{ paymentrans-Invoicingdates }",    | &
  | "InvoiceListSchedule": "{ paymentrans-Invoicelistsched }",       | &
  | "IncotermsClassification": "{ paymentrans-Incoterms }",    | &
  |  "IncotermsTransferLocation": "{ paymentrans-Incotermloc1id }",| &
  | "IncotermsLocation2": "{ paymentrans-Incotermslocation2 }",  | &
  | "IncotermsVersion": "{ paymentrans-Incotermsversion }",    | &
  | "IncotermsLocation1": "{ paymentrans-Incotermslocation1 }",    | &

  | "CustomerAccountAssignmentGroup": "{ paymentrans-Acctassmtgrpcust }",    | &
*  | "CustomerAccountGroup": "{ paymentrans- }",      | &
  | "AdditionalCustomerGroup1": "{ paymentrans-Customergroup1 }",    | &
  | "AdditionalCustomerGroup2": "{ paymentrans-Customergroup2 }",    | &
  | "AdditionalCustomerGroup3": "{ paymentrans-Customergroup3 }",    | &
  | "AdditionalCustomerGroup4": "{ paymentrans-Customergroup4 }",    | &
  | "AdditionalCustomerGroup5": "{ paymentrans-Customergroup5 }" ,  | &
  "BillingIsBlockedForCustomer": "string",
   "CompleteDeliveryIsDefined": true,
  | "to_SalesAreaTax": { rb } | &
  |    "results": [    | .

SELECT * FROM  ZMDM_CUS_OTPTTAX_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO TABLE @DATA(OUTPUTAX).

SELECT FROM @OUTPUTAX as a
FIELDS COUNT( * ) INTO @DATA(COUNTLINEOUTPUT).

CLEAR:N.
LOOP AT OUTPUTAX INTO DATA(WA_OUTPUTAX) .

 N = N + 1 .

  fin_json = fin_json &&
  |     { rb }   | &
  |          "Customer": "{ customer }",    | &
  |          "SalesOrganization": "{ SALESVAL }",    | &
  |          "DistributionChannel": "{ DISVAL }",    | &
  |          "Division": "{ DIVVAL }",    | &
  |          "DepartureCountry": "{ WA_OUTPUTAX-Depctryreg }",    | &
  |          "CustomerTaxCategory": "{ WA_OUTPUTAX-Taxconditiontype }",    | &
  |          "CustomerTaxClassification": "{ WA_OUTPUTAX-Taxclassification }"    | &
  |     { lb }    | .

     IF COUNTLINEOUTPUT <> 1 AND N <> COUNTLINEOUTPUT .
     fin_json = fin_json &&
     | ,| .
    ENDIF.
    CLEAR:WA_OUTPUTAX.

  ENDLOOP.
  fin_json = fin_json &&
  |    ]    | &
   |  { lb }  | &
 | { lb } | .


ENDIF.

 CONDENSE fin_json .

   TRY .
    DATA(status261) = CUS_po( json = fin_json CUSTOMER = CUSTOMER typ = typ ).
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
   DATA(RESS) = GETDATA( CUSTOMER = '8800000022'  taxkid = '1000089' typ = 'SALES' ).
  ENDMETHOD.
ENDCLASS.

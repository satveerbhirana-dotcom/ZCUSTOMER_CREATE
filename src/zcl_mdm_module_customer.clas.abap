CLASS zcl_mdm_module_customer DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
              TYPES: BEGIN OF GeneralData,
                              taskid                    TYPE string,
                              businesspartner           TYPE string,
                              createbp                  TYPE string,
                              grouping                  TYPE string,
                              title                     TYPE string,
                              name                      TYPE string,
                              name1_2                   TYPE string,
                              name1                     TYPE string,
                              name2                     TYPE string,
                              firstname                 TYPE string,
                              lastname                  TYPE string,
                              Language                  TYPE string,
                              search1                   TYPE string,
                              search2                   TYPE string,
                              vip                       TYPE string,
                              UndesirableCustomer       TYPE string,
                              Reasonundes               TYPE string,
                              specialcomment            TYPE string,
                              BuildingCode              TYPE string,
                              co                        TYPE string,
                              Street2                   TYPE string,
                              Street3                   TYPE string,
                              StreetHouseNumber         TYPE string,
                              Street4                   TYPE string,
                              Street5                   TYPE string,
                              District                  TYPE string,
                              DifferentCity             TYPE string,
                              Room                      TYPE string,
                              HouseNumber               TYPE string,
                              PostalCodeCity            TYPE string,
                              City                      TYPE string,
                              CountryReg                TYPE string,
                              Region                    TYPE string,
                              TimeZone                  TYPE string,
                              TaxJuris                  TYPE string,
                              transportationzone        TYPE string,
                              StructureGroup            TYPE string,
                              Undeliverable             TYPE string,
                              Floor                     TYPE string,
                              pobox                     TYPE string,
                              postalcode                TYPE string,
                              companycodepostal         TYPE string,
                              Telephone                 TYPE string,
                              mobilephone               TYPE string,
                              Fax                       TYPE string,
                              email                     TYPE string,
                              Comments                  TYPE string,
                              addressvalidfrom          TYPE string,
                              addressvalidto            TYPE string,
                              Externaladdress           TYPE string,
                              AddressTelephone          TYPE string,
                              Addressmobilephone        TYPE string,
                              AddressFax                TYPE string,
                              Addressemail              TYPE string,
                              Legalform                 TYPE string,
                              LegalEntity               TYPE string,
                              Datefounded               TYPE string,
                              Liquidation               TYPE string,
                              Intlocation               TYPE string,
                              Intlocation2              TYPE string,
                              Checkdigit                TYPE string,
                              FactoryCalendar           TYPE string,
                              ExternalBP                TYPE string,
                              Military                  TYPE string,
                              Nuclear                   TYPE string,
                              BPtype                    TYPE string,
                              AuthorizationGroup        TYPE string,
                              PrintFormat               TYPE string,
                              TradingPartnerNo          TYPE string,
                              GroupingCharact           TYPE string,
                              DataOrigin                TYPE string,
                              ENCorrespondence          TYPE string,
                              ENAccountingnote          TYPE string,
                              ENMarketingnote           TYPE string,
                              ENBusinessHours           TYPE string,
                              ENNoteLog                 TYPE string,
                              ENIPMTest                 TYPE string,
                              ENOutboundPackingInstruc  TYPE string,
                              ENVendorDescription       TYPE string,
                              ArchivingFlag             TYPE string,
                              centralBlock              TYPE string,
                              notreleased               TYPE string,
                              Contact                   TYPE string,
                              enddate                   TYPE string,
                              Contactdate               TYPE string,
                              TargetGroup               TYPE string,
                              countryregion             TYPE string,
                              RegisteredRegion          TYPE string,
                              RegisteredRegOffice       TYPE string,
                              BalanceBalSheetCrcy       TYPE string,
                              BalSheetDisp              TYPE string,
                              CapitIncrease             TYPE string,
                              year                      TYPE string,
                              Customernumber            TYPE string,
                              CustomerAccountGroup      TYPE string,
                              SupplierCustomer          TYPE string,
                              GeneralAuthorizationGroup TYPE string,
                              GroupKey                  TYPE string,
                              Repetition                TYPE string,
                              DteLimitID                TYPE string,
                              ExpressStation            TYPE string,
                              Trainstation              TYPE string,
                              LocationCode              TYPE string,
                              Currency1                 TYPE string,
                              SalesYear                 TYPE string,
                              Employee                  TYPE string,
                              Plant                     TYPE string,
                            "  Year                      TYPE string,
                              DeliveryDateRule          TYPE string,
                              DMERecipientCode          TYPE string,
                              InstructionKey            TYPE string,
                              payeeindocument           TYPE string,
                              OriginAcceptance          TYPE string,
                              AlternativePayee          TYPE string,
                              PBCISRNumber              TYPE string,
                              PaymentReason             TYPE string,
                              AltPayer                  TYPE string,
                              FYVariany                 TYPE string,
                              NielsenIndicator          TYPE string,
                              RegionalMarket            TYPE string,
                              CustomerClassification    TYPE string,
                              IndustryCode1             TYPE string,
                              IndustryCode2             TYPE string,
                              IndustryCode3             TYPE string,
                              IndustryCode4             TYPE string,
                              IndustryCode5             TYPE string,
                              Competitors               TYPE string,
                              SalesPartner              TYPE string,
                              Prospect                  TYPE string,
                              DefaultSP                 TYPE string,
                              Consumer                  TYPE string,
                              CSTno                     TYPE string,
                              LSTno                     TYPE string,
                              SerRegNo                  TYPE string,
                              PAN                       TYPE string,
                              PANReference              TYPE string,
                              PANDate                   TYPE string,
                              DeducteeRefNo             TYPE string,
                              GSTVenClass               TYPE string,

*                  SocialInsurance           TYPE string,
*                  SocialInscode             TYPE string,
*                  StdCarrAccCode            TYPE string,
*                  Carfreightgroup           TYPE string,
*                  StatsGroupagent           TYPE string,
*                  ServiceAgentProc          TYPE string,
*                  Profession                TYPE string,
*                  Externalmanuf             TYPE string,
*                  PODRelevant               TYPE string,
*                  Carrierconfirmation       TYPE string,
*                  PaymentBlock              TYPE string,
*                  Altpayee                  TYPE string,
*                  CSTno                     TYPE string,
*                  LSTno                     TYPE string,
*                  SerRegNo                  TYPE string,
*                  pan                       TYPE string,
*                  PANReference              TYPE string,
*                  PANDate                   TYPE string,
*                  DeducteeRefNo             TYPE string,
*                  structuregroup            TYPE string,
*                  undeliverable             TYPE string,
*                  street1                   TYPE string,
*                  street2                   TYPE string,
*                  postal1                   TYPE string,
*                  postal2                   TYPE string,
*                  country                   TYPE string,
*                  Region                    TYPE string,


                  END OF GeneralData.


    TYPES:BEGIN OF SalesDistribution,
                               taskid             TYPE string,
                               Salesdistrict      TYPE string,
                               Customergroup      TYPE string,
                               Salesoffice        TYPE string,
                               Salesgroup         TYPE string,
                               Authorizationgroup TYPE string,
                               Accountatcustomer  TYPE string,
                               Orderprobability   TYPE string,
                               Itemproposal       TYPE string,
                               ABCclass           TYPE string,
                               Roundingoff        TYPE string,
                               unitofmeasuregrp   TYPE string,
                               PPcustomerproced   TYPE string,
                               Currency           TYPE string,
                               Exchangeratetype   TYPE string,
                               Pricegroup         TYPE string,
                               CustPricProcedure  TYPE string,
                               Pricelist          TYPE string,
                               CustomerStats      TYPE string,
                               RelevantSettlement TYPE string,
                               DeliveryPriority   TYPE string,
                               Ordercombination   TYPE string,
                               DeliveringPlant    TYPE string,
                               ShippingConditions TYPE string,
                               PODrelevant        TYPE string,
                               PODTimeframe       TYPE string,
                               CompleteDelivery   TYPE string,
                               MaxPart            TYPE string,
                               PartialDelivItem   TYPE string,
                               UnlimitedTolerance TYPE string,
                               UnderdelTolerance  TYPE string,
                               OverdelivTolerance TYPE string,
                               SubsInvoice        TYPE string,
                               InvoicingDates     TYPE string,
                               InvoiceListSched   TYPE string,
                               IncotermsVersion   TYPE string,
                               Incoterms          TYPE string,
                               IncotermLoc1ID     TYPE string,
                               IncotermsLocation1 TYPE string,
                               IncotermLoc2ID     TYPE string,
                               IncotermsLocation2 TYPE string,
                               TermsofPayment2    TYPE string,
                               Paymtguarantproc   TYPE string,
                               AcctAssmtGrpCust   TYPE string,
                               CustomerGroup1     TYPE string,
                               CustomerGroup2     TYPE string,
                               CustomerGroup3     TYPE string,
                               CustomerGroup4     TYPE string,
                               CustomerGroup5     TYPE string,
                               CustomerGroup6     TYPE string,
                               CustomerGroup7     TYPE string,
                               CustomerGroup8     TYPE string,
                               CustomerGroup9     TYPE string,
                               CustomerGroup10    TYPE string,
                               SalesSelected      TYPE string,
                               DeliverySelected   TYPE string,
                               BillingSelected    TYPE string,
                               BlockSelected      TYPE string,
                               DeletionFlag       TYPE string,
          END OF SalesDistribution.

    TYPES:BEGIN OF Companycode,
                            taskid                    TYPE string,
                                   ReconciliationAcct        TYPE string,
                                   HeadOffice                TYPE string,
                                  Sortkey                   TYPE string,
                                Subsidyindic              TYPE string,
                                AccountAuthorizationGroup TYPE string,
                                 PlanningGroup             TYPE string,
                                   ReleaseGroup              TYPE string,

                                   ValueAdjustment     TYPE string,
                                   BuyingGroup         TYPE string,
                                   ActivityCode        TYPE string,
                                   DistributionType    TYPE string,
                                   WTaxCtryReg         TYPE string,
                                   BExChargesTerms     TYPE string,
                                   KnownNegotiatLeave  TYPE string,
                                   RecordPmntHistory   TYPE string,
                                   Lockbox             TYPE string,
                                   Nextpayee           TYPE string,
                                   ARPledingInd        TYPE string,
                                   Altpayer            TYPE string,
                                   ReasonCodeConv      TYPE string,
                                   SelectionRule       TYPE string,
                                   CustomerWithCI      TYPE string,
                                   CustomerWOCI        TYPE string,
                                   Accounting          TYPE string,
                                   SalesDist           TYPE string,
                                   LegalDepartment     TYPE string,
                                   PolicyNumber        TYPE string,
                                   InstitutionNumber   TYPE string,
                                   AmountInsured       TYPE string,
                                   LeadMonths          TYPE string,
                                   Deductible          TYPE string,








                    MinorityIndicator         TYPE string,
                CertificationDate         TYPE string,
              InterestIndicator         TYPE string,
                  InterestCycle             TYPE string,
                                   LastKeyDate               TYPE string,
                                  LastInterestRun           TYPE string,
                                  WithholdingTaxCode        TYPE string,
                                     WTaxCRKey                 TYPE string,
                                  RecipientType             TYPE string,
                                   ExemptionNumber           TYPE string,
                                   Validuntil                TYPE string,
                           ExemptionAuthority        TYPE string,
                              PreviousAccountNo         TYPE string,
                         PersonnelNumber           TYPE string,
                                    MainEconomicact           TYPE string,
                                  DistrType                 TYPE string,
                                   ActivityCodeGITax         TYPE string,
                                TermsofPayment            TYPE string,
                                 CreditMemoPytTerm         TYPE string,
                                     ToleranceGroup            TYPE string,
                                   CheckCashingTime          TYPE string,
                                    PaymentPaymentReason      TYPE string,
                               checkdoubleinvoice        TYPE string,
                         PaymentMethods            TYPE string,
                             HouseBank                 TYPE string,
                         AutomaticPaymentBlock     TYPE string,
                       PmtMethSupplement         TYPE string,
                       Groupingkey               TYPE string,
                                 Alternativepayee          TYPE string,
                                   BillExLimit               TYPE string,
                           clearingwcustomer         TYPE string,
                    singlepayment             TYPE string,
                       pmtadviceby               TYPE string,
                   PaymentClrgGrpID          TYPE string,
                         sentpaymentadvice         TYPE string,
                        altpayeedoc               TYPE string,
                              InvoiceToleranceGroup     TYPE string,
                          PrepaymentRelevance       TYPE string,
                           AssignmTestGroup          TYPE string,
                               DunningProcedure          TYPE string,
                               DunningBlock              TYPE string,
                          Dunnrecipient             TYPE string,
                          LastDunningNotice         TYPE string,
                         LegalDunnProcFrom         TYPE string,
                         DunningLevel              TYPE string,
                                  DunningClerk              TYPE string,
                           ClerkAbbrev               TYPE string,
                          AccountwithVendor         TYPE string,
                            Clerkatvendor             TYPE string,
                           Acctclerkstelno           TYPE string,
                            Acctgclerkfax             TYPE string,
                       Clrksinternetadd          TYPE string,
                            localprocessing           TYPE string,
                          AccountStatement          TYPE string,
                        AccountMemo               TYPE string,

       END OF Companycode.

   TYPES:BEGIN OF GeneralDatatable1,
         Category      TYPE string,
         Name          TYPE string,
         taxnumberlong TYPE string,
         taxregstatus  TYPE string,
          END OF GeneralDatatable1.

    TYPES: BEGIN OF GeneralDatatable2,
             id               TYPE string,
             cr               TYPE string,
             Bankkey          TYPE string,
             BankAccount      TYPE string,
             controlkey       TYPE string,
             iban             TYPE string,
             bankaccountalias TYPE string,
             Referencedetails TYPE string,
             extid            TYPE string,
             accountholder    TYPE string,
             accountname      TYPE string,
             deletevalue      TYPE string,
           END OF GeneralDatatable2.

    TYPES : BEGIN OF SalesDistribution1,
              depctryreg        TYPE string,
              countryregion     TYPE string,
              taxconditiontype  TYPE string,
              description       TYPE string,
              taxclassification TYPE string,
              deletevalue      TYPE string,
            END OF SalesDistribution1.

    TYPES: BEGIN OF SalesDistribution2,
             pf                 TYPE string,
             Partnerfunction    TYPE string,
             Number             TYPE string,
             assignbp           TYPE string,
             Description        TYPE string,
             partnerdescription TYPE string,
             deletevalue      TYPE string,
           END OF SalesDistribution2.

    TYPES : BEGIN OF Companycodetable5,
              Wtaxtype TYPE string,
              Name     TYPE string,
              Subject TYPE string,
              Wtaxcode TYPE string,
              RecType  TYPE string,
              deletevalue      TYPE string,
            END OF Companycodetable5.

    TYPES : BEGIN OF Files,
            Filename    TYPE string,
            Mimetype  TYPE string,
            Content  TYPE zattachment,
            Programname  TYPE string,
            END OF Files.

    CLASS-DATA it1 TYPE TABLE OF GeneralData.
    CLASS-DATA it2 TYPE TABLE OF SalesDistribution.
    CLASS-DATA it3 TYPE TABLE OF Companycode.
    CLASS-DATA it4 TYPE TABLE OF GeneralDatatable1.
    CLASS-DATA it5 TYPE TABLE OF GeneralDatatable2.
    CLASS-DATA it6 TYPE TABLE OF SalesDistribution1.
    CLASS-DATA it7 TYPE TABLE OF SalesDistribution2.
    CLASS-DATA it8 TYPE TABLE OF Companycodetable5.
        CLASS-DATA it10 TYPE TABLE OF Files.

    TYPES : BEGIN OF RelationshipTable,
            Businesspartner    TYPE string,
            Description  TYPE string,
            ValidFrom  TYPE string,
            ValidTo  TYPE string,
            END OF RelationshipTable.

   CLASS-DATA it11 TYPE TABLE OF RelationshipTable.

    TYPES: BEGIN OF str,
             LogInId                 TYPE STRING,
             salesorgorg             TYPE STRING,
             companycodeHead         TYPE STRING,
             Division                TYPE STRING,
             Distributionchannel                TYPE STRING,
             GeneralData             LIKE it1,
             SalesDistribution       LIKE it2,
             Companycode             LIKE it3,
             GeneralDatatable1       LIKE it4,
             GeneralDatatable2       LIKE it5,
             SalesDistribution1      LIKE it6,
             SalesDistribution2      LIKE it7,
             CompanyCodeTable5       LIKE it8,
              aFiles                 LIKE it10,
              RelationshipTable     LIKE it11,
              Relationship          TYPE string,
              RelationshipCatalog   TYPE string,
           END OF str.

    CLASS-DATA respo TYPE str .

        TYPES : BEGIN OF DeletetVen,
              Taskid              TYPE string,
              Businesspartner     TYPE string,
              Name                TYPE string,
              Delete              TYPE string,
            END OF DeletetVen.

    CLASS-DATA DeletetVenDor TYPE TABLE OF DeletetVen.

    TYPES : BEGIN OF strdlt,
              tabledata LIKE DeletetVenDor,
            END OF strdlt.
    CLASS-DATA respodlt TYPE strdlt .

    TYPES : BEGIN OF strAPRO,
              taskid   TYPE string,
              Userid   TYPE string,
              Password TYPE string,
            END OF strAPRO.
    CLASS-DATA respoAPRO TYPE strAPRO .

   TYPES : BEGIN OF strRejectio,
              RejectionRemark   TYPE string,
              taskid            TYPE string,
              Userid            TYPE string,
            END OF strRejectio.
    CLASS-DATA respRejectio TYPE strRejectio .


TYPES : BEGIN OF extcustomeritem,
              TaskIDNo   TYPE string,
              Businesspartner            TYPE I_Supplier-Supplier,
            END OF extcustomeritem.

 CLASS-DATA extcustomeritemit TYPE TABLE OF extcustomeritem.

 TYPES : BEGIN OF extcustomerheand,
              salesorg   TYPE string,
              distributionchannel            TYPE string,
              division            TYPE string,
              companycode            TYPE string,

            END OF extcustomerheand.

  TYPES : BEGIN OF extvendor,
              headerdata                TYPE extcustomerheand,
              TableDataArray1           LIKE extcustomeritemit,
            END OF extvendor.

    CLASS-DATA respoextven TYPE extvendor .

    INTERFACES if_http_service_extension .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUSTOMER IMPLEMENTATION.


  METHOD if_http_service_extension~handle_request.
    DATA(req) = request->get_form_fields( ).
    DATA(body) = request->get_text( ).
    xco_cp_json=>data->from_string( body )->write_to( REF #( respo  ) ).

    DATA wa_gen TYPE zgeneral_data.
    DATA(type) = VALUE #( req[ name = 'type' ]-value OPTIONAL )   .
    DATA(selectedaction) = VALUE #( req[ name = 'selectedaction' ]-value OPTIONAL )   .

    DATA json  TYPE string .
    DATA(userid) = cl_abap_context_info=>get_user_technical_name( ) .

*   DELETE FROM zgeneral_data .
*   DELETE FROM zven_rejection .
*   DELETE FROM zsales_distr .
*   DELETE FROM zpaymenttrans_c .
*   DELETE FROM zmdm_cus_parnter .
*   DELETE FROM zmdm_wiholding_c .
*   DELETE FROM zmdm_cus_otpttax .

 IF selectedaction  <> 'CustomerExtend' AND selectedaction  <> 'Change Customer' AND type <> 'Delete'  AND type <> 'UnDelete' AND type <> 'Approval' AND type <> 'Unapproval' AND type <> 'Reject' .

      DATA: nr_number     TYPE cl_numberrange_runtime=>nr_number.

      TRY.
          CALL METHOD cl_numberrange_runtime=>number_get
            EXPORTING
              nr_range_nr = '02'
              object      = 'ZCUS1_NO'
              quantity    = 0000000001
            IMPORTING
              number      = nr_number.

        CATCH cx_nr_object_not_found.
        CATCH cx_number_ranges.
      ENDTRY.
      SHIFT nr_number LEFT DELETING LEADING '0'.
      DATA: lv_nr TYPE c LENGTH 7.
      lv_nr = |{ nr_number ALPHA = OUT }|.

    ENDIF.


  IF type = 'Delete' OR  type = 'UnDelete' .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respodlt ) ).



      DATA create_partner TYPE TABLE FOR UPDATE i_businesspartnertp_3.

READ TABLE respodlt-tabledata INTO DATA(HEA_DATA) INDEX 1.

SELECT SINGLE * FROM zgeneral_data WITH PRIVILEGED ACCESS as a
WHERE Taskid = @HEA_DATA-taskid AND Businesspartner = @hea_data-businesspartner INTO @DATA(GENRALDATA).

IF GENRALDATA IS NOT INITIAL .

create_partner = VALUE #( (
                           %key-BusinessPartner = genraldata-Businesspartner
                           %data-BusinessPartnerIsBlocked     = hea_data-delete
                           %control-BusinessPartnerIsBlocked = if_abap_behv=>mk-on
                           ) ).

    MODIFY ENTITIES OF i_businesspartnertp_3
    ENTITY businesspartner
    UPDATE FROM create_partner

           MAPPED DATA(mapped)
    REPORTED DATA(reported)
    FAILED DATA(failed).
COMMIT ENTITIES BEGIN
 RESPONSE OF i_businesspartnertp_3
     FAILED DATA(failed_commit)
     REPORTED DATA(reported_commit).

DATA CUSTOMERDELT TYPE STRING.
DATA ERROR TYPE STRING.
 If failed_commit  is INITIAL  .

 loop at  mapped-businesspartner ASSIGNING FIELD-SYMBOL(<fs1>)    .
 CUSTOMERDELT   = <fs1>-BusinessPartner   .
 endloop .

 ELSE.
  ERROR = 'E'.
IF reported-businesspartner IS NOT INITIAL .
  CUSTOMERDELT = reported-businesspartner[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-businesspartner IS NOT INITIAL .
   CUSTOMERDELT = reported_commit-businesspartner[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
 endif .
*StatusRetun = ERROR && VENDOR.
COMMIT ENTITIES END .

DATA CUSTOMERDEL TYPE I_CUSTOMER-CUSTOMER .
CUSTOMERDEL = genraldata-Businesspartner.
DATA DELUBDEL TYPE STRING .

IF hea_data-delete = 'X'.
DELUBDEL = 'DEL'.
ELSE.
DELUBDEL = 'UNDEL'.
ENDIF.

IF CUSTOMERDEL IS NOT INITIAL .
 DATA(COMPANY) = zmdm_module_customr_api_update=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid typ = 'COM' DELUNDELTYP = DELUBDEL ).
 DATA(SALESPANY) = zmdm_module_customr_api_update=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid typ = 'SALES' DELUNDELTYP = DELUBDEL ).

 ENDIF.

ENDIF.



      LOOP AT respodlt-tabledata INTO DATA(wa).

            UPDATE zgeneral_data SET
                     flag = @wa-delete,
                     deletiondate = @SY-datum,
                     deletiontime = @SY-timlo
                    WHERE
                  taskid = @WA-taskid .

lv_nr =  wa-taskid.
CLEAR:wa.
      ENDLOOP.



        IF type = 'UnDelete' .
        CONCATENATE  'Task ID No.'  lv_nr  'UnDeleted Successfuly' INTO json SEPARATED BY ' '.
         DATA(MAIL) = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'UD' ).

      ELSE.
        CONCATENATE  'Task ID No.'  lv_nr  'Deleted Successfuly' INTO json SEPARATED BY ' '.
         MAIL = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'D' ).
      ENDIF.
      CLEAR:lv_nr.


ELSEIF type = 'Approval' .

      xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

      UPDATE zgeneral_data SET
                  apstatus  = 'X' ,
                  appid = @respoAPRO-userid,
                  app_date = @sy-datum,
                  app_time = @sy-timlo
                    WHERE
                  taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.

* CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly'  INTO json SEPARATED BY ' '.


   IF respoAPRO-taskid IS NOT INITIAL.

SELECT SINGLE * FROM zgeneral_data WITH PRIVILEGED ACCESS
WHERE taskid = @respoAPRO-taskid  INTO @DATA(WA_BASICDATA) .

 SELECT SINGLE *
FROM I_Customer WITH PRIVILEGED ACCESS as a WHERE Customer = @WA_BASICDATA-businesspartner INTO @data(Customer).

if Customer-Customer is INITIAL .

        DATA(VEN) = zcl_mdm_module_Customer_bapi=>createcustomer( taxkid = respoAPRO-taskid ).
IF VEN IS NOT INITIAL.
        DATA(typeerror) = VEN+0(1).
        DATA(len) = strlen( VEN ).
        DATA(Vendor) = VEN+0(10).
ENDIF.

        IF typeerror <> 'E' AND typeerror IS NOT INITIAL .
          DATA(VEN2) = zcl_mdm_module_cus_update=>createcus( VENDOR = Vendor taxkid = respoAPRO-taskid  ).
        ENDIF.

        IF VEN2 IS NOT INITIAL .
        CONCATENATE  'Task ID No.'  respoAPRO-taskid  'Approved Successfuly' 'And Customer Created' VEN INTO json SEPARATED BY ' '.
         MAIL = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'A' ).
        ELSE.
        VEN2 = zcl_mdm_module_cus_update=>unapprovedcus( taxkid = respoAPRO-taskid Userid = '' ).
        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Customer Not Created This Error' VEN INTO json SEPARATED BY ' '.
        ENDIF.

************************************************************Change vendor *******************************************************
else.

     DATA(changeCUS) = zcl_mdm_module_cus_bapi_update=>updatecus( taxkid = respoAPRO-taskid ).
DATA  CUSTOMERCHANGE TYPE STRING.
IF changeCUS IS NOT  INITIAL.
     typeerror = changeCUS+0(1).

        len = strlen( changeCUS ).
        CUSTOMERCHANGE = changeCUS+0(len).
ENDIF.

    IF typeerror <> 'E'.
        CONCATENATE  'Task ID No.'  respoAPRO-taskid 'Approved Successfuly' 'And Customer Changed Successfuly' CUSTOMERCHANGE INTO json SEPARATED BY ' '.
        MAIL = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'CA' ).

    ELSE.

        VEN2 = zcl_mdm_module_CUS_update=>unapprovedcus( taxkid = respoAPRO-taskid Userid = '' ).
        CONCATENATE  'Error Task ID No.'  respoAPRO-taskid  'Not Approved Vendor Not Changed This Error' CUSTOMERCHANGE INTO json SEPARATED BY ' '.

    ENDIF.


ENDIF.
************************************************************Change vendor *******************************************************

ENDIF.

ELSEIF type = 'Unapproval' .

         xco_cp_json=>data->from_string( body )->write_to( REF #( respoAPRO ) ).

           UPDATE zgeneral_data SET
                  apstatus  = '' ,
                  unappid = @respoAPRO-userid,
                  unapp_date = @sy-datum,
                  unapp_time = @sy-timlo,
                  app_date = '00000000',
                  app_time = '000000'
                    WHERE
                  taskid = @respoAPRO-taskid .
      COMMIT WORK AND WAIT.
 CONCATENATE  'Task ID No.'  respoAPRO-taskid  'UnApproved Successfuly'  INTO json SEPARATED BY ' '.
MAIL = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'UA' ).

ELSEIF  type = 'Reject' .

  xco_cp_json=>data->from_string( body )->write_to( REF #( respRejectio ) ).

  DATA WA_zCUS_rejection TYPE zCUS_rejection .

        WA_zCUS_rejection-taskid           = respRejectio-taskid.
        WA_zCUS_rejection-userid           = respRejectio-userid.
        WA_zCUS_rejection-rejdate          = SY-datum.
        WA_zCUS_rejection-rejecttime       = SY-timlo.
        WA_zCUS_rejection-rejectionremark  = respRejectio-rejectionremark.
        MODIFY zCUS_rejection FROM @WA_zCUS_rejection .
        CLEAR:WA_zCUS_rejection.

  UPDATE zgeneral_data SET
         reject  = 'X'
         WHERE
         taskid = @respRejectio-taskid .
      COMMIT WORK AND WAIT.

 CONCATENATE  'Task ID No.'  respRejectio-taskid  'Rejected Successfuly' INTO json SEPARATED BY ' '.
MAIL = zcl_mdm_module_customer_mail=>GETDATA( CUSTOMER =  CUSTOMERDEL taxkid = HEA_DATA-taskid mailtype = 'R' ).


 ELSEIF selectedaction = 'VendorExtend'   .

xco_cp_json=>data->from_string( body )->write_to( REF #( respoextven ) ).

READ TABLE respoextven-tabledataarray1 INTO data(head) INDEX 1.

if respoextven-headerdata-companycode is NOT INITIAL.
 DATA(COMVEN2) = zcl_mdm_module_customer_api=>GETDATA( customer = head-BusinessPartner taxkid = head-taskidno typ = 'COM' companycode = respoextven-headerdata-companycode ).

DATA jsonCOM TYPE STRING.
IF comVEN2 IS INITIAL .
CONCATENATE  'Task ID No.'  head-taskidno  'Company Code Extend Successfuly' INTO jsonCOM SEPARATED BY ' '.
ELSE.
CONCATENATE  'Error Task ID No.'  head-taskidno  'Company Code Not Extend This Error ' comVEN2 INTO jsonCOM SEPARATED BY ' '.
ENDIF.

ENDIF.

if respoextven-headerdata-salesorg is NOT INITIAL AND respoextven-headerdata-distributionchannel is NOT INITIAL AND respoextven-headerdata-division is NOT INITIAL.


  data(VEN2sal) = zcl_mdm_module_customer_api=>GETDATA( customer = head-BusinessPartner taxkid = head-taskidno typ = 'SALES'
   salesorg = respoextven-headerdata-salesorg distributionchannel = respoextven-headerdata-distributionchannel division = respoextven-headerdata-division ).

 DATA jsonPUR TYPE STRING.
IF VEN2sal IS INITIAL .
CONCATENATE  'Task ID No.'  head-taskidno 'Purchase Data Extend Successfuly' INTO jsonPUR SEPARATED BY ' '.
ELSE.
CONCATENATE  'Error Task ID No.'  head-taskidno  'Purchase Data Not Extend This Error ' VEN2sal INTO jsonPUR SEPARATED BY ' '.
ENDIF.

ENDIF.

json = jsonCOM && jsonPUR.

ELSE.

    READ TABLE  respo-generaldata INTO DATA(taskkid) INDEX 1.
    DATA taskkidno TYPE c LENGTH 7.
    IF taskkid-taskid IS INITIAL .
      taskkidno  = lv_nr.
    ELSE.
      taskkidno   = taskkid-taskid.
    ENDIF.

    LOOP AT respo-GeneralData INTO DATA(wa1).

         SELECT SINGLE * FROM zgeneral_data WITH PRIVILEGED ACCESS AS a
        WHERE taskid = @taskkidno INTO @DATA(oldatataskid).
  wa_gen-taskid = taskkidno.
  wa_gen-businesspartner                           =   wa1-businesspartner                            .
  wa_gen-createbp                                  =   wa1-createbp                  .
  wa_gen-grouping                                  =   wa1-grouping                  .
  wa_gen-title                                     =   wa1-title                     .
  wa_gen-name                                      =   wa1-name                      .
  wa_gen-addname                                   =   wa1-name1_2                   .
  wa_gen-name1                                     =   wa1-name1                     .
  wa_gen-name2                                     =   wa1-name2                     .
  wa_gen-firstname                                 =   wa1-firstname                 .
  wa_gen-lastname                                  =   wa1-lastname                  .
  wa_gen-language                                  =   wa1-language                  .
  wa_gen-search1                                   =   wa1-search1                   .
  wa_gen-search2                                   =   wa1-search2                   .
  wa_gen-vip                                       =   wa1-vip                       .
  wa_gen-undesirablecustomer                       =   wa1-undesirablecustomer       .
  wa_gen-reasonundes                               =   wa1-reasonundes               .
  wa_gen-specialcomment                            =   wa1-specialcomment            .
  wa_gen-buildingcode                              =   wa1-buildingcode              .
  wa_gen-co                                        =   wa1-co                        .
  wa_gen-street2                                   =   wa1-street2                   .
  wa_gen-street3                                   =   wa1-street3                   .
  wa_gen-streethousenumber                         =   wa1-streethousenumber         .
  wa_gen-street4                                   =   wa1-street4                   .
  wa_gen-street5                                   =   wa1-street5                   .
  wa_gen-district                                  =   wa1-district                  .
  wa_gen-differentcity                             =   wa1-differentcity             .
  wa_gen-room                                      =   wa1-room                      .
  wa_gen-housenumber                               =   wa1-housenumber               .
  wa_gen-postalcodecity                            =   wa1-postalcodecity            .
  wa_gen-city                                      =   wa1-city                      .
  wa_gen-countryreg                                =   wa1-countryreg                .
  wa_gen-region                                    =   wa1-region                    .
  wa_gen-ztimezone                                 =   wa1-timezone                 .
  wa_gen-taxjuris                                  =   wa1-taxjuris                  .
  wa_gen-transportationzone                        =   wa1-transportationzone        .
  wa_gen-structuregroup                            =   wa1-structuregroup            .
  wa_gen-undeliverable                             =   wa1-undeliverable             .
  wa_gen-floor                                     =   wa1-floor                     .
  wa_gen-pobox                                     =   wa1-pobox                     .
  wa_gen-postalcode                                =   wa1-postalcode                .
  wa_gen-companycodepostal                         =   wa1-companycodepostal         .
  wa_gen-telephone                                 =   wa1-telephone                 .
  wa_gen-mobilephone                               =   wa1-mobilephone               .
  wa_gen-fax                                       =   wa1-fax                       .
  wa_gen-email                                     =   wa1-email                     .
  wa_gen-comments                                  =   wa1-comments                  .
  wa_gen-addressvalidfrom                          =   wa1-addressvalidfrom          .
  wa_gen-addressvalidto                            =   wa1-addressvalidto            .
  wa_gen-externaladdress                           =   wa1-externaladdress           .
  wa_gen-addresstelephone                          =   wa1-addresstelephone          .
  wa_gen-addressmobilephone                        =   wa1-addressmobilephone        .
  wa_gen-addressfax                                =   wa1-addressfax                .
  wa_gen-addressemail                              =   wa1-addressemail              .
  wa_gen-legalform                                 =   wa1-legalform                 .
  wa_gen-legalentity                               =   wa1-legalentity               .
  wa_gen-datefounded                               =   wa1-datefounded               .
  wa_gen-liquidation                               =   wa1-liquidation               .
  wa_gen-intlocation                               =   wa1-intlocation               .
  wa_gen-intlocation2                              =   wa1-intlocation2              .
  wa_gen-checkdigit                                =   wa1-checkdigit                .
  wa_gen-factorycalendar                           =   wa1-factorycalendar           .
  wa_gen-externalbp                                =   wa1-externalbp                .
  wa_gen-military                                  =   wa1-military                  .
  wa_gen-nuclear                                   =   wa1-nuclear                   .
  wa_gen-bptype                                    =   wa1-bptype                    .
  wa_gen-authorizationgroup                        =   wa1-authorizationgroup        .
  wa_gen-printformat                               =   wa1-printformat               .
  wa_gen-tradingpartnerno                          =   wa1-tradingpartnerno          .
  wa_gen-groupingcharact                           =   wa1-groupingcharact           .
  wa_gen-dataorigin                                =   wa1-dataorigin                .
  wa_gen-encorrespondence                          =   wa1-encorrespondence          .
  wa_gen-enaccountingnote                          =   wa1-enaccountingnote          .
  wa_gen-enmarketingnote                           =   wa1-enmarketingnote           .
  wa_gen-enbusinesshours                           =   wa1-enbusinesshours           .
  wa_gen-ennotelog                                 =   wa1-ennotelog                 .
  wa_gen-enipmtest                                 =   wa1-enipmtest                 .
  wa_gen-enoutboundpackinginstruc                  =   wa1-enoutboundpackinginstruc  .
  wa_gen-envendordescription                       =   wa1-envendordescription       .
  wa_gen-archivingflag                             =   wa1-archivingflag             .
  wa_gen-centralblock                              =   wa1-centralblock              .
  wa_gen-notreleased                               =   wa1-notreleased               .
  wa_gen-contact                                   =   wa1-contact                   .
  wa_gen-enddate                                   =   wa1-enddate                   .
  wa_gen-contactdate                               =   wa1-contactdate               .
  wa_gen-targetgroup                               =   wa1-targetgroup               .
  wa_gen-countryregion                             =   wa1-countryregion             .
  wa_gen-registeredregion                          =   wa1-registeredregion          .
  wa_gen-registeredregoffice                       =   wa1-registeredregoffice       .
  wa_gen-balancebalsheetcrcy                       =   wa1-balancebalsheetcrcy       .
  wa_gen-balsheetdisp                              =   wa1-balsheetdisp              .
  wa_gen-capitincrease                             =   wa1-capitincrease             .
  wa_gen-zyear                                     =   wa1-year                     .
  wa_gen-customernumber                            =   wa1-customernumber            .
  wa_gen-customeraccountgroup                      =   wa1-customeraccountgroup      .
  wa_gen-suppliercustomer                          =   wa1-suppliercustomer          .
  wa_gen-generalauthorizationgroup                 =   wa1-generalauthorizationgroup .
  wa_gen-groupkey                                  =   wa1-groupkey                  .
  wa_gen-repetition                                =   wa1-repetition                .
  wa_gen-dtelimitid                                =   wa1-dtelimitid                .
  wa_gen-expressstation                            =   wa1-expressstation            .
  wa_gen-trainstation                              =   wa1-trainstation              .
  wa_gen-locationcode                              =   wa1-locationcode              .
  wa_gen-currency1                                 =   wa1-currency1                 .
  wa_gen-salesyear                                 =   wa1-salesyear                 .
  wa_gen-employee                                  =   wa1-employee                  .
  wa_gen-plant                                     =   wa1-plant                     .
  wa_gen-deliverydaterule                          =   wa1-deliverydaterule          .
  wa_gen-dmerecipientcode                          =   wa1-dmerecipientcode          .
  wa_gen-instructionkey                            =   wa1-instructionkey            .
  wa_gen-payeeindocument                           =   wa1-payeeindocument           .
  wa_gen-originacceptance                          =   wa1-originacceptance          .
  wa_gen-alternativepayee                          =   wa1-alternativepayee          .
  wa_gen-pbcisrnumber                              =   wa1-pbcisrnumber              .
  wa_gen-paymentreason                             =   wa1-paymentreason             .
  wa_gen-altpayer                                  =   wa1-altpayer                  .
  wa_gen-fyvariany                                 =   wa1-fyvariany                 .
  wa_gen-nielsenindicator                          =   wa1-nielsenindicator          .
  wa_gen-regionalmarket                            =   wa1-regionalmarket            .
  wa_gen-customerclassification                    =   wa1-customerclassification    .
  wa_gen-industrycode1                             =   wa1-industrycode1             .
  wa_gen-industrycode2                             =   wa1-industrycode2             .
  wa_gen-industrycode3                             =   wa1-industrycode3             .
  wa_gen-industrycode4                             =   wa1-industrycode4             .
  wa_gen-industrycode5                             =   wa1-industrycode5             .
  wa_gen-competitors                               =   wa1-competitors               .
  wa_gen-salespartner                              =   wa1-salespartner              .
  wa_gen-prospect                                  =   wa1-prospect                  .
  wa_gen-defaultsp                                 =   wa1-defaultsp                 .
  wa_gen-consumer                                  =   wa1-consumer                  .
  wa_gen-cstno                                     =   wa1-cstno                     .
  wa_gen-lstno                                     =   wa1-lstno                     .
  wa_gen-serregno                                  =   wa1-serregno                  .
  wa_gen-pan                                       =   wa1-pan                       .
  wa_gen-panreference                              =   wa1-panreference              .
  wa_gen-pandate                                   =   wa1-pandate                   .
  wa_gen-deducteerefno                             =   wa1-deducteerefno             .
  wa_gen-gstvenclass                               =   wa1-gstvenclass               .

       IF selectedaction  = 'Change Customer' .

          wa_gen-created_by      = oldatataskid-created_by.
          wa_gen-created_date    = oldatataskid-created_date.
          wa_gen-created_time    = oldatataskid-created_time.
          wa_gen-login_id        = oldatataskid-login_id.
        ELSE.
          wa_gen-created_by      = userid.
          wa_gen-created_date    = sy-datum.
          wa_gen-created_time    = sy-timlo.
          wa_gen-login_id        = respo-LogInId.
        ENDIF.

        wa_gen-change_by       = userid .
        wa_gen-change_date     = sy-datum.
        wa_gen-change_time     = sy-timlo.
        wa_gen-change_login_id = respo-LogInId  .




*      wa_gen-businesspartner      = wa1-businesspartner.
*      wa_gen-createbp             = wa1-createbp    .
*      wa_gen-grouping             = wa1-grouping  .
*      wa_gen-title                = wa1-title     .
*      wa_gen-name                 = wa1-name      .
*      wa_gen-name1                = wa1-name1     .
*      wa_gen-name2                = wa1-name2     .
*      wa_gen-firstname            = wa1-firstname .
*      wa_gen-lastname             = wa1-lastname  .
*      wa_gen-language             = wa1-language  .
*      wa_gen-search1              = wa1-search1   .
*      wa_gen-search2              = wa1-search2   .
*      wa_gen-vip                  = wa1-vip       .
*      wa_gen-undesirablecustomer  = wa1-undesirablecustomer.
**      wa_gen-reason               = wa1-reason             .
*      wa_gen-specialcomment       = wa1-specialcomment     .
**      wa_gen-street1                = wa1-street1      .
*      wa_gen-street2                = wa1-street2  .
*      wa_gen-postalcodecity                = wa1-postalcodecity       .
**      wa_gen-postal2                = wa1-postal2  .
**      wa_gen-country                = wa1-country  .
*      wa_gen-region                 = wa1-region   .
*      wa_gen-pobox                  = wa1-pobox    .
*      wa_gen-postalcode             = wa1-postalcode    .
*      wa_gen-companycodepostal      = wa1-companycodepostal   .
*      wa_gen-telephone              = wa1-telephone           .
*      wa_gen-mobilephone            = wa1-mobilephone         .
*      wa_gen-fax                    = wa1-fax                 .
*      wa_gen-email                  = wa1-email               .
*      wa_gen-comments               = wa1-comments            .
*      wa_gen-addressvalidfrom       = wa1-addressvalidfrom    .
*      wa_gen-addressvalidto         = wa1-addressvalidto      .
*      wa_gen-externaladdress        = wa1-externaladdress     .
*      wa_gen-addresstelephone       = wa1-addresstelephone    .
*      wa_gen-addressmobilephone     = wa1-addressmobilephone  .
*      wa_gen-addressfax             = wa1-addressfax   .
*      wa_gen-addressemail           = wa1-addressemail .
*      wa_gen-legalform               = wa1-legalform    .
*      wa_gen-legalentity             = wa1-legalentity  .
*      wa_gen-datefounded             = wa1-datefounded  .
*      wa_gen-liquidation             = wa1-liquidation  .
*      wa_gen-intlocation             = wa1-intlocation  .
*      wa_gen-intlocation2            = wa1-intlocation2 .
*      wa_gen-checkdigit              = wa1-checkdigit   .
*      wa_gen-factorycalendar         = wa1-factorycalendar     .
*      wa_gen-externalbp              = wa1-externalbp          .
*      wa_gen-military                = wa1-military            .
*      wa_gen-nuclear                 = wa1-nuclear             .
*      wa_gen-bptype                  = wa1-bptype              .
*      wa_gen-authorizationgroup      = wa1-authorizationgroup  .
*      wa_gen-printformat             = wa1-printformat         .
*      wa_gen-tradingpartnerno        = wa1-tradingpartnerno    .
*      wa_gen-groupingcharact         = wa1-groupingcharact     .
*      wa_gen-dataorigin              = wa1-dataorigin          .
*      wa_gen-encorrespondence        = wa1-encorrespondence    .
*      wa_gen-enaccountingnote        = wa1-enaccountingnote    .
*      wa_gen-enmarketingnote         = wa1-enmarketingnote     .
*      wa_gen-enbusinesshours         = wa1-enbusinesshours     .
*      wa_gen-ennotelog               = wa1-ennotelog           .
*      wa_gen-enipmtest               = wa1-enipmtest           .
*      wa_gen-enoutboundpackinginstruc = wa1-enoutboundpackinginstruc.
*      wa_gen-envendordescription     = wa1-envendordescription .
*      wa_gen-archivingflag           = wa1-archivingflag       .
*      wa_gen-centralblock            = wa1-centralblock        .
*      wa_gen-notreleased             = wa1-notreleased         .
*      wa_gen-contact                 = wa1-contact             .
*      wa_gen-enddate                 = wa1-enddate             .
*      wa_gen-contactdate             = wa1-contactdate         .
*      wa_gen-targetgroup             = wa1-targetgroup         .
*      wa_gen-countryregion           = wa1-countryregion       .
*      wa_gen-registeredregion        = wa1-registeredregion    .
*      wa_gen-registeredregoffice     = wa1-registeredregoffice .
*      wa_gen-balancebalsheetcrcy     = wa1-balancebalsheetcrcy .
*      wa_gen-balsheetdisp            = wa1-balsheetdisp        .
*      wa_gen-capitincrease           = wa1-capitincrease       .
*      wa_gen-zyear                   = wa1-year               .
*      wa_gen-customernumber          = wa1-customernumber      .
*      wa_gen-customeraccountgroup    = wa1-customeraccountgroup.
*      wa_gen-suppliercustomer        = wa1-suppliercustomer    .
*      wa_gen-generalauthorizationgroup   = wa1-generalauthorizationgroup.
*      wa_gen-groupkey                    = wa1-groupkey        .
*      wa_gen-repetition                  = wa1-repetition      .
*      wa_gen-dtelimitid                  = wa1-dtelimitid      .
*      wa_gen-trainstation                = wa1-trainstation    .
*      wa_gen-originacceptance            = wa1-originacceptance.
*      wa_gen-dmerecipientcode            = wa1-dmerecipientcode.
*      wa_gen-instructionkey               = wa1-instructionkey .
*      wa_gen-payeeindocument         = wa1-payeeindocument        .
*      wa_gen-alternativepayee        = wa1-alternativepayee       .
*      wa_gen-pbcisrnumber            = wa1-pbcisrnumber           .
*      wa_gen-paymentreason           = wa1-paymentreason          .
**      wa_gen-socialinsurance         = wa1-socialinsurance        .
**      wa_gen-socialinscode           = wa1-socialinscode          .
**      wa_gen-stdcarracccode          = wa1-stdcarracccode         .
**      wa_gen-carfreightgroup         = wa1-carfreightgroup        .
**      wa_gen-statsgroupagent         = wa1-statsgroupagent        .
**      wa_gen-serviceagentproc        = wa1-serviceagentproc       .
**      wa_gen-profession              = wa1-profession             .
**      wa_gen-externalmanuf           = wa1-externalmanuf          .
**      wa_gen-podrelevant             = wa1-podrelevant            .
**      wa_gen-carrierconfirmation     = wa1-carrierconfirmation    .
**      wa_gen-paymentblock            = wa1-paymentblock           .
**      wa_gen-altpayee                = wa1-altpayee               .
*      wa_gen-cstno                   = wa1-cstno                  .
*      wa_gen-lstno                   = wa1-lstno                  .
*      wa_gen-serregno                = wa1-serregno               .
*      wa_gen-pan                     = wa1-pan                    .
*      wa_gen-panreference            = wa1-panreference           .
*      wa_gen-pandate                 = wa1-pandate                .
*      wa_gen-deducteerefno           = wa1-deducteerefno          .
*
*
*
*      IF selectedaction  = 'Change Customer' .
*
*          wa_gen-created_by      = oldatataskid-created_by.
*          wa_gen-created_date    = oldatataskid-created_date.
*          wa_gen-created_time    = oldatataskid-created_time.
*          wa_gen-login_id        = oldatataskid-login_id.
*        ELSE.
*          wa_gen-created_by      = userid.
*          wa_gen-created_date    = sy-datum.
*          wa_gen-created_time    = sy-timlo.
**          wa_gen-login_id        = respo-userid.
*        ENDIF.
*
*        wa_gen-change_by       = userid .
*        wa_gen-change_date     = sy-datum.
*        wa_gen-change_time     = sy-timlo.
*        wa_gen-change_login_id = respo-userid.
*wa_gen-buildingcode             = wa1-buildingcode         .
*wa_gen-room                     = wa1-room                 .
*wa_gen-floor                    = wa1-floor                .
*wa_gen-street3                  = wa1-street3              .
*wa_gen-streethousenumber        = wa1-streethousenumber    .
*wa_gen-housenumber              = wa1-housenumber          .
*wa_gen-postalcodecity           = wa1-postalcodecity       .
*wa_gen-city                     = wa1-city                 .
*wa_gen-street4                  = wa1-street4              .
*wa_gen-street5                  = wa1-street5              .
*wa_gen-district                 = wa1-district             .
*wa_gen-differentcity            = wa1-differentcity        .
*wa_gen-co                       = wa1-co                   .
*wa_gen-countryreg              = wa1-countryreg          .
*wa_gen-ztimezone                = wa1-timezone            .
*wa_gen-taxjuris                 = wa1-taxjuris             .
*wa_gen-addname                  = wa1-name1_2.
*wa_gen-transportationzone      = wa1-transportationzone.
*wa_gen-structuregroup          = WA1-structuregroup.
*wa_gen-undeliverable             = WA1-undeliverable.


    READ TABLE respo-GeneralDatatable1 INTO DATA(wa111) INDEX 1.
    wa_gen-category           =  wa111-category.
    wa_gen-gstingname         =  wa111-name.
    wa_gen-taxnumberlong      =  wa111-taxnumberlong.
    wa_gen-taxregstatus       =  wa111-taxregstatus.

      MODIFY zgeneral_data FROM @wa_gen.
      CLEAR:wa_gen,wa1.

    ENDLOOP.

    DATA wa_sales TYPE zsales_distr.

    LOOP AT respo-SalesDistribution  INTO DATA(wa2).
      wa_sales-taskid                = taskkidno.
      wa_sales-salesdistrict         = wa2-salesdistrict      .
      wa_sales-customergroup         = wa2-customergroup      .
      wa_sales-salesoffice           = wa2-salesoffice        .
      wa_sales-salesgroup            = wa2-salesgroup         .
      wa_sales-authorizationgroup    = wa2-authorizationgroup .
      wa_sales-accountatcustomer     = wa2-accountatcustomer  .
      wa_sales-orderprobability      = wa2-orderprobability   .
      wa_sales-itemproposal          = wa2-itemproposal       .
      wa_sales-abcclass              = wa2-abcclass           .
      wa_sales-roundingoff           = wa2-roundingoff        .
      wa_sales-unitofmeasuregrp      = wa2-unitofmeasuregrp   .
      wa_sales-ppcustomerproced      = wa2-ppcustomerproced   .
      wa_sales-currency              = wa2-currency           .
      wa_sales-exchangeratetype      = wa2-exchangeratetype   .
      wa_sales-pricegroup            = wa2-pricegroup         .
      wa_sales-custpricprocedure     = wa2-custpricprocedure  .
      wa_sales-pricelist             = wa2-pricelist          .
      wa_sales-customerstats         = wa2-customerstats      .
      wa_sales-relevantsettlement    = wa2-relevantsettlement .
      wa_sales-deliverypriority      = wa2-deliverypriority   .
      wa_sales-ordercombination      = wa2-ordercombination   .
      wa_sales-deliveringplant       = wa2-deliveringplant    .
      wa_sales-shippingconditions    = wa2-shippingconditions .
      wa_sales-podrelevant           = wa2-podrelevant        .
      wa_sales-podtimeframe          = wa2-podtimeframe       .
      wa_sales-completedelivery      = wa2-completedelivery   .
      wa_sales-maxpart               = wa2-maxpart            .
      wa_sales-partialdelivitem      = wa2-partialdelivitem   .
      wa_sales-unlimitedtolerance    = wa2-unlimitedtolerance .
      wa_sales-underdeltolerance     = wa2-underdeltolerance  .
      wa_sales-overdelivtolerance    = wa2-overdelivtolerance .
      wa_sales-subsinvoice           = wa2-subsinvoice        .
      wa_sales-invoicingdates        = wa2-invoicingdates     .
      wa_sales-invoicelistsched      = wa2-invoicelistsched   .
      wa_sales-incotermsversion      = wa2-incotermsversion   .
      wa_sales-incoterms             = wa2-incoterms          .
      wa_sales-incotermloc1id        = wa2-incotermloc1id     .
      wa_sales-incotermslocation1    = wa2-incotermslocation1 .
      wa_sales-incotermloc2id        = wa2-incotermloc2id     .
      wa_sales-incotermslocation2    = wa2-incotermslocation2 .
      wa_sales-termsofpayment2       = wa2-termsofpayment2    .
      wa_sales-paymtguarantproc      = wa2-paymtguarantproc   .
      wa_sales-acctassmtgrpcust      = wa2-acctassmtgrpcust   .
      wa_sales-customergroup1        = wa2-customergroup1     .
      wa_sales-customergroup2        = wa2-customergroup2     .
      wa_sales-customergroup3        = wa2-customergroup3     .
      wa_sales-customergroup4        = wa2-customergroup4     .
      wa_sales-customergroup5        = wa2-customergroup5     .
      wa_sales-customergroup6        = wa2-customergroup6     .
      wa_sales-customergroup7        = wa2-customergroup7     .
      wa_sales-customergroup8        = wa2-customergroup8     .
      wa_sales-customergroup9        = wa2-customergroup9     .
      wa_sales-customergroup10       = wa2-customergroup10    .
      wa_sales-salesselected         = wa2-salesselected      .
      wa_sales-deliveryselected      = wa2-deliveryselected   .
      wa_sales-billingselected       = wa2-billingselected    .
      wa_sales-blockselected         = wa2-blockselected      .
      wa_sales-deletionflag          = wa2-deletionflag       .

      READ TABLE respo-SalesDistribution1 INTO DATA(wa6) INDEX 1.

      wa_sales-depctryreg           = wa6-depctryreg       .
      wa_sales-countryregion        = wa6-countryregion    .
      wa_sales-taxconditiontype     = wa6-taxconditiontype .
      wa_sales-descriptiontable1    = wa6-description      .
      wa_sales-taxclassification    = wa6-taxclassification.

      READ TABLE respo-SalesDistribution2 INTO DATA(wa7) INDEX 1.
      wa_sales-pf                   = wa7-pf                 .
      wa_sales-Partnerfunction      = wa7-Partnerfunction    .
      wa_sales-znumber              = wa7-Number             .
      wa_sales-assignbp             = wa7-assignbp           .
      wa_sales-descriptiontable2    = wa7-Description        .
      wa_sales-partnerdescription   = wa7-partnerdescription .
      wa_sales-znumber              = wa7-Number             .
      wa_sales-salesorganization    = respo-salesorgorg      .
      wa_sales-distributionchannel  = respo-distributionchannel       .
      wa_sales-division             = respo-division .

      MODIFY zsales_distr FROM @wa_sales.
      CLEAR:wa_sales,wa2,wa6,wa7.
    ENDLOOP.


    DATA wa_comp TYPE zcompany_data.

    LOOP AT respo-Companycode  INTO DATA(wa3).
      wa_comp-taskid        = taskkidno.
      wa_comp-reconciliationacct            = wa3-reconciliationacct        .
      wa_comp-headoffice                    = wa3-headoffice                .
      wa_comp-sortkey                       = wa3-sortkey                   .
      wa_comp-subsidyindic                  = wa3-subsidyindic              .
      wa_comp-accountauthorizationgroup     = wa3-accountauthorizationgroup .
      wa_comp-planninggroup                 = wa3-planninggroup             .
      wa_comp-releasegroup                  = wa3-releasegroup              .
      wa_comp-minorityindicator             = wa3-minorityindicator         .
      wa_comp-certificationdate             = wa3-certificationdate         .
      wa_comp-interestindicator             = wa3-interestindicator         .
      wa_comp-interestcycle                 = wa3-interestcycle             .
      wa_comp-lastkeydate                   = wa3-lastkeydate               .
      wa_comp-lastinterestrun               = wa3-lastinterestrun           .
      wa_comp-withholdingtaxcode            = wa3-withholdingtaxcode        .
      wa_comp-wtaxcrkey                     = wa3-wtaxcrkey                 .
      wa_comp-recipienttype                 = wa3-recipienttype             .
      wa_comp-exemptionnumber               = wa3-exemptionnumber           .
      wa_comp-validuntil                    = wa3-validuntil                .
      wa_comp-exemptionauthority            = wa3-exemptionauthority        .
      wa_comp-previousaccountno             = wa3-previousaccountno         .
      wa_comp-personnelnumber               = wa3-personnelnumber           .
      wa_comp-maineconomicact               = wa3-maineconomicact           .
      wa_comp-distrtype                     = wa3-distrtype                 .
      wa_comp-activitycodegitax             = wa3-activitycodegitax         .
      wa_comp-termsofpayment                = wa3-termsofpayment            .
      wa_comp-creditmemopytterm             = wa3-creditmemopytterm         .
      wa_comp-tolerancegroup                = wa3-tolerancegroup            .
      wa_comp-checkcashingtime              = wa3-checkcashingtime          .
      wa_comp-paymentpaymentreason          = wa3-paymentpaymentreason      .
      wa_comp-checkdoubleinvoice            = wa3-checkdoubleinvoice        .
      wa_comp-paymentmethods                = wa3-paymentmethods            .
      wa_comp-housebank                     = wa3-housebank                 .
      wa_comp-automaticpaymentblock         = wa3-automaticpaymentblock     .
      wa_comp-pmtmethsupplement             = wa3-pmtmethsupplement         .
      wa_comp-groupingkey                   = wa3-groupingkey               .
      wa_comp-alternativepayee              = wa3-alternativepayee          .
      wa_comp-billexlimit                   = wa3-billexlimit               .
      wa_comp-clearingwcustomer             = wa3-clearingwcustomer         .
      wa_comp-singlepayment                 = wa3-singlepayment             .
      wa_comp-pmtadviceby                   = wa3-pmtadviceby               .
      wa_comp-paymentclrggrpid              = wa3-paymentclrggrpid          .
      wa_comp-sentpaymentadvice             = wa3-sentpaymentadvice         .
      wa_comp-altpayeedoc                   = wa3-altpayeedoc               .
      wa_comp-invoicetolerancegroup         = wa3-invoicetolerancegroup     .
      wa_comp-prepaymentrelevance           = wa3-prepaymentrelevance       .
      wa_comp-assignmtestgroup              = wa3-assignmtestgroup          .
      wa_comp-dunningprocedure              = wa3-dunningprocedure          .
      wa_comp-dunningblock                  = wa3-dunningblock              .
      wa_comp-dunnrecipient                 = wa3-dunnrecipient             .
      wa_comp-lastdunningnotice             = wa3-lastdunningnotice         .
      wa_comp-legaldunnprocfrom             = wa3-legaldunnprocfrom         .
      wa_comp-dunninglevel                  = wa3-dunninglevel              .
      wa_comp-dunningclerk                  = wa3-dunningclerk              .
      wa_comp-clerkabbrev                   = wa3-clerkabbrev               .
      wa_comp-accountwithvendor             = wa3-accountwithvendor         .
      wa_comp-clerkatvendor                 = wa3-clerkatvendor             .
      wa_comp-acctclerkstelno               = wa3-acctclerkstelno           .
      wa_comp-acctgclerkfax                 = wa3-acctgclerkfax             .
      wa_comp-clrksinternetadd              = wa3-clrksinternetadd          .
      wa_comp-localprocessing               = wa3-localprocessing           .
      wa_comp-accountstatement              = wa3-accountstatement          .
      wa_comp-accountmemo                   = wa3-accountmemo               .
      wa_comp-companycode                   = RESPO-companycodehead              .

      READ TABLE respo-Companycodetable5 INTO DATA(wa8) INDEX 1.
      wa_comp-Wtaxtype                 = wa8-Wtaxtype .
      wa_comp-Name                     = wa8-Name     .
      wa_comp-Wtaxcode                 = wa8-Wtaxcode .
      wa_comp-RecType                  = wa8-RecType  .
      wa_comp-ValueAdjustment           = WA3-ValueAdjustment     .
      wa_comp-BuyingGroup               = WA3-BuyingGroup         .
      wa_comp-ActivityCode              = WA3-ActivityCode        .
      wa_comp-DistributionType          = WA3-DistributionType    .
      wa_comp-WTaxCtryReg               = WA3-WTaxCtryReg         .
      wa_comp-BExChargesTerms           = WA3-BExChargesTerms     .
      wa_comp-KnownNegotiatLeave        = WA3-KnownNegotiatLeave  .
      wa_comp-RecordPmntHistory         = WA3-RecordPmntHistory   .
      wa_comp-Lockbox                   = WA3-Lockbox             .
      wa_comp-Nextpayee                 = WA3-Nextpayee           .
      wa_comp-ARPledingInd              = WA3-ARPledingInd        .
      wa_comp-Altpayer                  = WA3-Altpayer            .
      wa_comp-ReasonCodeConv            = WA3-ReasonCodeConv      .
      wa_comp-SelectionRule             = WA3-SelectionRule       .
      wa_comp-CustomerWithCI            = WA3-CustomerWithCI      .
      wa_comp-CustomerWOCI              = WA3-CustomerWOCI        .
      wa_comp-Accounting                = WA3-Accounting          .
      wa_comp-SalesDist                 = WA3-SalesDist           .
      wa_comp-LegalDepartment           = WA3-LegalDepartment     .
      wa_comp-PolicyNumber              = WA3-PolicyNumber        .
      wa_comp-InstitutionNumber         = WA3-InstitutionNumber   .
      wa_comp-AmountInsured             = WA3-AmountInsured       .
      wa_comp-LeadMonths                = WA3-LeadMonths          .
      wa_comp-Deductible                = WA3-Deductible          .


      MODIFY zcompany_data FROM @wa_comp.
      CLEAR:wa_comp,wa3,wa8.
    ENDLOOP.

     DATA wa_zpaymenttranstab TYPE zpaymenttrans_c.

    LOOP AT respo-GeneralDatatable2 INTO DATA(wa18).

      wa_zpaymenttranstab-taskid           = taskkidno.
      wa_zpaymenttranstab-id               = wa18-id.
      wa_zpaymenttranstab-cr               = wa18-cr.
      wa_zpaymenttranstab-Bankkey          = wa18-bankkey.
      wa_zpaymenttranstab-BankAccount      = wa18-bankaccount.
      wa_zpaymenttranstab-controlkey       = wa18-controlkey.
      wa_zpaymenttranstab-iban             = wa18-iban.
      wa_zpaymenttranstab-bankaccountalias = wa18-bankaccountalias.
      wa_zpaymenttranstab-Referencedetails = wa18-referencedetails.
      wa_zpaymenttranstab-extid            = wa18-extid.
      wa_zpaymenttranstab-accountholder    = wa18-accountholder.
      wa_zpaymenttranstab-accountname      = wa18-accountname.
      wa_zpaymenttranstab-deletevalue      = WA18-deletevalue.

      MODIFY zpaymenttrans_c FROM @wa_zpaymenttranstab.
      CLEAR:wa_zpaymenttranstab.
    ENDLOOP.


     DATA wa_zmdm_ven_parnter TYPE zmdm_cus_parnter.
     LOOP AT respo-SalesDistribution2 INTO DATA(wa9) .

      wa_zmdm_ven_parnter-taskid             = taskkidno.
      wa_zmdm_ven_parnter-pf                 = wa9-pf.
      wa_zmdm_ven_parnter-Partnerfunction    = wa9-partnerfunction.
      wa_zmdm_ven_parnter-tablenumber        = wa9-number.
      wa_zmdm_ven_parnter-assignbp           = wa9-assignbp.
      wa_zmdm_ven_parnter-partnerdescription = wa9-partnerdescription.
      wa_zmdm_ven_parnter-description        = wa9-description.
      wa_zmdm_ven_parnter-deletevalue        = wa9-deletevalue.

      MODIFY zmdm_cus_parnter FROM @wa_zmdm_ven_parnter.
      CLEAR:wa_zmdm_ven_parnter,wa9.

    ENDLOOP.

    DATA wa_zmdm_wiholding_t TYPE zmdm_wiholding_c.

     LOOP AT respo-Companycodetable5 INTO DATA(wa10).
      wa_zmdm_wiholding_t-taskid           = taskkidno.
      wa_zmdm_wiholding_t-wtaxtype      = wa10-wtaxtype.
      wa_zmdm_wiholding_t-Subject      = wa10-subject.
      wa_zmdm_wiholding_t-name          = wa10-name.
      wa_zmdm_wiholding_t-wtaxcode      = wa10-wtaxcode.
      wa_zmdm_wiholding_t-rectype       = wa10-rectype.
      wa_zmdm_wiholding_t-deletevalue        = wa10-deletevalue.

      MODIFY zmdm_wiholding_c FROM @wa_zmdm_wiholding_t.
      CLEAR:wa_zmdm_wiholding_t,wa10.
    ENDLOOP.


       DATA wa_zmdm_cus_otpttax TYPE zmdm_cus_otpttax.

     LOOP AT respo-SalesDistribution1 INTO DATA(wa11).
      wa_zmdm_cus_otpttax-taskid = taskkidno.
      wa_zmdm_cus_otpttax-countryregion           = WA11-countryregion.
      wa_zmdm_cus_otpttax-depctryreg              = wa11-depctryreg.
      wa_zmdm_cus_otpttax-description            = wa11-description.
      wa_zmdm_cus_otpttax-taxclassification      = wa11-taxclassification.
      wa_zmdm_cus_otpttax-taxconditiontype       = wa11-taxconditiontype.
      wa_zmdm_cus_otpttax-deletevalue        = wa11-deletevalue.

      MODIFY zmdm_cus_otpttax FROM @wa_zmdm_cus_otpttax.
      CLEAR:wa_zmdm_wiholding_t,wa10.
    ENDLOOP.


     DATA WA_zCUS_atch_uplod TYPE zCUS_atch_uplod .
     READ TABLE respo-generaldata  INTO DATA(TAS) INDEX 1.
       LOOP AT respo-aFiles INTO DATA(wa_ONUPLOAD).

        IF TAS-taskid IS INITIAL .
          WA_zCUS_atch_uplod-taskid  = lv_nr.
        ELSE.
          WA_zCUS_atch_uplod-taskid   = TAS-taskid.
        ENDIF.

        WA_zCUS_atch_uplod-attachment  = wa_ONUPLOAD-content.
        WA_zCUS_atch_uplod-contentname  = wa_ONUPLOAD-filename.
        WA_zCUS_atch_uplod-filename  = wa_ONUPLOAD-filename.
        WA_zCUS_atch_uplod-mimetype  = wa_ONUPLOAD-mimetype.
        WA_zCUS_atch_uplod-note  = wa_ONUPLOAD-programname.

        MODIFY zCUS_atch_uplod FROM @WA_zCUS_atch_uplod .
        CLEAR:WA_zCUS_atch_uplod.

      ENDLOOP.
      DATA WA_zrelationshiptab TYPE zrelationship_c .

       LOOP AT respo-relationshiptable INTO DATA(relationship).

        IF TAS-taskid IS INITIAL .
          WA_zrelationshiptab-taskid  = lv_nr.
        ELSE.
          WA_zrelationshiptab-taskid   = TAS-taskid.
        ENDIF.

        WA_zrelationshiptab-businesspartner  = relationship-businesspartner.
        WA_zrelationshiptab-description      = relationship-description.
        IF relationship-validfrom IS NOT INITIAL .

        WA_zrelationshiptab-validfrom        = relationship-validfrom+0(4) && relationship-validfrom+5(2) && relationship-validfrom+8(2) .
        ENDIF.
        IF relationship-validto IS NOT INITIAL .
        WA_zrelationshiptab-validto       = relationship-validto+0(4) && relationship-validto+5(2) && relationship-validto+8(2) .
       ENDIF.

        WA_zrelationshiptab-RelationshipCatalog  = respo-RelationshipCatalog.


        MODIFY zrelationship_c FROM @WA_zrelationshiptab .
        CLEAR:WA_zrelationshiptab.

      ENDLOOP.




 IF selectedaction  <> 'Change Customer' .

      CONCATENATE  ' Data Saved Successfuly And Task ID No.'  taskkidno INTO json SEPARATED BY ' '.
    ELSE.

      CONCATENATE  'Task ID No.'  taskkidno  'Update Successfuly' INTO json SEPARATED BY ' '.

    ENDIF.
ENDIF.

    response->set_text( json  )  .
  ENDMETHOD.
ENDCLASS.

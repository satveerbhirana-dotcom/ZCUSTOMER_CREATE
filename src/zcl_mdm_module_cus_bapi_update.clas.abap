CLASS zcl_mdm_module_cus_bapi_update DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
    CLASS-METHODS :
      UpdateCus
      IMPORTING VALUE(TaxkID)  TYPE STring OPTIONAL
      RETURNING VALUE(StatusRetun) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_MDM_MODULE_CUS_BAPI_UPDATE IMPLEMENTATION.


METHOD Updatecus.

***************************************************************************** Customer START********************************************

SELECT SINGLE * FROM ZGENERALDATACUSTOMER_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO @DATA(GENRALDATA).

SELECT * FROM ZPAYMENTTRANS_CUS_CDS WITH PRIVILEGED ACCESS as a
WHERE Taskid = @taxkid INTO TABLE @DATA(BANKDETAILS).
SELECT SINGLE * FROM I_Customer WITH PRIVILEGED ACCESS as a
WHERE customer =  @GENRALDATA-Businesspartner INTO @DATA(VENDORIDADD).

DATA businesspartnercategory TYPE STRING.
DATA gendor TYPE STRING.
IF genraldata-Title = '0001' OR  genraldata-Title = '0002'.

if  genraldata-Title = '0002'.
gendor = 2.
else.
gendor = 1.
ENDIF.
businesspartnercategory = 1.
ELSEIF genraldata-Title = '0003'.
businesspartnercategory = 2.
ELSEIF genraldata-Title = '0004'.
businesspartnercategory = 3.
ENDIF.

READ ENTITIES OF i_businesspartnertp_3 ENTITY businesspartner
ALL FIELDS WITH VALUE #( (
businesspartner = GENRALDATA-Businesspartner
) ) RESULT DATA(partner).

DATA create_partner TYPE TABLE FOR UPDATE i_businesspartnertp_3.
create_partner = VALUE #( (
                           %key-BusinessPartner = genraldata-Businesspartner
                           %data-OrganizationBPName1     = GENRALDATA-Name
                           %control-OrganizationBPName1 = if_abap_behv=>mk-on
                           %data-SearchTerm1   = genraldata-Search1
                           %control-SearchTerm1 = if_abap_behv=>mk-on
                           %data-SearchTerm2   =  genraldata-Search2
                           %control-SearchTerm2 = if_abap_behv=>mk-on
                           %data-FormOfAddress      = genraldata-Title
                           %control-FormOfAddress = if_abap_behv=>mk-on
                           %data-FormOfAddressPerson = genraldata-Title
                           %control-FormOfAddressPerson = if_abap_behv=>mk-on
                           %data-FormOfAddressGroup  = genraldata-Title
                           %control-FormOfAddressGroup = if_abap_behv=>mk-on
                           %data-FormOfAddressOrganization = genraldata-Title
                           %control-FormOfAddressOrganization = if_abap_behv=>mk-on
                           %data-GenderCodeName   = gendor
                           %control-GenderCodeName = if_abap_behv=>mk-on
                           %data-FirstName    = genraldata-Firstname
                           %control-FirstName = if_abap_behv=>mk-on
                           %data-OrganizationBPName2   = GENRALDATA-Addname
                           %control-OrganizationBPName2 = if_abap_behv=>mk-on
                           %data-AdditionalName = GENRALDATA-Addname
                           %control-AdditionalName = if_abap_behv=>mk-on
                           %data-lastname                = genraldata-Lastname "genraldata-Lastname
                           %control-lastname       = if_abap_behv=>mk-on
                           %data-GroupBusinessPartnerName1    = genraldata-Name1
                           %control-GroupBusinessPartnerName1       = if_abap_behv=>mk-on
                           %data-GroupBusinessPartnerName2    = genraldata-Name2
                           %control-GroupBusinessPartnerName2       = if_abap_behv=>mk-on
                           %data-BusinessPartnerIDByExtSystem = taxkid
                           %control-BusinessPartnerIDByExtSystem       = if_abap_behv=>mk-on
                           ) ).
MODIFY ENTITIES OF i_businesspartnertp_3
    ENTITY businesspartner
    UPDATE FROM create_partner
*ENTITY BusPartAddress
*    UPDATE  FIELDS ( country cityname StreetPrefixName StreetName PostalCode Region CorrespondenceLanguage HouseNumber District
*      AddressTimeZone  TransportZone    TaxJurisdiction  CompanyPostalCode CareOfName HomeCityName AdditionalStreetSuffixName
*      StreetSuffixName AdditionalStreetPrefixName POBox Building Floor RoomNumber
*      POBoxPostalCode ) WITH VALUE #( (
*                                              %key-BusinessPartner = GENRALDATA-Businesspartner
*                                              %key-AddressNumber = VENDORIDADD-AddressID
*                                                country = genraldata-countryreg1
*                                                cityname = genraldata-city
*                                                StreetName = genraldata-streethousenumber
*                                                StreetPrefixName = genraldata-Street2
*                                                AdditionalStreetPrefixName = genraldata-street3
*                                                StreetSuffixName    = genraldata-street4
*                                                AdditionalStreetSuffixName = genraldata-street5
*                                                HomeCityName  = genraldata-differentcity
*                                                PostalCode = genraldata-Postalcode
*                                                Region                = genraldata-Region
*                                                HouseNumber            = genraldata-housenumber
*                                                District               = genraldata-district
*                                                CorrespondenceLanguage = 'E'
*                                                AddressTimeZone   = genraldata-ztimezone
*                                                TransportZone     = genraldata-transportationzone
*                                                TaxJurisdiction   = genraldata-taxjuris
*                                                CompanyPostalCode = genraldata-Companycodepostal
*                                                CareOfName  = genraldata-co
*                                                POBox  = genraldata-Pobox
*                                                Building = genraldata-buildingcode
*                                                Floor = genraldata-floor
*                                                RoomNumber = genraldata-room
*                                                POBoxPostalCode = genraldata-Postal1
*                                                )    )
*       ENTITY BusinessPartnerTax
*        UPDATE FIELDS ( BPTaxNumber ) WITH VALUE #( (
*                                                %key-BPTaxType = genraldata-Category
*                                                %key-BusinessPartner = genraldata-Businesspartner
*                                                BPTaxNumber = genraldata-Taxnumberlong
*                                                )        )
*  ENTITY businesspartnerbank
*     UPDATE  FIELDS ( BankNumber BankCountryKey BankAccountHolderName BankAccountName BankAccount
*       BankAccountReferenceText BankControlKey ) WITH VALUE #(  FOR any IN BANKDETAILS  INDEX INTO i  (
*                                                %key-BusinessPartner = genraldata-Businesspartner
*
*                                                BankNumber = any-Bankkey
*                                                BankCountryKey = any-Cr
*                                                BankAccountHolderName = any-Accountholder
*                                                BankAccountName   = any-Accountname
*                                                BankAccount   =  any-Bankaccount
*                                                BankAccountReferenceText = any-Referencedetails
*                                                BankControlKey   = any-Controlkey
*                                                ) )
*   ENTITY bpaddrindependentphone
*     UPDATE   FIELDS ( phonenumber isdefaultphonenumber ) WITH VALUE #( (
*                                                %key-BusinessPartner = genraldata-Businesspartner
*                                                 %key-AddressID = vendoridadd-AddressID
*                                                phonenumber          = genraldata-Addressmobilephone
*                                                isdefaultphonenumber = 'X'
*                                                )     )
* ENTITY bpaddrindependentmobile
*    UPDATE    FIELDS ( mobilephonenumber mobilephonecountry ) WITH VALUE #( (
*                                                %key-BusinessPartner = genraldata-Businesspartner
*                                                 %key-AddressID = vendoridadd-AddressID
*                                                mobilephonenumber = genraldata-Mobilephone
*                                                mobilephonecountry = genraldata-Country
*                                                )    )
*     ENTITY BPAddrIndependentEmail
*       UPDATE FIELDS ( emailaddress isdefaultemailaddress ) WITH VALUE #( (
*                                                %key-BusinessPartner = genraldata-Businesspartner
*                                                %key-AddressID = vendoridadd-AddressID
*                                                emailaddress = genraldata-Email
*                                                isdefaultemailaddress = 'X'
*                                                )    )

   MAPPED DATA(mapped)
    REPORTED DATA(reported)
    FAILED DATA(failed).
COMMIT ENTITIES BEGIN
 RESPONSE OF i_businesspartnertp_3
     FAILED DATA(failed_commit)
     REPORTED DATA(reported_commit).

DATA customer TYPE STRING.
DATA ERROR TYPE STRING.
 If failed_commit  is INITIAL  .

 loop at  mapped-businesspartner ASSIGNING FIELD-SYMBOL(<fs1>)    .
 customer   = <fs1>-BusinessPartner   .
 endloop .


*IF reported-businesspartner IS NOT INITIAL .
*  customer = reported-businesspartner[ 1 ]-%msg->if_message~get_text( ).
*  ERROR = 'E'.
*ENDIF.
*IF reported_commit-businesspartner IS NOT INITIAL .
*   customer = reported_commit-businesspartner[ 1 ]-%msg->if_message~get_text( ).
*   ERROR = 'E'.
* ENDIF.

 ELSE.
  ERROR = 'E'.
IF reported-businesspartner IS NOT INITIAL .
  customer = reported-businesspartner[ 1 ]-%msg->if_message~get_text( ).
ENDIF.
IF reported_commit-businesspartner IS NOT INITIAL .
   customer = reported_commit-businesspartner[ 1 ]-%msg->if_message~get_text( ).
 ENDIF.
 endif .
StatusRetun = ERROR && customer.
COMMIT ENTITIES END .

IF ERROR <> 'E' .
CLEAR:StatusRetun.
SELECT SINGLE * FROM I_BusinessPartner WITH PRIVILEGED ACCESS as a
INNER JOIN I_Customer WITH PRIVILEGED ACCESS as b ON ( b~Customer = a~BusinessPartner )
WHERE BusinessPartnerIDByExtSystem = @taxkid INTO @DATA(customerDETAIL).

IF customerDETAIL-A-BusinessPartner <> ''.

 DATA(comVEN2) = zmdm_module_customr_api_update=>GETDATA( customer = customerDETAIL-A-BusinessPartner taxkid = taxkid typ = 'COM' ).
 daTA(purVEN2) = zmdm_module_customr_api_update=>GETDATA( customer = customerDETAIL-A-BusinessPartner taxkid = taxkid typ = 'SALES' ).

 ENDIF.

StatusRetun = customerDETAIL-a-BusinessPartner. " && ' '  && 'Comapny Code Data' && comVEN2 && ' ' && 'Purching Data' && purVEN2.

ENDIF.
 ENDMETHOD.
ENDCLASS.

@AbapCatalog.sqlViewName: 'YCDSOUT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZMDM_CUS_OTPTTAX_CDS as select from zmdm_cus_otpttax
{
    key taskid as Taskid,
    key depctryreg as Depctryreg,
    key taxconditiontype as Taxconditiontype,
    countryregion as Countryregion,
    description as Description,
    taxclassification as Taxclassification,
    deletevalue
}

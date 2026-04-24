@AbapCatalog.sqlViewName: 'YCDSWITH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZCUS_WIHOLDING_CDS as select from zmdm_wiholding_c
{
    key taskid as Taskid,
    key wtaxtype as Wtaxtype,
    key wtaxcode as Wtaxcode,
    name as Name,
    subject as Subject,
    rectype as Rectype,
    deletevalue 
}

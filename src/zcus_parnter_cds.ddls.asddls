@AbapCatalog.sqlViewName: 'YPARTNERCD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZCUS_PARNTER_CDS as select from zmdm_cus_parnter
{
    key taskid as Taskid,
    key pf as Pf,
    partnerfunction as Partnerfunction,
    tablenumber as Tablenumber,
    assignbp as Assignbp,
    description  ,     
    partnerdescription,
    deletevalue
} 

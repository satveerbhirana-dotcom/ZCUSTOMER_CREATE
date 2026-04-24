@AbapCatalog.sqlViewName: 'ZCUSREJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Customer'
@Metadata.ignorePropagatedAnnotations: true
define view ZCUS_REJECTION_CDS as select from zcus_rejection
{
    key taskid as Taskid,
    key userid as Userid,
    key rejdate as Rejdate,
    key rejecttime as Rejecttime,
    rejectionremark as Rejectionremark
}

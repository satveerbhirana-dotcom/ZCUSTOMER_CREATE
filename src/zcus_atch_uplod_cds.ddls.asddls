@AbapCatalog.sqlViewName: 'YCUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Customer'
@Metadata.ignorePropagatedAnnotations: true
define view zCUS_atch_uplod_CDS as select from zcus_atch_uplod
{
       key contentname as Contentname,
    key taskid as Taskid,
    key srno as Srno,
    attachment as Attachment,
    mimetype as Mimetype,
    filename as Filename
}

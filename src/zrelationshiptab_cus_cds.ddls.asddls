@AbapCatalog.sqlViewName: 'YCUSTOMER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For Relationship Table Customer'
@Metadata.ignorePropagatedAnnotations: true
define view zrelationshiptab_CUS_CDS as select from zrelationship_c
{
    key taskid as Taskid,
    key businesspartner as Businesspartner,
    description as Description,
    validfrom as Validfrom,
    validto as Validto,
    relationshipcatalog as Relationshipcatalog
}

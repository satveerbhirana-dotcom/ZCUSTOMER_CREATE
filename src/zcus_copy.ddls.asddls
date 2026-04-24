@AbapCatalog.sqlViewName: 'YCUSCOPY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Customer'
@Metadata.ignorePropagatedAnnotations: true
define view ZCUS_COPY as select from zgeneral_data as a 
left outer join zsales_distr as b on ( b.taskid = a.taskid )
left outer join zcompany_data as c on ( c.taskid = a.taskid )
{
        key a.taskid as Taskid,
        key a.grouping as Grouping,
        key b.salesorganization,
        key c.companycode,
        key b.distributionchannel,
        key b.division
}
group by 
      a.taskid,
      a.grouping,
      b.salesorganization,
      c.companycode,
      b.distributionchannel,
      b.division
      

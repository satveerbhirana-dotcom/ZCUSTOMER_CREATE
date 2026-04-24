@AbapCatalog.sqlViewName: 'YCUSTASKIDF4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Customer F4'
@Metadata.ignorePropagatedAnnotations: true
define view ZCUS_TASKID_F4 as select from zgeneral_data
{
    key taskid,
         case when   title = '0004' then 
         concat_with_space(name1,name2,1) 
         when  title = '0003' then 
         concat_with_space(name,addname,1) 
         when title = '0001' or title = '0002'  then 
         concat_with_space(firstname,lastname,1) end as Name
}

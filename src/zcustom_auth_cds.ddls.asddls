@AbapCatalog.sqlViewName: 'YCUSTOMERAUTH'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Customer'
@Metadata.ignorePropagatedAnnotations: true
define view zcustom_auth_CDS as select from zcustom_auth_tab
{
    key tab_code as TabCode,
    key tab_name as TabName,
    user_id as UserId,
    create1 as Create1,
    change as Change,
    display as Display,
    deletion_user_id as DeletionUserId,
    approver_id_1 as ApproverId1,
    approver_id_2 as ApproverId2
}

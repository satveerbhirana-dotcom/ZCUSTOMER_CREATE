@AbapCatalog.sqlViewName: 'YMDMRECCUS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds For MDM Module Pool'
@Metadata.ignorePropagatedAnnotations: true
define view ZReconciliationAcct_CUS_F4 as select from I_GLAccountInCompanyCode as a 
left outer join I_GlAccountTextInCompanycode as b on ( b.CompanyCode = a.CompanyCode and b.GLAccount = a.GLAccount and b.Language = 'E')
{
    key a.CompanyCode,
    key a.GLAccount,
        b.GLAccountName
} 
where a.ReconciliationAccountType = 'D'
group by 
      a.CompanyCode,
      a.GLAccount,
      b.GLAccountName

adadmin=$(az sql server ad-admin list --resource-group $SQLResourceGroup --server-name $SQLServerName --output tsv)
if [ -z $adadmin ]; then
  az sql server ad-admin create --resource-group $SQLResourceGroup --server-name $SQLServerName --display-name "$AADAdminGroupName" --object-id $AADAdminGroupID;
fi

resource rsg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'my-rsg'
  location: 'australiaeast'
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: standystorge
  location: australiaeast
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
  kind: 'StorageV2'
}

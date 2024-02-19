//targetScope='subscription'

param envName string
param location string
param webAppName string = 'eus${envName}webapp'
param sku string
//param appInsightsLocation string = location


//module Webapprg 'modules/rg.bicep' = {
//  name: 'rgroup'
//  params: {
//    location: location
//    envName: envName
//  }
//}

module Webapp 'module/webappservice.bicep' = {
  name: 'WebappModule'
  params: {
    location: location
    sku: sku
    webAppName: webAppName
  }
}

module asd 'module/fubapp.bicep' = {
  name: 'FunappModule'
  params: {
    appInsightsLocation: location
  }
}

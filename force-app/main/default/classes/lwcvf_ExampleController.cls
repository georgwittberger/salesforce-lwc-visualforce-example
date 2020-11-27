public with sharing class lwcvf_ExampleController {
  @AuraEnabled(cacheable=true)
  public static String getUserName() {
    return UserInfo.getUserName();
  }
}

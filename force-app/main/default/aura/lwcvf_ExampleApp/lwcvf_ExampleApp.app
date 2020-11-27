<!-- Use extends="ltng:outAppUnstyled" if SLDS should not be loaded -->
<!-- Add implements="ltng:allowGuestAccess" to allow access for community guest users -->
<aura:application access="GLOBAL" extends="ltng:outApp">
  <!-- Declare components to be used in Visualforce page -->
  <aura:dependency resource="c:lwcvf_ExampleComponent" />
</aura:application>

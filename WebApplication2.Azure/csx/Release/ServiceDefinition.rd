﻿<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WebApplication2.Azure" generation="1" functional="0" release="0" Id="deb1127f-8200-4e5b-9d4d-94a008f58e28" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WebApplication2.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebApplication2:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/LB:WebApplication2:Endpoint1" />
          </inToChannel>
        </inPort>
        <inPort name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/LB:WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapCertificate|WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="WebApplication2Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/MapWebApplication2Instances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebApplication2:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Endpoint1" />
          </toPorts>
        </lBChannel>
        <lBChannel name="LB:WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapWebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapWebApplication2Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2Instances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebApplication2" generation="1" functional="0" release="0" software="C:\Users\madedroo\Source\Repos\WebApplication2\WebApplication2.Azure\csx\Release\roles\WebApplication2" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/SW:WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebApplication2&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebApplication2&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2Instances" />
            <sCSPolicyUpdateDomainMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2UpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2FaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="WebApplication2UpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="WebApplication2FaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="WebApplication2Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="690885f3-eadb-478b-848f-e10d69345183" ref="Microsoft.RedDog.Contract\ServiceContract\WebApplication2.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="4ed8ae2a-c07b-4595-afa7-217c990c1148" ref="Microsoft.RedDog.Contract\Interface\WebApplication2:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2:Endpoint1" />
          </inPort>
        </interfaceReference>
        <interfaceReference Id="a3f6ad75-d1ae-4cd3-87ee-7c0bb9518fcc" ref="Microsoft.RedDog.Contract\Interface\WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/WebApplication2.Azure/WebApplication2.AzureGroup/WebApplication2:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>
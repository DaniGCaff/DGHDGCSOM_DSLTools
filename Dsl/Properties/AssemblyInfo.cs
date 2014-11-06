#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"CE")]
[assembly: AssemblyProduct(@"DGH_DGC_SOM_IKP")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"CE.DGH_DGC_SOM_IKP.DslPackage, PublicKey=002400000480000094000000060200000024000052534131000400000100010045C090D4FA2B2BE397D6EDEDB30F91774BDF87F7ACB65F35B0D5749CCA1BBE94DF41D816A9A7E6A8305D4CAF96097CC1BE894878C5F26FCEDEC83364CC323FC2AA511AFCD616AB63EB82B3B4121E7AAA65E6939E5A1363C90EB701B7264F76A102A9D64324A9E7D851333F8CAADDE7071B4B02926ACBA6D7005EF81EEF8AAAA7")]
﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DslModeling = global::Microsoft.VisualStudio.Modeling;
using DslDesign = global::Microsoft.VisualStudio.Modeling.Design;
using DslValidation = global::Microsoft.VisualStudio.Modeling.Validation;
namespace CE.DGH_DGC_SOM_IKP
{
	[DslValidation::ValidationState(DslValidation::ValidationState.Enabled)]
	public partial class Imagen
	{
		/// <summary>
		/// Checks that the relationships that have a multiplicity of One or OneMany do actually have a link.
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode", Justification = "Generated code.")]
		[DslValidation::ValidationMethod(DslValidation::ValidationCategories.Open | DslValidation::ValidationCategories.Save | DslValidation::ValidationCategories.Menu)]
		private void ValidateImagenMultiplicity (DslValidation::ValidationContext context)
		{
			if (this.Programa == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"Imagen", "", "Programa"),
						"DSL0001", this);
			}
		} // ValidateImagenMultiplicity
	} // class Imagen
} // CE.DGH_DGC_SOM_IKP

namespace CE.DGH_DGC_SOM_IKP
{
	[DslValidation::ValidationState(DslValidation::ValidationState.Enabled)]
	public abstract partial class ConjInstr
	{
		/// <summary>
		/// Checks that the relationships that have a multiplicity of One or OneMany do actually have a link.
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode", Justification = "Generated code.")]
		[DslValidation::ValidationMethod(DslValidation::ValidationCategories.Open | DslValidation::ValidationCategories.Save | DslValidation::ValidationCategories.Menu)]
		private void ValidateConjInstrMultiplicity (DslValidation::ValidationContext context)
		{
			if (this.InstruccionInicial == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"ConjInstr", "", "InstruccionInicial"),
						"DSL0001", this);
			}
			if (this.InstruccionFinal == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"ConjInstr", "", "InstruccionFinal"),
						"DSL0001", this);
			}
		} // ValidateConjInstrMultiplicity
	} // class ConjInstr
} // CE.DGH_DGC_SOM_IKP

namespace CE.DGH_DGC_SOM_IKP
{
	[DslValidation::ValidationState(DslValidation::ValidationState.Enabled)]
	public partial class InsRepetir
	{
		/// <summary>
		/// Checks that the relationships that have a multiplicity of One or OneMany do actually have a link.
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode", Justification = "Generated code.")]
		[DslValidation::ValidationMethod(DslValidation::ValidationCategories.Open | DslValidation::ValidationCategories.Save | DslValidation::ValidationCategories.Menu)]
		private void ValidateInsRepetirMultiplicity (DslValidation::ValidationContext context)
		{
			if (this.Subprograma == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"InsRepetir", "", "Subprograma"),
						"DSL0001", this);
			}
		} // ValidateInsRepetirMultiplicity
	} // class InsRepetir
} // CE.DGH_DGC_SOM_IKP

namespace CE.DGH_DGC_SOM_IKP
{
	[DslValidation::ValidationState(DslValidation::ValidationState.Enabled)]
	public partial class Programa
	{
		/// <summary>
		/// Checks that the relationships that have a multiplicity of One or OneMany do actually have a link.
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode", Justification = "Generated code.")]
		[DslValidation::ValidationMethod(DslValidation::ValidationCategories.Open | DslValidation::ValidationCategories.Save | DslValidation::ValidationCategories.Menu)]
		private void ValidateProgramaMultiplicity (DslValidation::ValidationContext context)
		{
			if (this.Imagen == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"Programa", "", "Imagen"),
						"DSL0001", this);
			}
		} // ValidateProgramaMultiplicity
	} // class Programa
} // CE.DGH_DGC_SOM_IKP

namespace CE.DGH_DGC_SOM_IKP
{
	[DslValidation::ValidationState(DslValidation::ValidationState.Enabled)]
	public partial class Subprograma
	{
		/// <summary>
		/// Checks that the relationships that have a multiplicity of One or OneMany do actually have a link.
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode", Justification = "Generated code.")]
		[DslValidation::ValidationMethod(DslValidation::ValidationCategories.Open | DslValidation::ValidationCategories.Save | DslValidation::ValidationCategories.Menu)]
		private void ValidateSubprogramaMultiplicity (DslValidation::ValidationContext context)
		{
			if (this.InsRepetir == null)
			{
				context.LogViolation(DslValidation::ViolationType.Error,
					string.Format(global::System.Globalization.CultureInfo.CurrentCulture, 
						CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel.SingletonResourceManager.GetString("MinimumMultiplicityMissingLink"), 
						"Subprograma", "", "InsRepetir"),
						"DSL0001", this);
			}
		} // ValidateSubprogramaMultiplicity
	} // class Subprograma
} // CE.DGH_DGC_SOM_IKP

	
 
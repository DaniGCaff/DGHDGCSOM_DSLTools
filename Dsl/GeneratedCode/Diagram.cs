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
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

[module: global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Scope = "type", Target = "CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram")]

namespace CE.DGH_DGC_SOM_IKP
{
	/// <summary>
	/// DomainClass DGH_DGC_SOM_IKPDiagram
	/// Description for CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram
	/// </summary>
	[DslDesign::DisplayNameResource("CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram.DisplayName", typeof(global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel), "CE.DGH_DGC_SOM_IKP.GeneratedCode.DomainModelResx")]
	[DslDesign::DescriptionResource("CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram.Description", typeof(global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel), "CE.DGH_DGC_SOM_IKP.GeneratedCode.DomainModelResx")]
	[DslModeling::DomainModelOwner(typeof(global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDomainModel))]
	[global::System.CLSCompliant(true)]
	[DslModeling::DomainObjectId("1103994f-23d0-438d-86db-fde4c37d4a0b")]
	public partial class DGH_DGC_SOM_IKPDiagram : DslDiagrams::Diagram
	{
		#region Diagram boilerplate
		private static DslDiagrams::StyleSet classStyleSet;
		private static global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields;
		/// <summary>
		/// Per-class style set for this shape.
		/// </summary>
		protected override DslDiagrams::StyleSet ClassStyleSet
		{
			get
			{
				if (classStyleSet == null)
				{
					classStyleSet = CreateClassStyleSet();
				}
				return classStyleSet;
			}
		}
		
		/// <summary>
		/// Per-class ShapeFields for this shape
		/// </summary>
		public override global::System.Collections.Generic.IList<DslDiagrams::ShapeField> ShapeFields
		{
			get
			{
				if (shapeFields == null)
				{
					shapeFields = CreateShapeFields();
				}
				return shapeFields;
			}
		}
		#endregion
		#region Toolbox filters
		private static global::System.ComponentModel.ToolboxItemFilterAttribute[] toolboxFilters = new global::System.ComponentModel.ToolboxItemFilterAttribute[] {
					new global::System.ComponentModel.ToolboxItemFilterAttribute(global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPToolboxHelperBase.ToolboxFilterString, global::System.ComponentModel.ToolboxItemFilterType.Require) };
		
		/// <summary>
		/// Toolbox item filter attributes for this diagram.
		/// </summary>
		public override global::System.Collections.ICollection TargetToolboxItemFilterAttributes
		{
			get
			{
				return toolboxFilters;
			}
		}
		#endregion
		#region Auto-placement
		/// <summary>
		/// Indicate that child shapes should added through view fixup should be placed automatically.
		/// </summary>
		public override bool ShouldAutoPlaceChildShapes
		{
			get
			{
				return true;
			}
		}
		#endregion
		#region Shape mapping
		/// <summary>
		/// Called during view fixup to ask the parent whether a shape should be created for the given child element.
		/// </summary>
		/// <remarks>
		/// Always return true, since we assume there is only one diagram per model file for DSL scenarios.
		/// </remarks>
		protected override bool ShouldAddShapeForElement(DslModeling::ModelElement element)
		{
			return true;
		}
		
		/// <summary>
		/// Called during view fixup to configure the given child element, after it has been created.
		/// </summary>
		/// <remarks>
		/// Custom code for choosing the shapes attached to either end of a connector is called from here.
		/// </remarks>
		protected override void OnChildConfiguring(DslDiagrams::ShapeElement child, bool createdDuringViewFixup)
		{
			DslDiagrams::NodeShape sourceShape;
			DslDiagrams::NodeShape targetShape;
			DslDiagrams::BinaryLinkShape connector = child as DslDiagrams::BinaryLinkShape;
			if(connector == null)
			{
				base.OnChildConfiguring(child, createdDuringViewFixup);
				return;
			}
			this.GetSourceAndTargetForConnector(connector, out sourceShape, out targetShape);
			
			global::System.Diagnostics.Debug.Assert(sourceShape != null && targetShape != null, "Unable to find source and target shapes for connector.");
			connector.Connect(sourceShape, targetShape);
		}
		
		/// <summary>
		/// helper method to find the shapes for either end of a connector, including calling the user's custom code
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
		internal void GetSourceAndTargetForConnector(DslDiagrams::BinaryLinkShape connector, out DslDiagrams::NodeShape sourceShape, out DslDiagrams::NodeShape targetShape)
		{
			sourceShape = null;
			targetShape = null;
			
			if (sourceShape == null || targetShape == null)
			{
				DslDiagrams::NodeShape[] endShapes = GetEndShapesForConnector(connector);
				if(sourceShape == null)
				{
					sourceShape = endShapes[0];
				}
				if(targetShape == null)
				{
					targetShape = endShapes[1];
				}
			}
		}
		
		/// <summary>
		/// Helper method to find shapes for either end of a connector by looking for shapes associated with either end of the relationship mapped to the connector.
		/// </summary>
		private DslDiagrams::NodeShape[] GetEndShapesForConnector(DslDiagrams::BinaryLinkShape connector)
		{
			DslModeling::ElementLink link = connector.ModelElement as DslModeling::ElementLink;
			DslDiagrams::NodeShape sourceShape = null, targetShape = null;
			if (link != null)
			{
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslModeling::ModelElement> linkedElements = link.LinkedElements;
				if (linkedElements.Count == 2)
				{
					DslDiagrams::Diagram currentDiagram = this.Diagram;
					DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[0]);
					foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
					{
						DslDiagrams::NodeShape shape = presentationElement as DslDiagrams::NodeShape;
						if (shape != null && shape.Diagram == currentDiagram)
						{
							sourceShape = shape;
							break;
						}
					}
					
					presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[1]);
					foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
					{
						DslDiagrams::NodeShape shape = presentationElement as DslDiagrams::NodeShape;
						if (shape != null && shape.Diagram == currentDiagram)
						{
							targetShape = shape;
							break;
						}
					}
		
				}
			}
			
			return new DslDiagrams::NodeShape[] { sourceShape, targetShape };
		}
		
		/// <summary>
		/// Most connectors are mapped to element links, but there can be exceptions. This method tell if a connector should be
		/// mapped to an element link.
		/// </summary>
		public override bool IsConnectorMappedToLink(DslDiagrams::BinaryLinkShape connector)
		{
			#region Check Parameters
			global::System.Diagnostics.Debug.Assert(connector != null);
			if (connector == null)
				throw new global::System.ArgumentNullException("connector");
			#endregion
			if (connector.GetType() == typeof(global::CE.DGH_DGC_SOM_IKP.FinalG))
				return false;
			if (connector.GetType() == typeof(global::CE.DGH_DGC_SOM_IKP.InicialG))
				return false;
			return base.IsConnectorMappedToLink(connector);
		}
		
		/// <summary>
		/// Creates a new shape for the given model element as part of view fixup
		/// </summary>
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily", Justification = "Generated code.")]
		[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Maintainability", "CA1506:AvoidExcessiveClassCoupling", Justification = "Generated code.")]
		protected override DslDiagrams::ShapeElement CreateChildShape(DslModeling::ModelElement element)
		{
			if(element is global::CE.DGH_DGC_SOM_IKP.InsMover)
			{
				global::CE.DGH_DGC_SOM_IKP.InsMoverG newShape = new global::CE.DGH_DGC_SOM_IKP.InsMoverG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsFijar)
			{
				global::CE.DGH_DGC_SOM_IKP.InsFijarG newShape = new global::CE.DGH_DGC_SOM_IKP.InsFijarG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsApuntar)
			{
				global::CE.DGH_DGC_SOM_IKP.InsApuntarG newShape = new global::CE.DGH_DGC_SOM_IKP.InsApuntarG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsRepetir)
			{
				global::CE.DGH_DGC_SOM_IKP.InsRepetirG newShape = new global::CE.DGH_DGC_SOM_IKP.InsRepetirG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsPosicion)
			{
				global::CE.DGH_DGC_SOM_IKP.InsPosicionG newShape = new global::CE.DGH_DGC_SOM_IKP.InsPosicionG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.Programa)
			{
				global::CE.DGH_DGC_SOM_IKP.ProgramaG newShape = new global::CE.DGH_DGC_SOM_IKP.ProgramaG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsFin)
			{
				global::CE.DGH_DGC_SOM_IKP.FinG newShape = new global::CE.DGH_DGC_SOM_IKP.FinG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.Subprograma)
			{
				global::CE.DGH_DGC_SOM_IKP.SubprogramaG newShape = new global::CE.DGH_DGC_SOM_IKP.SubprogramaG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.Imagen)
			{
				global::CE.DGH_DGC_SOM_IKP.ImageShape1 newShape = new global::CE.DGH_DGC_SOM_IKP.ImageShape1(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InicioPrograma)
			{
				global::CE.DGH_DGC_SOM_IKP.InicioG newShape = new global::CE.DGH_DGC_SOM_IKP.InicioG(this.Partition);
				if(newShape != null) newShape.Size = newShape.DefaultSize; // set default shape size
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma)
			{
				global::CE.DGH_DGC_SOM_IKP.ProgramaImagen newShape = new global::CE.DGH_DGC_SOM_IKP.ProgramaImagen(this.Partition);
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma)
			{
				global::CE.DGH_DGC_SOM_IKP.RepetirSubprogramaG newShape = new global::CE.DGH_DGC_SOM_IKP.RepetirSubprogramaG(this.Partition);
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InstruccionIntermediasReferencesInstruccion)
			{
				global::CE.DGH_DGC_SOM_IKP.OrdenG newShape = new global::CE.DGH_DGC_SOM_IKP.OrdenG(this.Partition);
				return newShape;
			}
			if(element is global::CE.DGH_DGC_SOM_IKP.InicioProgramaReferencesInstruccion)
			{
				global::CE.DGH_DGC_SOM_IKP.OrdenG newShape = new global::CE.DGH_DGC_SOM_IKP.OrdenG(this.Partition);
				return newShape;
			}
			return base.CreateChildShape(element);
		}
		#endregion
		#region Decorator mapping
		/// <summary>
		/// Initialize shape decorator mappings.  This is done here rather than in individual shapes because decorator maps
		/// are defined per diagram type rather than per shape type.
		/// </summary>
		protected override void InitializeShapeFields(global::System.Collections.Generic.IList<DslDiagrams::ShapeField> shapeFields)
		{
			base.InitializeShapeFields(shapeFields);
		}
		
		#endregion
		
		#region Connect actions
		private bool changingMouseAction;
		private global::CE.DGH_DGC_SOM_IKP.OrdenToolConnectAction ordenToolConnectAction;
		private global::CE.DGH_DGC_SOM_IKP.ProgramaImagenToolConnectAction programaImagenToolConnectAction;
		private global::CE.DGH_DGC_SOM_IKP.RepetirSubprogramaToolConnectAction repetirSubprogramaToolConnectAction;
		private global::CE.DGH_DGC_SOM_IKP.PrimeraInstruccionConnectAction primeraInstruccionConnectAction;
		/// <summary>
		/// Virtual method to provide a filter when to select the mouse action
		/// </summary>
		/// <param name="activeView">Currently active view</param>
		/// <param name="filter">filter string used to filter the toolbox items</param>
		protected virtual bool SelectedToolboxItemSupportsFilterString(DslDiagrams::DiagramView activeView, string filter)
		{
			return activeView.SelectedToolboxItemSupportsFilterString(filter);
		}
		/// <summary>
		/// Override to provide the right mouse action when trying
		/// to create links on the diagram
		/// </summary>
		/// <param name="pointArgs"></param>
		public override void OnViewMouseEnter(DslDiagrams::DiagramPointEventArgs pointArgs)
		{
			if (pointArgs  == null) throw new global::System.ArgumentNullException("pointArgs");
		
			DslDiagrams::DiagramView activeView = this.ActiveDiagramView;
			if(activeView != null)
			{
				DslDiagrams::MouseAction action = null;
				if (SelectedToolboxItemSupportsFilterString(activeView, global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPToolboxHelper.OrdenToolFilterString))
				{
					if (this.ordenToolConnectAction == null)
					{
						this.ordenToolConnectAction = new global::CE.DGH_DGC_SOM_IKP.OrdenToolConnectAction(this);
						this.ordenToolConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.ordenToolConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPToolboxHelper.ProgramaImagenToolFilterString))
				{
					if (this.programaImagenToolConnectAction == null)
					{
						this.programaImagenToolConnectAction = new global::CE.DGH_DGC_SOM_IKP.ProgramaImagenToolConnectAction(this);
						this.programaImagenToolConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.programaImagenToolConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPToolboxHelper.RepetirSubprogramaToolFilterString))
				{
					if (this.repetirSubprogramaToolConnectAction == null)
					{
						this.repetirSubprogramaToolConnectAction = new global::CE.DGH_DGC_SOM_IKP.RepetirSubprogramaToolConnectAction(this);
						this.repetirSubprogramaToolConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.repetirSubprogramaToolConnectAction;
				} 
				else if (SelectedToolboxItemSupportsFilterString(activeView, global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPToolboxHelper.PrimeraInstruccionFilterString))
				{
					if (this.primeraInstruccionConnectAction == null)
					{
						this.primeraInstruccionConnectAction = new global::CE.DGH_DGC_SOM_IKP.PrimeraInstruccionConnectAction(this);
						this.primeraInstruccionConnectAction.MouseActionDeactivated += new DslDiagrams::MouseAction.MouseActionDeactivatedEventHandler(OnConnectActionDeactivated);
					}
					action = this.primeraInstruccionConnectAction;
				} 
				else
				{
					action = null;
				}
				
				if (pointArgs.DiagramClientView.ActiveMouseAction != action)
				{
					try
					{
						this.changingMouseAction = true;
						pointArgs.DiagramClientView.ActiveMouseAction = action;
					}
					finally
					{
						this.changingMouseAction = false;
					}
				}
			}
		}
		
		/// <summary>
		/// Snap toolbox selection back to regular pointer after using a custom connect action.
		/// </summary>
		private void OnConnectActionDeactivated(object sender, DslDiagrams::DiagramEventArgs e)
		{
			OnMouseActionDeactivated();
		}
		
		/// <summary>
		/// Overridable method to manage the mouse deactivation. The default implementation snap stoolbox selection back to regular pointer 
		/// after using a custom connect action.
		/// </summary>
		protected virtual void OnMouseActionDeactivated()
		{
			DslDiagrams::DiagramView activeView = this.ActiveDiagramView;
		
			if (activeView != null && activeView.Toolbox != null)
			{
				// If we're not changing mouse action due to changing toolbox selection change,
				// reset toolbox selection.
				if (!this.changingMouseAction)
				{
					activeView.Toolbox.SelectedToolboxItemUsed();
				}
			}
		}
		#endregion
		
		/// <summary>
		/// Dispose of connect actions.
		/// </summary>
		protected override void Dispose(bool disposing)
		{
			try
			{
				if(disposing)
				{
					if(this.ordenToolConnectAction != null)
					{
						this.ordenToolConnectAction.Dispose();
						this.ordenToolConnectAction = null;
					}
					if(this.programaImagenToolConnectAction != null)
					{
						this.programaImagenToolConnectAction.Dispose();
						this.programaImagenToolConnectAction = null;
					}
					if(this.repetirSubprogramaToolConnectAction != null)
					{
						this.repetirSubprogramaToolConnectAction.Dispose();
						this.repetirSubprogramaToolConnectAction = null;
					}
					if(this.primeraInstruccionConnectAction != null)
					{
						this.primeraInstruccionConnectAction.Dispose();
						this.primeraInstruccionConnectAction = null;
					}
				}
			}
			finally
			{
				base.Dispose(disposing);
			}
		}
		#region Constructors, domain class Id
	
		/// <summary>
		/// DGH_DGC_SOM_IKPDiagram domain class Id.
		/// </summary>
		public static readonly new global::System.Guid DomainClassId = new global::System.Guid(0x1103994f, 0x23d0, 0x438d, 0x86, 0xdb, 0xfd, 0xe4, 0xc3, 0x7d, 0x4a, 0x0b);
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="store">Store where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public DGH_DGC_SOM_IKPDiagram(DslModeling::Store store, params DslModeling::PropertyAssignment[] propertyAssignments)
			: this(store != null ? store.DefaultPartitionForClass(DomainClassId) : null, propertyAssignments)
		{
		}
		
		/// <summary>
		/// Constructor
		/// </summary>
		/// <param name="partition">Partition where new element is to be created.</param>
		/// <param name="propertyAssignments">List of domain property id/value pairs to set once the element is created.</param>
		public DGH_DGC_SOM_IKPDiagram(DslModeling::Partition partition, params DslModeling::PropertyAssignment[] propertyAssignments)
			: base(partition, propertyAssignments)
		{
		}
		#endregion
	}
}
namespace CE.DGH_DGC_SOM_IKP
{
	
		/// <summary>
		/// Double derived implementation for the rule that initiates view fixup when an element that has an associated shape is added to the model.
		/// This now enables the DSL author to everride the SkipFixUp() method 
		/// </summary>
		internal partial class FixUpDiagramBase : DslModeling::AddRule
		{
			protected virtual bool SkipFixup(DslModeling::ModelElement childElement)
			{
				return childElement.IsDeleted;
			}
		}
	
		/// <summary>
		/// Rule that initiates view fixup when an element that has an associated shape is added to the model. 
		/// </summary>
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsRepetir), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsPosicion), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsApuntar), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsMover), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsFijar), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.Subprograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsFin), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.Programa), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InstruccionIntermediasReferencesInstruccion), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InicioProgramaReferencesInstruccion), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.Imagen), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InicioPrograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddShapeParentExistRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		internal sealed partial class FixUpDiagram : FixUpDiagramBase
		{
			[global::System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
			public override void ElementAdded(DslModeling::ElementAddedEventArgs e)
			{
				if(e == null) throw new global::System.ArgumentNullException("e");
			
				DslModeling::ModelElement childElement = e.ModelElement;
				if (this.SkipFixup(childElement))
					return;
				DslModeling::ModelElement parentElement;
				if(childElement is DslModeling::ElementLink)
				{
					parentElement = GetParentForRelationship((DslModeling::ElementLink)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsRepetir)
				{
					// Method:
					// private Microsoft.VisualStudio.Modeling.ModelElement GetParentForInsRepetir(InsRepetir childElement)
					// {
					// }
					// must be implemented in a partial class of CE.DGH_DGC_SOM_IKP.FixUpDiagram.  Given a child element,
					// this method should return the parent model element that is associated with the shape or diagram that will be the parent 
					// of the shape created for this child.  If no shape should be created, the method should return null.
					parentElement = GetParentForInsRepetir((global::CE.DGH_DGC_SOM_IKP.InsRepetir)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsPosicion)
				{
					// Method:
					// private Microsoft.VisualStudio.Modeling.ModelElement GetParentForInsPosicion(InsPosicion childElement)
					// {
					// }
					// must be implemented in a partial class of CE.DGH_DGC_SOM_IKP.FixUpDiagram.  Given a child element,
					// this method should return the parent model element that is associated with the shape or diagram that will be the parent 
					// of the shape created for this child.  If no shape should be created, the method should return null.
					parentElement = GetParentForInsPosicion((global::CE.DGH_DGC_SOM_IKP.InsPosicion)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsApuntar)
				{
					// Method:
					// private Microsoft.VisualStudio.Modeling.ModelElement GetParentForInsApuntar(InsApuntar childElement)
					// {
					// }
					// must be implemented in a partial class of CE.DGH_DGC_SOM_IKP.FixUpDiagram.  Given a child element,
					// this method should return the parent model element that is associated with the shape or diagram that will be the parent 
					// of the shape created for this child.  If no shape should be created, the method should return null.
					parentElement = GetParentForInsApuntar((global::CE.DGH_DGC_SOM_IKP.InsApuntar)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsMover)
				{
					// Method:
					// private Microsoft.VisualStudio.Modeling.ModelElement GetParentForInsMover(InsMover childElement)
					// {
					// }
					// must be implemented in a partial class of CE.DGH_DGC_SOM_IKP.FixUpDiagram.  Given a child element,
					// this method should return the parent model element that is associated with the shape or diagram that will be the parent 
					// of the shape created for this child.  If no shape should be created, the method should return null.
					parentElement = GetParentForInsMover((global::CE.DGH_DGC_SOM_IKP.InsMover)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsFijar)
				{
					// Method:
					// private Microsoft.VisualStudio.Modeling.ModelElement GetParentForInsFijar(InsFijar childElement)
					// {
					// }
					// must be implemented in a partial class of CE.DGH_DGC_SOM_IKP.FixUpDiagram.  Given a child element,
					// this method should return the parent model element that is associated with the shape or diagram that will be the parent 
					// of the shape created for this child.  If no shape should be created, the method should return null.
					parentElement = GetParentForInsFijar((global::CE.DGH_DGC_SOM_IKP.InsFijar)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.Subprograma)
				{
					parentElement = GetParentForSubprograma((global::CE.DGH_DGC_SOM_IKP.Subprograma)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InsFin)
				{
					parentElement = GetParentForInsFin((global::CE.DGH_DGC_SOM_IKP.InsFin)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.Programa)
				{
					parentElement = GetParentForPrograma((global::CE.DGH_DGC_SOM_IKP.Programa)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.Imagen)
				{
					parentElement = GetParentForImagen((global::CE.DGH_DGC_SOM_IKP.Imagen)childElement);
				} else
				if(childElement is global::CE.DGH_DGC_SOM_IKP.InicioPrograma)
				{
					parentElement = GetParentForInicioPrograma((global::CE.DGH_DGC_SOM_IKP.InicioPrograma)childElement);
				} else
				{
					parentElement = null;
				}
				
				if(parentElement != null)
				{
					DslDiagrams::Diagram.FixUpDiagram(parentElement, childElement);
				}
			}
			public static global::CE.DGH_DGC_SOM_IKP.AplicacionIPK GetParentForImagen( global::CE.DGH_DGC_SOM_IKP.Imagen root )
			{
				// Segments 0 and 1
				global::CE.DGH_DGC_SOM_IKP.AplicacionIPK result = root.AplicacionIPK;
				if ( result == null ) return null;
				return result;
			}
			public static global::CE.DGH_DGC_SOM_IKP.AplicacionIPK GetParentForPrograma( global::CE.DGH_DGC_SOM_IKP.ConjInstr root )
			{
				// Segments 0 and 1
				global::CE.DGH_DGC_SOM_IKP.AplicacionIPK result = root.AplicacionIPK;
				if ( result == null ) return null;
				return result;
			}
			public static global::CE.DGH_DGC_SOM_IKP.AplicacionIPK GetParentForSubprograma( global::CE.DGH_DGC_SOM_IKP.ConjInstr root )
			{
				// Segments 0 and 1
				global::CE.DGH_DGC_SOM_IKP.AplicacionIPK result = root.AplicacionIPK;
				if ( result == null ) return null;
				return result;
			}
			public static global::CE.DGH_DGC_SOM_IKP.AplicacionIPK GetParentForInsFin( global::CE.DGH_DGC_SOM_IKP.Instruccion root )
			{
				// Segments 0 and 1
				global::CE.DGH_DGC_SOM_IKP.ConjInstr root2 = root.ConjInstr;
				if ( root2 == null ) return null;
				// Segments 2 and 3
				global::CE.DGH_DGC_SOM_IKP.AplicacionIPK result = root2.AplicacionIPK;
				if ( result == null ) return null;
				return result;
			}
			public static global::CE.DGH_DGC_SOM_IKP.AplicacionIPK GetParentForInicioPrograma( global::CE.DGH_DGC_SOM_IKP.InicioPrograma root )
			{
				// Segments 0 and 1
				global::CE.DGH_DGC_SOM_IKP.ConjInstr root2 = root.ConjInstr;
				if ( root2 == null ) return null;
				// Segments 2 and 3
				global::CE.DGH_DGC_SOM_IKP.AplicacionIPK result = root2.AplicacionIPK;
				if ( result == null ) return null;
				return result;
			}
			private static DslModeling::ModelElement GetParentForRelationship(DslModeling::ElementLink elementLink)
			{
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslModeling::ModelElement> linkedElements = elementLink.LinkedElements;
	
				if (linkedElements.Count == 2)
				{
					DslDiagrams::ShapeElement sourceShape = linkedElements[0] as DslDiagrams::ShapeElement;
					DslDiagrams::ShapeElement targetShape = linkedElements[1] as DslDiagrams::ShapeElement;
	
					if(sourceShape == null)
					{
						DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[0]);
						foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
						{
							DslDiagrams::ShapeElement shape = presentationElement as DslDiagrams::ShapeElement;
							if (shape != null)
							{
								sourceShape = shape;
								break;
							}
						}
					}
					
					if(targetShape == null)
					{
						DslModeling::LinkedElementCollection<DslDiagrams::PresentationElement> presentationElements = DslDiagrams::PresentationViewsSubject.GetPresentation(linkedElements[1]);
						foreach (DslDiagrams::PresentationElement presentationElement in presentationElements)
						{
							DslDiagrams::ShapeElement shape = presentationElement as DslDiagrams::ShapeElement;
							if (shape != null)
							{
								targetShape = shape;
								break;
							}
						}
					}
					
					if(sourceShape == null || targetShape == null)
					{
						global::System.Diagnostics.Debug.Fail("Unable to find source and/or target shape for view fixup.");
						return null;
					}
	
					DslDiagrams::ShapeElement sourceParent = sourceShape.ParentShape;
					DslDiagrams::ShapeElement targetParent = targetShape.ParentShape;
	
					while (sourceParent != targetParent && sourceParent != null)
					{
						DslDiagrams::ShapeElement curParent = targetParent;
						while (sourceParent != curParent && curParent != null)
						{
							curParent = curParent.ParentShape;
						}
	
						if(sourceParent == curParent)
						{
							break;
						}
						else
						{
							sourceParent = sourceParent.ParentShape;
						}
					}
	
					while (sourceParent != null)
					{
						// ensure that the parent can parent connectors (i.e., a diagram or a swimlane).
						if(sourceParent is DslDiagrams::Diagram || sourceParent is DslDiagrams::SwimlaneShape)
						{
							break;
						}
						else
						{
							sourceParent = sourceParent.ParentShape;
						}
					}
	
					global::System.Diagnostics.Debug.Assert(sourceParent != null && sourceParent.ModelElement != null, "Unable to find common parent for view fixup.");
					return sourceParent.ModelElement;
				}
	
				return null;
			}
		}
		
	
		/// <summary>
		/// Reroute a connector when the role players of its underlying relationship change
		/// </summary>
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InstruccionIntermediasReferencesInstruccion), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		[DslModeling::RuleOn(typeof(global::CE.DGH_DGC_SOM_IKP.InicioProgramaReferencesInstruccion), FireTime = DslModeling::TimeToFire.TopLevelCommit, Priority = DslDiagrams::DiagramFixupConstants.AddConnectionRulePriority, InitiallyDisabled=true)]
		internal sealed class ConnectorRolePlayerChanged : DslModeling::RolePlayerChangeRule
		{
			/// <summary>
			/// Reroute a connector when the role players of its underlying relationship change
			/// </summary>
			public override void RolePlayerChanged(DslModeling::RolePlayerChangedEventArgs e)
			{
				if (e == null) throw new global::System.ArgumentNullException("e");
	
				global::System.Collections.ObjectModel.ReadOnlyCollection<DslDiagrams::PresentationViewsSubject> connectorLinks = DslDiagrams::PresentationViewsSubject.GetLinksToPresentation(e.ElementLink);
				foreach (DslDiagrams::PresentationViewsSubject connectorLink in connectorLinks)
				{
					// Fix up any binary link shapes attached to the element link.
					DslDiagrams::BinaryLinkShape linkShape = connectorLink.Presentation as DslDiagrams::BinaryLinkShape;
					if (linkShape != null)
					{
						global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram diagram = linkShape.Diagram as global::CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram;
						if (diagram != null)
						{
							if (e.NewRolePlayer != null)
							{
								DslDiagrams::NodeShape fromShape;
								DslDiagrams::NodeShape toShape;
								diagram.GetSourceAndTargetForConnector(linkShape, out fromShape, out toShape);
								if (fromShape != null && toShape != null)
								{
									if (!object.Equals(fromShape, linkShape.FromShape))
									{
										linkShape.FromShape = fromShape;
									}
									if (!object.Equals(linkShape.ToShape, toShape))
									{
										linkShape.ToShape = toShape;
									}
								}
								else
								{
									// delete the connector if we cannot find an appropriate target shape.
									linkShape.Delete();
								}
							}
							else
							{
								// delete the connector if the new role player is null.
								linkShape.Delete();
							}
						}
					}
				}
			}
		}
	}

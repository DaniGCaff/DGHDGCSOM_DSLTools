<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="293097a4-5baa-4db5-8618-fbe37927cdf0" Description="Description for CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKP" Name="DGH_DGC_SOM_IKP" DisplayName="DGH_DGC_SOM_IKP" Namespace="CE.DGH_DGC_SOM_IKP" ProductName="DGH_DGC_SOM_IKP" CompanyName="CE" PackageGuid="b6eee23c-71e3-44f4-9fbe-921f798446cf" PackageNamespace="CE.DGH_DGC_SOM_IKP" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="c0a64e3a-d3cf-483d-bd3b-1d5630e1e5f6" Description="The root in which all other elements are embedded. Appears as a diagram." Name="AplicacionIPK" DisplayName="Aplicacion IPK" Namespace="CE.DGH_DGC_SOM_IKP">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Imagen" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AplicacionIPKHasImagen.Imagen</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ConjInstr" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>AplicacionIPKHasConjInstr.ConjInstr</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="952e6ee7-6bb1-44f1-b95c-d2f5a0562fb4" Description="Description for CE.DGH_DGC_SOM_IKP.Imagen" Name="Imagen" DisplayName="Imagen" Namespace="CE.DGH_DGC_SOM_IKP" />
    <DomainClass Id="f50e3bc2-ac85-4b7d-b5f1-030aeda55005" Description="Description for CE.DGH_DGC_SOM_IKP.ConjInstr" Name="ConjInstr" DisplayName="Conj Instr" InheritanceModifier="Abstract" Namespace="CE.DGH_DGC_SOM_IKP">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Instruccion" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>ConjInstrHasInstruccion.Instruccion</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="96ae80fb-9d84-476f-94c8-b759c045c0f1" Description="Description for CE.DGH_DGC_SOM_IKP.Instruccion" Name="Instruccion" DisplayName="Instruccion" InheritanceModifier="Abstract" Namespace="CE.DGH_DGC_SOM_IKP" />
    <DomainClass Id="1324cdaf-c38b-4d17-bcfa-ce696cb737ca" Description="Description for CE.DGH_DGC_SOM_IKP.InsRepetir" Name="InsRepetir" DisplayName="Ins Repetir" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="Instruccion" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="80346f3c-37cb-4bcd-b25a-37df08dd1490" Description="Description for CE.DGH_DGC_SOM_IKP.InsFijar" Name="InsFijar" DisplayName="Ins Fijar" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="Instruccion" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="aaaaa2d7-a07d-4123-8187-f628f669caf8" Description="Description for CE.DGH_DGC_SOM_IKP.InsApuntar" Name="InsApuntar" DisplayName="Ins Apuntar" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="Instruccion" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="aa1d0fad-521e-4975-bf96-f2dbf2f77c12" Description="Description for CE.DGH_DGC_SOM_IKP.InsPosicion" Name="InsPosicion" DisplayName="Ins Posicion" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="Instruccion" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="a063983b-ffdb-440c-9d1a-488b9b864246" Description="Description for CE.DGH_DGC_SOM_IKP.InsMover" Name="InsMover" DisplayName="Ins Mover" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="Instruccion" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="05cfd294-05e0-42f0-ad83-b7ecf9b484b5" Description="Description for CE.DGH_DGC_SOM_IKP.Programa" Name="Programa" DisplayName="Programa" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="ConjInstr" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="4da57eca-484f-4ea2-b382-14163b993d53" Description="Description for CE.DGH_DGC_SOM_IKP.Subprograma" Name="Subprograma" DisplayName="Subprograma" Namespace="CE.DGH_DGC_SOM_IKP">
      <BaseClass>
        <DomainClassMoniker Name="ConjInstr" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="1010c907-a9d8-46d1-8652-8ee03a99211e" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasImagen" Name="AplicacionIPKHasImagen" DisplayName="Aplicacion IPKHas Imagen" Namespace="CE.DGH_DGC_SOM_IKP" IsEmbedding="true">
      <Source>
        <DomainRole Id="0080aeb5-262b-4366-b07b-78dd00d25837" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasImagen.AplicacionIPK" Name="AplicacionIPK" DisplayName="Aplicacion IPK" PropertyName="Imagen" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Imagen">
          <RolePlayer>
            <DomainClassMoniker Name="AplicacionIPK" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="7dfe0cc9-103e-4c9e-9123-2d08a9d3268b" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasImagen.Imagen" Name="Imagen" DisplayName="Imagen" PropertyName="AplicacionIPK" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aplicacion IPK">
          <RolePlayer>
            <DomainClassMoniker Name="Imagen" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="85fa269b-5eb1-4e04-aa42-421f8d3acd22" Description="Description for CE.DGH_DGC_SOM_IKP.ConjInstrHasInstruccion" Name="ConjInstrHasInstruccion" DisplayName="Conj Instr Has Instruccion" Namespace="CE.DGH_DGC_SOM_IKP" IsEmbedding="true">
      <Source>
        <DomainRole Id="c1697f7d-4ea1-4dbb-8654-a5ebf93c7091" Description="Description for CE.DGH_DGC_SOM_IKP.ConjInstrHasInstruccion.ConjInstr" Name="ConjInstr" DisplayName="Conj Instr" PropertyName="Instruccion" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Instruccion">
          <RolePlayer>
            <DomainClassMoniker Name="ConjInstr" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="da6e10ad-8c38-47a7-a6d9-a500ac7d60db" Description="Description for CE.DGH_DGC_SOM_IKP.ConjInstrHasInstruccion.Instruccion" Name="Instruccion" DisplayName="Instruccion" PropertyName="ConjInstr" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Conj Instr">
          <RolePlayer>
            <DomainClassMoniker Name="Instruccion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="ff42f1f1-39a4-4af7-9423-7672fa7b1a2d" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionInicial" Name="ProgramaReferencesInstruccionInicial" DisplayName="Programa References Instruccion Inicial" Namespace="CE.DGH_DGC_SOM_IKP">
      <Source>
        <DomainRole Id="27553de1-4b1a-4ced-ad81-17328c349b94" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionInicial.ConjInstr" Name="ConjInstr" DisplayName="Conj Instr" PropertyName="InstruccionInicial" Multiplicity="One" PropertyDisplayName="Instruccion Inicial">
          <RolePlayer>
            <DomainClassMoniker Name="ConjInstr" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="24a373c3-f2ec-4c47-8d82-91bb32258647" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionInicial.Instruccion" Name="Instruccion" DisplayName="Instruccion" PropertyName="ProgramaA" Multiplicity="ZeroOne" PropertyDisplayName="Programa A">
          <RolePlayer>
            <DomainClassMoniker Name="Instruccion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="faa9fb73-b24a-4829-a5b3-a7cb7f1175b3" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionFinal" Name="ProgramaReferencesInstruccionFinal" DisplayName="Programa References Instruccion Final" Namespace="CE.DGH_DGC_SOM_IKP">
      <Source>
        <DomainRole Id="bac43b96-40f2-4ad4-982b-85d5d48d6717" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionFinal.ConjInstr" Name="ConjInstr" DisplayName="Conj Instr" PropertyName="InstruccionFinal" Multiplicity="One" PropertyDisplayName="Instruccion Final">
          <RolePlayer>
            <DomainClassMoniker Name="ConjInstr" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="32ff2563-79b8-4089-8517-e7b8de6853d5" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaReferencesInstruccionFinal.Instruccion" Name="Instruccion" DisplayName="Instruccion" PropertyName="ProgramaB" Multiplicity="ZeroOne" PropertyDisplayName="Programa B">
          <RolePlayer>
            <DomainClassMoniker Name="Instruccion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c3481972-5ae6-4069-9651-17b38b9ed74a" Description="Description for CE.DGH_DGC_SOM_IKP.InstruccionReferencessiguiente" Name="InstruccionReferencessiguiente" DisplayName="Instruccion Referencessiguiente" Namespace="CE.DGH_DGC_SOM_IKP">
      <Source>
        <DomainRole Id="f01783b4-46d3-4277-958a-cb333053830b" Description="Description for CE.DGH_DGC_SOM_IKP.InstruccionReferencessiguiente.SourceInstruccion" Name="SourceInstruccion" DisplayName="Source Instruccion" PropertyName="siguiente" Multiplicity="ZeroOne" PropertyDisplayName="Siguiente">
          <RolePlayer>
            <DomainClassMoniker Name="Instruccion" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5bc8bef5-7760-4dc6-9528-06e98177fe52" Description="Description for CE.DGH_DGC_SOM_IKP.InstruccionReferencessiguiente.TargetInstruccion" Name="TargetInstruccion" DisplayName="Target Instruccion" PropertyName="anterior" Multiplicity="ZeroOne" PropertyDisplayName="Anterior">
          <RolePlayer>
            <DomainClassMoniker Name="Instruccion" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="96733f5f-ba47-4fab-a34c-22c4d3846946" Description="Description for CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma" Name="ImagenReferencesPrograma" DisplayName="Imagen References Programa" Namespace="CE.DGH_DGC_SOM_IKP">
      <Source>
        <DomainRole Id="a0ac96ea-1456-425d-a1cc-0816e903ca7a" Description="Description for CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma.Imagen" Name="Imagen" DisplayName="Imagen" PropertyName="Programa" Multiplicity="One" PropertyDisplayName="Programa">
          <RolePlayer>
            <DomainClassMoniker Name="Imagen" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="bf3f3977-8b59-480c-9ab0-1e7fcbbb0a94" Description="Description for CE.DGH_DGC_SOM_IKP.ImagenReferencesPrograma.Programa" Name="Programa" DisplayName="Programa" PropertyName="Imagen" Multiplicity="One" PropertyDisplayName="Imagen">
          <RolePlayer>
            <DomainClassMoniker Name="Programa" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="91157325-5bc2-422f-bc8b-b0e35c234c20" Description="Description for CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma" Name="InsRepetirReferencesSubprograma" DisplayName="Ins Repetir References Subprograma" Namespace="CE.DGH_DGC_SOM_IKP">
      <Source>
        <DomainRole Id="389bdd0f-9e0c-490b-9837-252ca2bda10e" Description="Description for CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma.InsRepetir" Name="InsRepetir" DisplayName="Ins Repetir" PropertyName="Subprograma" Multiplicity="One" PropertyDisplayName="Subprograma">
          <RolePlayer>
            <DomainClassMoniker Name="InsRepetir" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="4c6ea785-4e43-417f-bec4-2dec3aaaef0a" Description="Description for CE.DGH_DGC_SOM_IKP.InsRepetirReferencesSubprograma.Subprograma" Name="Subprograma" DisplayName="Subprograma" PropertyName="InsRepetir" Multiplicity="One" PropertyDisplayName="Ins Repetir">
          <RolePlayer>
            <DomainClassMoniker Name="Subprograma" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="3c405c82-ff0a-49fe-9913-1b22ccd8056d" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasConjInstr" Name="AplicacionIPKHasConjInstr" DisplayName="Aplicacion IPKHas Conj Instr" Namespace="CE.DGH_DGC_SOM_IKP" IsEmbedding="true">
      <Source>
        <DomainRole Id="457e9b55-3f2c-4278-9309-215fdf3c3d76" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasConjInstr.AplicacionIPK" Name="AplicacionIPK" DisplayName="Aplicacion IPK" PropertyName="ConjInstr" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Conj Instr">
          <RolePlayer>
            <DomainClassMoniker Name="AplicacionIPK" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="5fd23919-bed8-4546-ba81-ea3ca7a0a0c7" Description="Description for CE.DGH_DGC_SOM_IKP.AplicacionIPKHasConjInstr.ConjInstr" Name="ConjInstr" DisplayName="Conj Instr" PropertyName="AplicacionIPK" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Aplicacion IPK">
          <RolePlayer>
            <DomainClassMoniker Name="ConjInstr" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <ImageShape Id="676c5cc1-f21c-4eac-8134-8b9cf4dd889d" Description="Description for CE.DGH_DGC_SOM_IKP.ImageShape1" Name="ImageShape1" DisplayName="Image Shape1" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Image Shape1" InitialHeight="1" Image="C:\Users\bj0550\Desktop\collie.png" />
    <GeometryShape Id="2e88af77-6a65-416a-80e2-741882eb67f7" Description="Description for CE.DGH_DGC_SOM_IKP.InsFijarG" Name="InsFijarG" DisplayName="Ins Fijar G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Ins Fijar G" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Fijar" DisplayName="Fijar tamaño " DefaultText="Fijar" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="0d99c67b-3dcb-4662-866d-e06de611987a" Description="Description for CE.DGH_DGC_SOM_IKP.InsApuntarG" Name="InsApuntarG" DisplayName="Ins Apuntar G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Ins Apuntar G" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Apuntar" DisplayName="Apuntar en direccion" DefaultText="Apuntar" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="be261656-d8d1-485c-96d7-73048a7b0a12" Description="Description for CE.DGH_DGC_SOM_IKP.InsRepetirG" Name="InsRepetirG" DisplayName="Ins Repetir G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Ins Repetir G" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Repetir" DisplayName="Repetir" DefaultText="Repetir" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="40c697ae-22f1-4a4a-be43-b32014a03c1d" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaG" Name="ProgramaG" DisplayName="Programa G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Programa G" InitialHeight="1" Geometry="Rectangle" />
    <GeometryShape Id="29a9fd9f-8501-4742-affa-bf3364dd7ab3" Description="Description for CE.DGH_DGC_SOM_IKP.InsPosicionG" Name="InsPosicionG" DisplayName="Ins Posicion G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Ins Posicion G" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Ir a posicion" DisplayName="Ir a posicion" DefaultText="Ir a posicion" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="35784762-6e26-4742-a10a-0f5f014ae38e" Description="Description for CE.DGH_DGC_SOM_IKP.InsMoverG" Name="InsMoverG" DisplayName="Ins Mover G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Ins Mover G" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Mover pasos" DisplayName="Mover pasos" DefaultText="Mover pasos" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="66f95156-78b2-46b4-ba6e-a748f230f96b" Description="Description for CE.DGH_DGC_SOM_IKP.SubprogramaG" Name="SubprogramaG" DisplayName="Subprograma G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Subprograma G" FillColor="Gainsboro" InitialHeight="1" Geometry="Rectangle" />
  </Shapes>
  <Connectors>
    <Connector Id="d7b370c1-9397-4248-8ecc-dd645e35bf86" Description="Description for CE.DGH_DGC_SOM_IKP.InicialG" Name="InicialG" DisplayName="Inicial G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Inicial G" Color="Chartreuse" TargetEndStyle="FilledArrow" />
    <Connector Id="73cfdd9e-b0f3-4578-b45c-d5d86614c944" Description="Description for CE.DGH_DGC_SOM_IKP.FinalG" Name="FinalG" DisplayName="Final G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Final G" Color="Red" TargetEndStyle="FilledArrow" />
    <Connector Id="2427ad35-7c61-44fd-b390-540aa643bc2e" Description="Description for CE.DGH_DGC_SOM_IKP.OrdenG" Name="OrdenG" DisplayName="Orden G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Orden G" TargetEndStyle="FilledArrow" />
    <Connector Id="e8a0a4f8-e0e5-4756-b613-5ce723f07c8c" Description="Description for CE.DGH_DGC_SOM_IKP.ProgramaImagen" Name="ProgramaImagen" DisplayName="Programa Imagen" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Programa Imagen" />
    <Connector Id="6a488c17-4b08-4a9f-b972-8fb2e53f0736" Description="Description for CE.DGH_DGC_SOM_IKP.RepetirSubprogramaG" Name="RepetirSubprogramaG" DisplayName="Repetir Subprograma G" Namespace="CE.DGH_DGC_SOM_IKP" FixedTooltipText="Repetir Subprograma G" />
  </Connectors>
  <XmlSerializationBehavior Name="DGH_DGC_SOM_IKPSerializationBehavior" Namespace="CE.DGH_DGC_SOM_IKP">
    <ClassData>
      <XmlClassData TypeName="AplicacionIPK" MonikerAttributeName="" SerializeId="true" MonikerElementName="aplicacionIPKMoniker" ElementName="aplicacionIPK" MonikerTypeName="AplicacionIPKMoniker">
        <DomainClassMoniker Name="AplicacionIPK" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="imagen">
            <DomainRelationshipMoniker Name="AplicacionIPKHasImagen" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="conjInstr">
            <DomainRelationshipMoniker Name="AplicacionIPKHasConjInstr" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="DGH_DGC_SOM_IKPDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="dGH_DGC_SOM_IKPDiagramMoniker" ElementName="dGH_DGC_SOM_IKPDiagram" MonikerTypeName="DGH_DGC_SOM_IKPDiagramMoniker">
        <DiagramMoniker Name="DGH_DGC_SOM_IKPDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Imagen" MonikerAttributeName="" SerializeId="true" MonikerElementName="imagenMoniker" ElementName="imagen" MonikerTypeName="ImagenMoniker">
        <DomainClassMoniker Name="Imagen" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="programa">
            <DomainRelationshipMoniker Name="ImagenReferencesPrograma" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="ConjInstr" MonikerAttributeName="" SerializeId="true" MonikerElementName="conjInstrMoniker" ElementName="conjInstr" MonikerTypeName="ConjInstrMoniker">
        <DomainClassMoniker Name="ConjInstr" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="instruccion">
            <DomainRelationshipMoniker Name="ConjInstrHasInstruccion" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="instruccionInicial">
            <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionInicial" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="instruccionFinal">
            <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionFinal" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="AplicacionIPKHasImagen" MonikerAttributeName="" SerializeId="true" MonikerElementName="aplicacionIPKHasImagenMoniker" ElementName="aplicacionIPKHasImagen" MonikerTypeName="AplicacionIPKHasImagenMoniker">
        <DomainRelationshipMoniker Name="AplicacionIPKHasImagen" />
      </XmlClassData>
      <XmlClassData TypeName="ImageShape1" MonikerAttributeName="" SerializeId="true" MonikerElementName="imageShape1Moniker" ElementName="imageShape1" MonikerTypeName="ImageShape1Moniker">
        <ImageShapeMoniker Name="ImageShape1" />
      </XmlClassData>
      <XmlClassData TypeName="Instruccion" MonikerAttributeName="" SerializeId="true" MonikerElementName="instruccionMoniker" ElementName="instruccion" MonikerTypeName="InstruccionMoniker">
        <DomainClassMoniker Name="Instruccion" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="siguiente">
            <DomainRelationshipMoniker Name="InstruccionReferencessiguiente" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InsRepetir" MonikerAttributeName="" SerializeId="true" MonikerElementName="insRepetirMoniker" ElementName="insRepetir" MonikerTypeName="InsRepetirMoniker">
        <DomainClassMoniker Name="InsRepetir" />
        <ElementData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="subprograma">
            <DomainRelationshipMoniker Name="InsRepetirReferencesSubprograma" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="InsFijar" MonikerAttributeName="" SerializeId="true" MonikerElementName="insFijarMoniker" ElementName="insFijar" MonikerTypeName="InsFijarMoniker">
        <DomainClassMoniker Name="InsFijar" />
      </XmlClassData>
      <XmlClassData TypeName="InsApuntar" MonikerAttributeName="" SerializeId="true" MonikerElementName="insApuntarMoniker" ElementName="insApuntar" MonikerTypeName="InsApuntarMoniker">
        <DomainClassMoniker Name="InsApuntar" />
      </XmlClassData>
      <XmlClassData TypeName="InsFijarG" MonikerAttributeName="" SerializeId="true" MonikerElementName="insFijarGMoniker" ElementName="insFijarG" MonikerTypeName="InsFijarGMoniker">
        <GeometryShapeMoniker Name="InsFijarG" />
      </XmlClassData>
      <XmlClassData TypeName="InsApuntarG" MonikerAttributeName="" SerializeId="true" MonikerElementName="insApuntarGMoniker" ElementName="insApuntarG" MonikerTypeName="InsApuntarGMoniker">
        <GeometryShapeMoniker Name="InsApuntarG" />
      </XmlClassData>
      <XmlClassData TypeName="InsRepetirG" MonikerAttributeName="" SerializeId="true" MonikerElementName="insRepetirGMoniker" ElementName="insRepetirG" MonikerTypeName="InsRepetirGMoniker">
        <GeometryShapeMoniker Name="InsRepetirG" />
      </XmlClassData>
      <XmlClassData TypeName="ConjInstrHasInstruccion" MonikerAttributeName="" SerializeId="true" MonikerElementName="conjInstrHasInstruccionMoniker" ElementName="conjInstrHasInstruccion" MonikerTypeName="ConjInstrHasInstruccionMoniker">
        <DomainRelationshipMoniker Name="ConjInstrHasInstruccion" />
      </XmlClassData>
      <XmlClassData TypeName="ProgramaReferencesInstruccionInicial" MonikerAttributeName="" SerializeId="true" MonikerElementName="programaReferencesInstruccionInicialMoniker" ElementName="programaReferencesInstruccionInicial" MonikerTypeName="ProgramaReferencesInstruccionInicialMoniker">
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionInicial" />
      </XmlClassData>
      <XmlClassData TypeName="ProgramaReferencesInstruccionFinal" MonikerAttributeName="" SerializeId="true" MonikerElementName="programaReferencesInstruccionFinalMoniker" ElementName="programaReferencesInstruccionFinal" MonikerTypeName="ProgramaReferencesInstruccionFinalMoniker">
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionFinal" />
      </XmlClassData>
      <XmlClassData TypeName="InicialG" MonikerAttributeName="" SerializeId="true" MonikerElementName="inicialGMoniker" ElementName="inicialG" MonikerTypeName="InicialGMoniker">
        <ConnectorMoniker Name="InicialG" />
      </XmlClassData>
      <XmlClassData TypeName="FinalG" MonikerAttributeName="" SerializeId="true" MonikerElementName="finalGMoniker" ElementName="finalG" MonikerTypeName="FinalGMoniker">
        <ConnectorMoniker Name="FinalG" />
      </XmlClassData>
      <XmlClassData TypeName="ProgramaG" MonikerAttributeName="" SerializeId="true" MonikerElementName="programaGMoniker" ElementName="programaG" MonikerTypeName="ProgramaGMoniker">
        <GeometryShapeMoniker Name="ProgramaG" />
      </XmlClassData>
      <XmlClassData TypeName="InstruccionReferencessiguiente" MonikerAttributeName="" SerializeId="true" MonikerElementName="instruccionReferencessiguienteMoniker" ElementName="instruccionReferencessiguiente" MonikerTypeName="InstruccionReferencessiguienteMoniker">
        <DomainRelationshipMoniker Name="InstruccionReferencessiguiente" />
      </XmlClassData>
      <XmlClassData TypeName="OrdenG" MonikerAttributeName="" SerializeId="true" MonikerElementName="ordenGMoniker" ElementName="ordenG" MonikerTypeName="OrdenGMoniker">
        <ConnectorMoniker Name="OrdenG" />
      </XmlClassData>
      <XmlClassData TypeName="InsPosicion" MonikerAttributeName="" SerializeId="true" MonikerElementName="insPosicionMoniker" ElementName="insPosicion" MonikerTypeName="InsPosicionMoniker">
        <DomainClassMoniker Name="InsPosicion" />
      </XmlClassData>
      <XmlClassData TypeName="InsMover" MonikerAttributeName="" SerializeId="true" MonikerElementName="insMoverMoniker" ElementName="insMover" MonikerTypeName="InsMoverMoniker">
        <DomainClassMoniker Name="InsMover" />
      </XmlClassData>
      <XmlClassData TypeName="InsPosicionG" MonikerAttributeName="" SerializeId="true" MonikerElementName="insPosicionGMoniker" ElementName="insPosicionG" MonikerTypeName="InsPosicionGMoniker">
        <GeometryShapeMoniker Name="InsPosicionG" />
      </XmlClassData>
      <XmlClassData TypeName="InsMoverG" MonikerAttributeName="" SerializeId="true" MonikerElementName="insMoverGMoniker" ElementName="insMoverG" MonikerTypeName="InsMoverGMoniker">
        <GeometryShapeMoniker Name="InsMoverG" />
      </XmlClassData>
      <XmlClassData TypeName="ProgramaImagen" MonikerAttributeName="" SerializeId="true" MonikerElementName="programaImagenMoniker" ElementName="programaImagen" MonikerTypeName="ProgramaImagenMoniker">
        <ConnectorMoniker Name="ProgramaImagen" />
      </XmlClassData>
      <XmlClassData TypeName="RepetirSubprogramaG" MonikerAttributeName="" SerializeId="true" MonikerElementName="repetirSubprogramaGMoniker" ElementName="repetirSubprogramaG" MonikerTypeName="RepetirSubprogramaGMoniker">
        <ConnectorMoniker Name="RepetirSubprogramaG" />
      </XmlClassData>
      <XmlClassData TypeName="Programa" MonikerAttributeName="" SerializeId="true" MonikerElementName="programaMoniker" ElementName="programa" MonikerTypeName="ProgramaMoniker">
        <DomainClassMoniker Name="Programa" />
      </XmlClassData>
      <XmlClassData TypeName="Subprograma" MonikerAttributeName="" SerializeId="true" MonikerElementName="subprogramaMoniker" ElementName="subprograma" MonikerTypeName="SubprogramaMoniker">
        <DomainClassMoniker Name="Subprograma" />
      </XmlClassData>
      <XmlClassData TypeName="ImagenReferencesPrograma" MonikerAttributeName="" SerializeId="true" MonikerElementName="imagenReferencesProgramaMoniker" ElementName="imagenReferencesPrograma" MonikerTypeName="ImagenReferencesProgramaMoniker">
        <DomainRelationshipMoniker Name="ImagenReferencesPrograma" />
      </XmlClassData>
      <XmlClassData TypeName="SubprogramaG" MonikerAttributeName="" SerializeId="true" MonikerElementName="subprogramaGMoniker" ElementName="subprogramaG" MonikerTypeName="SubprogramaGMoniker">
        <GeometryShapeMoniker Name="SubprogramaG" />
      </XmlClassData>
      <XmlClassData TypeName="InsRepetirReferencesSubprograma" MonikerAttributeName="" SerializeId="true" MonikerElementName="insRepetirReferencesSubprogramaMoniker" ElementName="insRepetirReferencesSubprograma" MonikerTypeName="InsRepetirReferencesSubprogramaMoniker">
        <DomainRelationshipMoniker Name="InsRepetirReferencesSubprograma" />
      </XmlClassData>
      <XmlClassData TypeName="AplicacionIPKHasConjInstr" MonikerAttributeName="" SerializeId="true" MonikerElementName="aplicacionIPKHasConjInstrMoniker" ElementName="aplicacionIPKHasConjInstr" MonikerTypeName="AplicacionIPKHasConjInstrMoniker">
        <DomainRelationshipMoniker Name="AplicacionIPKHasConjInstr" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="DGH_DGC_SOM_IKPExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ProgramaReferencesInstruccionInicialBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionInicial" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ConjInstr" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Instruccion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ProgramaReferencesInstruccionFinalBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionFinal" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="ConjInstr" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Instruccion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="InstruccionReferencessiguienteBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="InstruccionReferencessiguiente" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Instruccion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Instruccion" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ImagenReferencesProgramaBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ImagenReferencesPrograma" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Imagen" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Programa" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="InsRepetirReferencesSubprogramaBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="InsRepetirReferencesSubprograma" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="InsRepetir" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Subprograma" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="1103994f-23d0-438d-86db-fde4c37d4a0b" Description="Description for CE.DGH_DGC_SOM_IKP.DGH_DGC_SOM_IKPDiagram" Name="DGH_DGC_SOM_IKPDiagram" DisplayName="Minimal Language Diagram" Namespace="CE.DGH_DGC_SOM_IKP">
    <Class>
      <DomainClassMoniker Name="AplicacionIPK" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Imagen" />
        <ParentElementPath>
          <DomainPath>AplicacionIPKHasImagen.AplicacionIPK/!AplicacionIPK</DomainPath>
        </ParentElementPath>
        <ImageShapeMoniker Name="ImageShape1" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InsFijar" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <GeometryShapeMoniker Name="InsFijarG" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InsApuntar" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <GeometryShapeMoniker Name="InsApuntarG" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InsRepetir" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <GeometryShapeMoniker Name="InsRepetirG" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InsPosicion" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <GeometryShapeMoniker Name="InsPosicionG" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true">
        <DomainClassMoniker Name="InsMover" />
        <ParentElementPath>
          <DomainPath />
        </ParentElementPath>
        <GeometryShapeMoniker Name="InsMoverG" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Programa" />
        <ParentElementPath>
          <DomainPath>AplicacionIPKHasConjInstr.AplicacionIPK/!AplicacionIPK</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="ProgramaG" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Subprograma" />
        <ParentElementPath>
          <DomainPath>AplicacionIPKHasConjInstr.AplicacionIPK/!AplicacionIPK</DomainPath>
        </ParentElementPath>
        <GeometryShapeMoniker Name="SubprogramaG" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="InicialG" />
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionInicial" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="FinalG" />
        <DomainRelationshipMoniker Name="ProgramaReferencesInstruccionFinal" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="OrdenG" />
        <DomainRelationshipMoniker Name="InstruccionReferencessiguiente" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ProgramaImagen" />
        <DomainRelationshipMoniker Name="ImagenReferencesPrograma" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="RepetirSubprogramaG" />
        <DomainRelationshipMoniker Name="InsRepetirReferencesSubprograma" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="DGH_DGC_SOM_IKP" EditorGuid="59f7e28b-c170-456b-a62b-58b835bd889f">
    <RootClass>
      <DomainClassMoniker Name="AplicacionIPK" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="DGH_DGC_SOM_IKPSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="DGH_DGC_SOM_IKP">
      <ElementTool Name="ImagenTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="ImagenTool" Tooltip="Imagen Tool" HelpKeyword="ImagenTool">
        <DomainClassMoniker Name="Imagen" />
      </ElementTool>
      <ElementTool Name="ProgramaTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="ProgramaTool" Tooltip="Programa Tool" HelpKeyword="ProgramaTool">
        <DomainClassMoniker Name="Programa" />
      </ElementTool>
      <ElementTool Name="ControlTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="ControlTool" Tooltip="Control Tool" HelpKeyword="ControlTool">
        <DomainClassMoniker Name="InsRepetir" />
      </ElementTool>
      <ElementTool Name="ApuntarTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="ApuntarTool" Tooltip="Apuntar Tool" HelpKeyword="ApuntarTool">
        <DomainClassMoniker Name="InsApuntar" />
      </ElementTool>
      <ElementTool Name="FijarTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="FijarTool" Tooltip="Fijar Tool" HelpKeyword="FijarTool">
        <DomainClassMoniker Name="InsFijar" />
      </ElementTool>
      <ConnectionTool Name="InicialTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="InicialTool" Tooltip="Inicial Tool" HelpKeyword="">
        <ConnectionBuilderMoniker Name="DGH_DGC_SOM_IKP/ProgramaReferencesInstruccionInicialBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="FinalTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="FinalTool" Tooltip="Final Tool" HelpKeyword="FinalTool">
        <ConnectionBuilderMoniker Name="DGH_DGC_SOM_IKP/ProgramaReferencesInstruccionFinalBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="OrdenTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="OrdenTool" Tooltip="Orden Tool" HelpKeyword="OrdenTool">
        <ConnectionBuilderMoniker Name="DGH_DGC_SOM_IKP/InstruccionReferencessiguienteBuilder" />
      </ConnectionTool>
      <ElementTool Name="PosicionTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="PosicionTool" Tooltip="Posicion Tool" HelpKeyword="PosicionTool">
        <DomainClassMoniker Name="InsPosicion" />
      </ElementTool>
      <ElementTool Name="MoverTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="MoverTool" Tooltip="Mover Tool" HelpKeyword="MoverTool">
        <DomainClassMoniker Name="InsMover" />
      </ElementTool>
      <ConnectionTool Name="ProgramaImagenTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="ProgramaImagenTool" Tooltip="Programa Imagen Tool" HelpKeyword="ProgramaImagenTool">
        <ConnectionBuilderMoniker Name="DGH_DGC_SOM_IKP/ImagenReferencesProgramaBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="RepetirSubprogramaTool" ToolboxIcon="C:\Users\bj0550\Desktop\imagen.bmp" Caption="RepetirSubprogramaTool" Tooltip="Repetir Subprograma Tool" HelpKeyword="RepetirSubprogramaTool">
        <ConnectionBuilderMoniker Name="DGH_DGC_SOM_IKP/InsRepetirReferencesSubprogramaBuilder" />
      </ConnectionTool>
      <ElementTool Name="SubprogramaTool" ToolboxIcon="C:\Users\bj0550\Desktop\programa.bmp" Caption="SubprogramaTool" Tooltip="Subprograma Tool" HelpKeyword="SubprogramaTool">
        <DomainClassMoniker Name="Subprograma" />
      </ElementTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="DGH_DGC_SOM_IKPDiagram" />
  </Designer>
  <Explorer ExplorerGuid="85a37985-8134-4416-ac60-a3fac65719a5" Title="DGH_DGC_SOM_IKP Explorer">
    <ExplorerBehaviorMoniker Name="DGH_DGC_SOM_IKP/DGH_DGC_SOM_IKPExplorer" />
  </Explorer>
</Dsl>
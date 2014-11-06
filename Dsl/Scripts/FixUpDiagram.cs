using Microsoft.VisualStudio.Modeling;
namespace CE.DGH_DGC_SOM_IKP
{
    partial class FixUpDiagram
    {
        private ModelElement GetParentForInsRepetir(InsRepetir elem)
        {
            return elem.ConjInstr;
        }
        private ModelElement GetParentForInsFijar(InsFijar elem)
        {
            return elem.ConjInstr;
        }
        private ModelElement GetParentForInsMover(InsMover elem)
        {
            return elem.ConjInstr;
        }
        private ModelElement GetParentForInsPosicion(InsPosicion elem)
        {
            return elem.ConjInstr;
        }
        private ModelElement GetParentForInsApuntar(InsApuntar elem)
        {
            return elem.ConjInstr;
        }
    }
}
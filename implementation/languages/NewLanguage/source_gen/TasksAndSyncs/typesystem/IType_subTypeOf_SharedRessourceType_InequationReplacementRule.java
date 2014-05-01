package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInequationReplacementRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicable2Status;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.smodel.SModelUtil_new;

public class IType_subTypeOf_SharedRessourceType_InequationReplacementRule extends AbstractInequationReplacementRule_Runtime {
  public IType_subTypeOf_SharedRessourceType_InequationReplacementRule() {
  }

  public void processInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, final TypeCheckingContext typeCheckingContext, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
    {
      SNode _nodeToCheck_1029348928467 = equationInfo.getNodeWithError();
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "1924594752097258956", 0, null);
      _info_12389875345.getOuterRulesIdFromInfo(equationInfo);
      typeCheckingContext.createLessThanInequality((SNode) subtype, (SNode) SLinkOperations.getTarget(supertype, "baseType", true), false, true, _info_12389875345);
    }
  }

  public boolean checkInequation(final SNode subtype, final SNode supertype, final EquationInfo equationInfo, IsApplicable2Status status, final boolean inequalityIsWeak, final boolean inequalityIsLessThan) {
    boolean result_14532009 = true;
    result_14532009 = result_14532009 && TypeChecker.getInstance().getSubtypingManager().isSubtype((SNode) subtype, (SNode) SLinkOperations.getTarget(supertype, "baseType", true), true);
    return result_14532009;
  }

  public boolean isWeak() {
    return true;
  }

  public IsApplicableStatus isApplicableSubtypeAndPattern(SNode node) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(node.getConcept().getQualifiedName(), this.getApplicableSubtypeConceptFQName());
      return new IsApplicableStatus(b, null);
    }
  }

  public IsApplicableStatus isApplicableSupertypeAndPattern(SNode node) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(node.getConcept().getQualifiedName(), this.getApplicableSupertypeConceptFQName());
      return new IsApplicableStatus(b, null);
    }
  }

  public String getApplicableSubtypeConceptFQName() {
    return "jetbrains.mps.lang.core.structure.IType";
  }

  public String getApplicableSupertypeConceptFQName() {
    return "TasksAndSyncs.structure.SharedRessourceType";
  }
}

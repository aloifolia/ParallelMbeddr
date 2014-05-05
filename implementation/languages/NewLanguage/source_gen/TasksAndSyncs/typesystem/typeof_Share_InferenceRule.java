package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.smodel.SModelUtil_new;

public class typeof_Share_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_Share_InferenceRule() {
  }

  public void applyRule(final SNode share, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    final SNode expression = SLinkOperations.getTarget(SNodeOperations.as(SNodeOperations.getParent(share), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true);
    {
      final SNode expressionType = typeCheckingContext.typeOf(expression, "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "1924594752097738954", true);
      typeCheckingContext.whenConcrete(expressionType, new Runnable() {
        public void run() {
          SNode sharedType = SConceptOperations.createNewNode("TasksAndSyncs.structure.SharedRessourceType", null);
          SLinkOperations.setTarget(sharedType, "baseType", SNodeOperations.cast(typeCheckingContext.getExpandedNode(expressionType), "com.mbeddr.core.expressions.structure.Type"), true);
          {
            SNode _nodeToCheck_1029348928467 = share;
            EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "1924594752097738941", 0, null);
            typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "1924594752097738950", true), (SNode) sharedType, _info_12389875345);
          }
        }
      }, "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "1924594752097738939", false, false);
    }
  }

  public String getApplicableConceptFQName() {
    return "TasksAndSyncs.structure.Share";
  }

  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    {
      boolean b = SModelUtil_new.isAssignableConcept(argument.getConcept().getQualifiedName(), this.getApplicableConceptFQName());
      return new IsApplicableStatus(b, null);
    }
  }

  public boolean overrides() {
    return false;
  }
}
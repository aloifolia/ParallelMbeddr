package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class checkSharedGetForAdressOperator_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public checkSharedGetForAdressOperator_NonTypesystemRule() {
  }

  public void applyRule(final SNode sharedGet, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode parent = SNodeOperations.getParent(SNodeOperations.getParent(sharedGet));
    while (SNodeOperations.isInstanceOf(parent, "com.mbeddr.core.expressions.structure.ParensExpression")) {
      parent = SNodeOperations.getParent(parent);
    }
    if (SNodeOperations.isInstanceOf(parent, "com.mbeddr.core.pointers.structure.ReferenceExpr")) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(parent, "address of value of shared ressource may not be requested", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "6553204290898717987", null, errorTarget);
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "TasksAndSyncs.structure.SharedGet";
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

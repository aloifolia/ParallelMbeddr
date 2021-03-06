package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class checkSharedSetForNestedSharedResource_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public checkSharedSetForNestedSharedResource_NonTypesystemRule() {
  }

  public void applyRule(final SNode sharedSet, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    SNode expressionType = TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(sharedSet), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true));
    if (SNodeOperations.isInstanceOf(expressionType, "TasksAndSyncs.structure.SharedType")) {
      if (Checker.typeContainsSharedElements(SLinkOperations.getTarget(SNodeOperations.cast(expressionType, "TasksAndSyncs.structure.SharedType"), "baseType", true))) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedSet, "nested shared resource overwriting not allowed", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "483189195559030275", null, errorTarget);
        }
      }
    } else if (SNodeOperations.isInstanceOf(expressionType, "com.mbeddr.core.pointers.structure.PointerType") && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(expressionType, "com.mbeddr.core.pointers.structure.PointerType"), "baseType", true), "TasksAndSyncs.structure.SharedType")) {
      if (Checker.typeContainsSharedElements(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(SNodeOperations.cast(expressionType, "com.mbeddr.core.pointers.structure.PointerType"), "baseType", true), "TasksAndSyncs.structure.SharedType"), "baseType", true))) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedSet, "nested shared resource overwriting not allowed", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "483189195559038405", null, errorTarget);
        }
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "TasksAndSyncs.structure.SharedSet";
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

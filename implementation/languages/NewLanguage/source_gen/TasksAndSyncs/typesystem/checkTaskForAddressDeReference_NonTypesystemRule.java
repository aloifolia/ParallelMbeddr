package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.smodel.SModelUtil_new;

public class checkTaskForAddressDeReference_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public checkTaskForAddressDeReference_NonTypesystemRule() {
  }

  public void applyRule(final SNode task, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Iterable<SNode> expressionsToCheck = Sequence.fromIterable(Sequence.<SNode>singleton(SLinkOperations.getTarget(task, "expression", true))).concat(ListSequence.fromList(SNodeOperations.getDescendants(SLinkOperations.getTarget(task, "expression", true), "com.mbeddr.core.expressions.structure.Expression", false, new String[]{})));

    for (SNode dereference : Sequence.fromIterable(SNodeOperations.ofConcept(expressionsToCheck, "com.mbeddr.core.pointers.structure.DerefExpr"))) {
      if (!(SNodeOperations.isInstanceOf(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(dereference, "expression", true)), "TasksAndSyncs.structure.SharedType"))) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(dereference, "only pointers to shared ressources may be dereferenced (*) in task context", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "5669061138460795729", null, errorTarget);
        }
      }
    }
    for (SNode reference : Sequence.fromIterable(SNodeOperations.ofConcept(expressionsToCheck, "com.mbeddr.core.pointers.structure.ReferenceExpr"))) {
      if (!(SNodeOperations.isInstanceOf(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(reference, "expression", true)), "TasksAndSyncs.structure.SharedType"))) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(reference, "only shared ressources may be referenced (&) in task context", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "5669061138460797309", null, errorTarget);
        }
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "TasksAndSyncs.structure.Task";
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

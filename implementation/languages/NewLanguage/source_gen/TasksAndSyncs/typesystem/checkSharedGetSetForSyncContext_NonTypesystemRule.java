package TasksAndSyncs.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.smodel.SModelUtil_new;

public class checkSharedGetSetForSyncContext_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public checkSharedGetSetForSyncContext_NonTypesystemRule() {
  }

  public void applyRule(final SNode sharedGetOrSet, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    // this rule asserts lexically whether a shared ressource that is to be set oder get is synchronized 
    // in some surrounding sync context 
    if (SNodeOperations.isInstanceOf(sharedGetOrSet, "TasksAndSyncs.structure.SharedGet") || SNodeOperations.isInstanceOf(sharedGetOrSet, "TasksAndSyncs.structure.SharedSet")) {
      SNode sharedExpr = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(sharedGetOrSet), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true);
      SNode possibleTaskContext = SNodeOperations.getAncestor(sharedExpr, "TasksAndSyncs.structure.Task", false, false);

      if (SNodeOperations.isInstanceOf(sharedExpr, "TasksAndSyncs.structure.SyncResourceRef")) {
        if ((possibleTaskContext != null) && !(ListSequence.fromList(SNodeOperations.getAncestors(SLinkOperations.getTarget(SNodeOperations.cast(sharedExpr, "TasksAndSyncs.structure.SyncResourceRef"), "syncResource", false), null, false)).contains(possibleTaskContext))) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedGetOrSet, "referenced sync resource not synchronized in surrounding task context", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "4335879941194289101", null, errorTarget);
          }
        }
      } else if (SNodeOperations.isInstanceOf(sharedExpr, "com.mbeddr.core.statements.structure.IVariableReference")) {
        SNode matchedSyncResource = null;
        for (SNode sync : Sequence.fromIterable(SNodeOperations.ofConcept(SNodeOperations.getAncestors(sharedExpr, null, false), "TasksAndSyncs.structure.SyncStatement"))) {
          if ((matchedSyncResource != null)) {
            break;
          }
          for (SNode syncResource : ListSequence.fromList(SLinkOperations.getTargets(sync, "resources", true))) {
            if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(syncResource, "expression", true), "com.mbeddr.core.statements.structure.IVariableReference") && BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SNodeOperations.cast(SLinkOperations.getTarget(syncResource, "expression", true), "com.mbeddr.core.statements.structure.IVariableReference"), "virtual_getVariable_2486081302460156153", new Object[]{}) == BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SNodeOperations.cast(sharedExpr, "com.mbeddr.core.statements.structure.IVariableReference"), "virtual_getVariable_2486081302460156153", new Object[]{})) {
              matchedSyncResource = syncResource;
              break;
            }
          }
        }
        if ((matchedSyncResource == null)) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedGetOrSet, "referred variable is not synchronized", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "4335879941194458996", null, errorTarget);
          }
        } else if ((possibleTaskContext != null) && !(ListSequence.fromList(SNodeOperations.getAncestors(matchedSyncResource, null, false)).contains(possibleTaskContext))) {
          {
            MessageTarget errorTarget = new NodeMessageTarget();
            IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedGetOrSet, "referred variable is not synchronized in surrounding task context", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "4335879941194483198", null, errorTarget);
          }
        }
      } else {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(sharedGetOrSet, "expression must be synchronized", "r:daf934de-3466-4fa8-a227-270fedb7e2f2(TasksAndSyncs.typesystem)", "5853110027233019383", null, errorTarget);
        }
      }
    }
  }

  public String getApplicableConceptFQName() {
    return "com.mbeddr.core.expressions.structure.Expression";
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

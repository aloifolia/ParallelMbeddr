package TasksAndSyncs.behavior;

/*Generated by MPS */

import com.mbeddr.core.statements.behavior.Statement_BehaviorDescriptor;
import com.mbeddr.core.statements.behavior.ILocalVarScopeProvider_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import com.mbeddr.core.statements.behavior.LocalVarScope;

public class Sync2_BehaviorDescriptor extends Statement_BehaviorDescriptor implements ILocalVarScopeProvider_BehaviorDescriptor {
  public Sync2_BehaviorDescriptor() {
  }

  public Iterable<SNode> virtual_getContainedLocalVariables_2093108837558419581(SNode thisNode) {
    return Sync2_Behavior.virtual_getContainedLocalVariables_2093108837558419581(thisNode);
  }

  public LocalVarScope virtual_getLocalVarScope_2093108837558189309(SNode thisNode, SNode context, int statementIndex) {
    return Sync2_Behavior.virtual_getLocalVarScope_2093108837558189309(thisNode, context, statementIndex);
  }

  @Override
  public String getConceptFqName() {
    return "TasksAndSyncs.structure.Sync2";
  }
}

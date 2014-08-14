package TasksAndSyncs.generator.util;

/*Generated by MPS */

import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;

public class OptimizerData {

  public List<SNode> localVariables;
  public List<SNode> arguments;
  public List<SNode> variableRefs;
  public List<SNode> syncResources;
  public List<SNode> sharedSets;
  public List<SNode> sharedGets;
  public List<SNode> functionCalls;
  public List<SNode> allVariables;
  public List<SNode> allNodes;


  public OptimizerData() {
    localVariables = new ArrayList<SNode>();
    arguments = new ArrayList<SNode>();
    variableRefs = new ArrayList<SNode>();
    syncResources = new ArrayList<SNode>();
    sharedSets = new ArrayList<SNode>();
    sharedGets = new ArrayList<SNode>();
    functionCalls = new ArrayList<SNode>();
    allVariables = new ArrayList<SNode>();
    allNodes = new ArrayList<SNode>();
  }



  public static OptimizerData getDataFromModel(SModel model, final Optimizer optimizer) {
    OptimizerData data = new OptimizerData();

    for (SNode implementationModule : ListSequence.fromList(SModelOperations.getRoots(model, "com.mbeddr.core.modules.structure.ImplementationModule"))) {
      ListSequence.fromList(data.localVariables).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "com.mbeddr.core.statements.structure.LocalVariableDeclaration", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return optimizer.isSharedType(SLinkOperations.getTarget(it, "type", true));
        }
      }));
      ListSequence.fromList(data.arguments).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "com.mbeddr.core.modules.structure.Argument", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return optimizer.isSharedType(SLinkOperations.getTarget(it, "type", true));
        }
      }));
      ListSequence.fromList(data.variableRefs).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "com.mbeddr.core.statements.structure.IVariableReference", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return optimizer.isSharedType(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(it), "com.mbeddr.core.expressions.structure.Type"));
        }
      }));
      ListSequence.fromList(data.syncResources).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "TasksAndSyncs.structure.SyncRessource", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return optimizer.isSharedType(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(it, "expression", true)), "com.mbeddr.core.expressions.structure.Type")) && (optimizer.getVariable(SLinkOperations.getTarget(it, "expression", true)) != null);
        }
      }));
      ListSequence.fromList(data.sharedSets).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "TasksAndSyncs.structure.SharedSet", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return (optimizer.getVariable(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(it), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true)) != null);
        }
      }));
      ListSequence.fromList(data.sharedGets).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "TasksAndSyncs.structure.SharedGet", false, new String[]{})).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return (optimizer.getVariable(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(it), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true)) != null);
        }
      }));
      ListSequence.fromList(data.functionCalls).addSequence(ListSequence.fromList(SNodeOperations.getDescendants(implementationModule, "com.mbeddr.core.modules.structure.FunctionCall", false, new String[]{})));
    }

    ListSequence.fromList(data.allVariables).addSequence(ListSequence.fromList(data.localVariables));
    ListSequence.fromList(data.allVariables).addSequence(ListSequence.fromList(data.arguments));
    ListSequence.fromList(data.allNodes).addSequence(ListSequence.fromList(data.allVariables));
    ListSequence.fromList(data.allNodes).addSequence(ListSequence.fromList(data.variableRefs));

    return data;
  }
}

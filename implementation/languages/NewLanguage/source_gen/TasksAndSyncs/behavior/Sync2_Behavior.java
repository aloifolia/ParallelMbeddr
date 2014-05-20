package TasksAndSyncs.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;

public class Sync2_Behavior {
  public static void init(SNode thisNode) {
  }

  public static void virtual_collectWatchableProviders_666086264355541887(SNode thisNode, List<SNode> resultList) {
    ListSequence.fromList(resultList).addSequence(ListSequence.fromList(SLinkOperations.getTargets(thisNode, "arguments", true)).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode arg) {
        return SNodeOperations.isInstanceOf(arg, "com.mbeddr.core.debug.structure.IWatchablesProvider");
      }
    }).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, "com.mbeddr.core.debug.structure.IWatchablesProvider");
      }
    }));
    ListSequence.fromList(resultList).addSequence(ListSequence.fromList(AttributeOperations.getAttributeList(thisNode, new IAttributeDescriptor.AllAttributes())).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, "com.mbeddr.core.debug.structure.IWatchablesProvider");
      }
    }));
  }
}

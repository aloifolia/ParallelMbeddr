package TasksAndSyncs.dataFlow;

/*Generated by MPS */

import jetbrains.mps.lang.dataFlow.DataFlowBuilder;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.lang.dataFlow.DataFlowBuilderContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class SyncResourceRef_DataFlow extends DataFlowBuilder {
  public SyncResourceRef_DataFlow() {
  }

  public void build(final IOperationContext operationContext, final DataFlowBuilderContext _context) {
    _context.getBuilder().emitRead(SLinkOperations.getTarget(_context.getNode(), "syncResource", false), "r:6474b750-4b62-4680-b79e-ac1d734caa1e(TasksAndSyncs.dataFlow)/6288388922743525891");
  }
}

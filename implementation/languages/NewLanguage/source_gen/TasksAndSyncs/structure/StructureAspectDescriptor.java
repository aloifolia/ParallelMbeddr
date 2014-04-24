package TasksAndSyncs.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Arrays;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.runtime.interpreted.StructureAspectInterpreted;

public class StructureAspectDescriptor implements jetbrains.mps.smodel.runtime.StructureAspectDescriptor {
  public StructureAspectDescriptor() {
  }

  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0b, conceptFqName)) {
      case 0:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.ExprBoundToStruct").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression").children(new String[]{"expr", "structExpr"}, new boolean[]{false, false}).create();
      case 1:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.Future").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression", "com.mbeddr.core.expressions.structure.IGenericDotTarget").properties("variableName").alias("run", "").create();
      case 2:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.FutureContainer").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression").children(new String[]{"task"}, new boolean[]{false}).create();
      case 3:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.FutureJoin").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression", "com.mbeddr.core.expressions.structure.IGenericDotTarget").alias("join", "").create();
      case 4:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.FutureType").super_("com.mbeddr.core.expressions.structure.Type").parents("com.mbeddr.core.expressions.structure.Type").children(new String[]{"returnType"}, new boolean[]{false}).alias("Future", "").create();
      case 5:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.Sync").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression").children(new String[]{"variables", "statements"}, new boolean[]{true, false}).alias("sync", "").create();
      case 6:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.SyncVariable").super_("jetbrains.mps.lang.core.structure.BaseConcept").parents("jetbrains.mps.lang.core.structure.BaseConcept").children(new String[]{"ref"}, new boolean[]{false}).create();
      case 7:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.Task").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression").children(new String[]{"expression"}, new boolean[]{false}).alias("|", "").create();
      case 8:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.TaskResult").super_("com.mbeddr.core.expressions.structure.Expression").parents("com.mbeddr.core.expressions.structure.Expression", "com.mbeddr.core.expressions.structure.IGenericDotTarget").alias("result", "").create();
      case 9:
        return new ConceptDescriptorBuilder("TasksAndSyncs.structure.TaskType").super_("com.mbeddr.core.expressions.structure.Type").parents("com.mbeddr.core.expressions.structure.Type").children(new String[]{"returnType"}, new boolean[]{false}).alias("Task", "").create();
      default:
        return StructureAspectInterpreted.getInstance().getDescriptor(conceptFqName);
    }
  }

  private static String[] stringSwitchCases_1htk8d_a0a0b = new String[]{"TasksAndSyncs.structure.ExprBoundToStruct", "TasksAndSyncs.structure.Future", "TasksAndSyncs.structure.FutureContainer", "TasksAndSyncs.structure.FutureJoin", "TasksAndSyncs.structure.FutureType", "TasksAndSyncs.structure.Sync", "TasksAndSyncs.structure.SyncVariable", "TasksAndSyncs.structure.Task", "TasksAndSyncs.structure.TaskResult", "TasksAndSyncs.structure.TaskType"};
}

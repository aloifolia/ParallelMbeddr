package TasksAndSyncs.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.generator.template.BaseMappingRuleContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.typesystem.inference.TypeChecker;
import TasksAndSyncs.generator.util.Analyzer;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import TasksAndSyncs.generator.util.NameGenerator;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.generator.template.WeavingMappingRuleContext;
import jetbrains.mps.generator.template.MappingScriptContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import TasksAndSyncs.generator.util.TaskDefinitionBuilder;
import jetbrains.mps.generator.template.TemplateQueryContextWithMacro;
import com.mbeddr.core.udt.behavior.SUDeclaration_Behavior;

@Generated
public class QueriesGenerated {
  public static boolean baseMappingRule_Condition_961131662868723683(final IOperationContext operationContext, final BaseMappingRuleContext _context) {
    return !(SNodeOperations.isInstanceOf(SNodeOperations.getParent(_context.getNode()), "TasksAndSyncs.structure.FutureContainer")) && !(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType"));
  }

  public static boolean baseMappingRule_Condition_482600553440859534(final IOperationContext operationContext, final BaseMappingRuleContext _context) {
    return !(SNodeOperations.isInstanceOf(SNodeOperations.getParent(_context.getNode()), "TasksAndSyncs.structure.FutureContainer")) && SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType");
  }

  public static boolean baseMappingRule_Condition_482600553442839851(final IOperationContext operationContext, final BaseMappingRuleContext _context) {
    return !(Analyzer.isLValue(SLinkOperations.getTarget(_context.getNode(), "future", true)));
  }

  public static boolean baseMappingRule_Condition_482600553443548619(final IOperationContext operationContext, final BaseMappingRuleContext _context) {
    return Analyzer.isLValue(SLinkOperations.getTarget(_context.getNode(), "future", true));
  }

  public static Object propertyMacro_GetPropertyValue_482600553440333803(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static Object propertyMacro_GetPropertyValue_7288607883539033394(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static Object propertyMacro_GetPropertyValue_4644263955273508749(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static Object propertyMacro_GetPropertyValue_4644263955273722005(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), "name");
  }

  public static Object propertyMacro_GetPropertyValue_4644263955274589810(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static Object propertyMacro_GetPropertyValue_482600553440749847(final IOperationContext operationContext, final PropertyMacroContext _context) {
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static Object referenceMacro_GetReferent_4644263955272622644(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(_context.getNode(), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType")) {
      return NameGenerator.getVoidFutureStructName();
    } else {
      return NameGenerator.getFutureStructName();
    }
  }

  public static Object referenceMacro_GetReferent_482600553440333795(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_482600553440393801(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_482600553440333852(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_8376727689346755584(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(_context.getNode(), "var", false), "name");
  }

  public static Object referenceMacro_GetReferent_8376727689346755595(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "var", false);
  }

  public static Object referenceMacro_GetReferent_6079605392881230870(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "funDecl");
  }

  public static Object referenceMacro_GetReferent_5514347295283988677(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getTaskStructName();
  }

  public static Object referenceMacro_GetReferent_3074299910028000429(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getTaskStructName();
  }

  public static Object referenceMacro_GetReferent_6843270485069604649(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getTaskStructName();
  }

  public static Object referenceMacro_GetReferent_4390787788473100423(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.FutureType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType")) {
      return NameGenerator.getVoidFutureFunctionName();
    } else {
      return NameGenerator.getFutureFunctionName();
    }
  }

  public static Object referenceMacro_GetReferent_7518664430151985692(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), "future", true)), "TasksAndSyncs.structure.FutureType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType")) {
      return NameGenerator.getVoidFutureStructName();
    } else {
      return NameGenerator.getFutureStructName();
    }
  }

  public static Object referenceMacro_GetReferent_5267241343315659466(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), "future", true)), "TasksAndSyncs.structure.FutureType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType")) {
      return NameGenerator.getVoidFutureJoinFunctionName();
    } else {
      return NameGenerator.getFutureJoinFunctionName();
    }
  }

  public static Object referenceMacro_GetReferent_7518664430151856372(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    if (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), "future", true)), "TasksAndSyncs.structure.FutureType"), "returnType", true), "com.mbeddr.core.expressions.structure.VoidType")) {
      return NameGenerator.getVoidFutureJoinFunctionName();
    } else {
      return NameGenerator.getFutureJoinFunctionName();
    }
  }

  public static Object referenceMacro_GetReferent_4390787788471112612(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getFutureResultFunctionName();
  }

  public static Object referenceMacro_GetReferent_4644263955274749574(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_4644263955274683221(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_7288607883539663801(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getFutureStructName();
  }

  public static Object referenceMacro_GetReferent_7288607883539589338(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return "fun";
  }

  public static Object referenceMacro_GetReferent_7288607883539589346(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return "args";
  }

  public static Object referenceMacro_GetReferent_7288607883539589354(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getFutureStructName();
  }

  public static Object referenceMacro_GetReferent_7288607883539589365(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getFutureStructName();
  }

  public static Object referenceMacro_GetReferent_7288607883539679450(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return NameGenerator.getTaskStructName();
  }

  public static Object referenceMacro_GetReferent_482600553440749753(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static Object referenceMacro_GetReferent_482600553440749765(final IOperationContext operationContext, final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "argsStruct");
  }

  public static SNode sourceNodeQuery_5267241343315656790(final IOperationContext operationContext, final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "future", true);
  }

  public static SNode sourceNodeQuery_482600553443548613(final IOperationContext operationContext, final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "future", true);
  }

  public static SNode sourceNodeQuery_4390787788471076060(final IOperationContext operationContext, final SourceSubstituteMacroNodeContext _context) {
    return SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(_context.getNode(), "future", true)), "TasksAndSyncs.structure.FutureType"), "returnType", true));
  }

  public static SNode sourceNodeQuery_4390787788471115504(final IOperationContext operationContext, final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "future", true);
  }

  public static SNode sourceNodeQuery_4644263955274064956(final IOperationContext operationContext, final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), "type", true);
  }

  public static Iterable<SNode> sourceNodesQuery_8376727689346755602(final IOperationContext operationContext, final SourceSubstituteMacroNodesContext _context) {
    return SNodeOperations.getDescendants(SLinkOperations.getTarget(_context.getNode(), "expression", true), "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{});
  }

  public static Iterable<SNode> sourceNodesQuery_4644263955273538232(final IOperationContext operationContext, final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SNodeOperations.getDescendants(_context.getNode(), "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{})).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return (SLinkOperations.getTarget(it, "var", false) != null);
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, "var", false);
      }
    });
  }

  public static SNode weaving_MappingRule_ContextNodeQuery_4644263955273501386(final IOperationContext operationContext, final WeavingMappingRuleContext _context) {
    return _context.getCopiedOutputNodeForInputNode(SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.modules.structure.ImplementationModule", false, false));
  }

  public static SNode weaving_MappingRule_ContextNodeQuery_4644263955274607916(final IOperationContext operationContext, final WeavingMappingRuleContext _context) {
    return _context.getCopiedOutputNodeForInputNode(SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.modules.structure.ImplementationModule", false, false));
  }

  public static SNode weaving_MappingRule_ContextNodeQuery_482600553440859523(final IOperationContext operationContext, final WeavingMappingRuleContext _context) {
    return _context.getCopiedOutputNodeForInputNode(SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.modules.structure.ImplementationModule", false, false));
  }

  public static void mappingScript_CodeBlock_6843270485077871161(final IOperationContext operationContext, final MappingScriptContext _context) {
    for (final SNode future : ListSequence.fromList(SModelOperations.getNodes(_context.getModel(), "TasksAndSyncs.structure.FutureResult"))) {
      SNodeOperations.replaceWithAnother(SNodeOperations.getParent(future), new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_7518664430153624707 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(future), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true);
              return res;
            }
          }.invoke();
          SNode node_7518664430153624706 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("TasksAndSyncs.structure.FutureResultContainer", null);
              SLinkOperations.setTarget(res, "future", node_7518664430153624707, true);
              return res;
            }
          }.invoke();
          return node_7518664430153624706;
        }
      }.invoke());
    }

    for (final SNode future : ListSequence.fromList(SModelOperations.getNodes(_context.getModel(), "TasksAndSyncs.structure.FutureJoin"))) {
      SNodeOperations.replaceWithAnother(SNodeOperations.getParent(future), new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_7518664430153624730 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(future), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true);
              return res;
            }
          }.invoke();
          SNode node_7518664430153624729 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("TasksAndSyncs.structure.FutureJoinContainer", null);
              SLinkOperations.setTarget(res, "future", node_7518664430153624730, true);
              return res;
            }
          }.invoke();
          return node_7518664430153624729;
        }
      }.invoke());
    }

    for (final SNode future : ListSequence.fromList(SModelOperations.getNodes(_context.getModel(), "TasksAndSyncs.structure.Future"))) {
      SNodeOperations.replaceWithAnother(SNodeOperations.getParent(future), new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_7518664430153624753 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(future), "com.mbeddr.core.expressions.structure.GenericDotExpression"), "expression", true);
              return res;
            }
          }.invoke();
          SNode node_7518664430153624752 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("TasksAndSyncs.structure.FutureContainer", null);
              SLinkOperations.setTarget(res, "task", node_7518664430153624753, true);
              return res;
            }
          }.invoke();
          return node_7518664430153624752;
        }
      }.invoke());
    }
  }

  public static void mappingScript_CodeBlock_6340335959758487422(final IOperationContext operationContext, final MappingScriptContext _context) {
    final SNode genericDeclarationsModule = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        SNode node_7518664430153624769 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.ImplementationModule", null);
            SPropertyOperations.set(res, "name", (NameGenerator.getGenericTaskModuleName()));
            return res;
          }
        }.invoke();
        return node_7518664430153624769;
      }
    }.invoke();

    for (SNode module : ListSequence.fromList(SModelOperations.getNodes(_context.getModel(), "com.mbeddr.core.modules.structure.Module"))) {
      ListSequence.fromList(SLinkOperations.getTargets(module, "imports", true)).addElement(new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          SNode node_7518664430153624786 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.ModuleImport", null);
              SLinkOperations.setTarget(res, "module", genericDeclarationsModule, false);
              return res;
            }
          }.invoke();
          return node_7518664430153624786;
        }
      }.invoke());
    }

    SModelOperations.addRootNode(_context.getModel(), genericDeclarationsModule);

    ListSequence.fromList(SLinkOperations.getTargets(ListSequence.fromList(SLinkOperations.getTargets(ListSequence.fromList(SModelOperations.getRoots(_context.getModel(), "com.mbeddr.core.buildconfig.structure.BuildConfiguration")).first(), "binaries", true)).first(), "referencedModules", true)).addElement(new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        SNode node_7518664430153624810 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.buildconfig.structure.ModuleRef", null);
            SLinkOperations.setTarget(res, "module", genericDeclarationsModule, false);
            return res;
          }
        }.invoke();
        return node_7518664430153624810;
      }
    }.invoke());

    SNode voidPointerType = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_7518664430153624821 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("jetbrains.mps.baseLanguage.structure.VoidType", null);
            return res;
          }
        }.invoke();
        SNode node_7518664430153624819 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_7518664430153624821, true);
            return res;
          }
        }.invoke();
        return node_7518664430153624819;
      }
    }.invoke();

    SNode taskStruct = TaskDefinitionBuilder.buildTaskStruct(false, NameGenerator.getTaskStructName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(taskStruct);

    SNode futureStruct = TaskDefinitionBuilder.buildFutureStruct(false, NameGenerator.getFutureStructName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(futureStruct);

    SNode voidFutureStruct = TaskDefinitionBuilder.buildFutureStruct(true, NameGenerator.getVoidFutureStructName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(voidFutureStruct);

    SNode futureFunction = TaskDefinitionBuilder.buildFutureFunction(taskStruct, futureStruct, NameGenerator.getFutureFunctionName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(futureFunction);

    SNode voidFutureFunction = TaskDefinitionBuilder.buildFutureFunction(taskStruct, voidFutureStruct, NameGenerator.getVoidFutureFunctionName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(voidFutureFunction);

    SNode futureJoinFunction = TaskDefinitionBuilder.buildFutureJoinFunction(futureStruct, NameGenerator.getFutureJoinFunctionName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(futureJoinFunction);

    SNode voidFutureJoinFunction = TaskDefinitionBuilder.buildFutureJoinFunction(voidFutureStruct, NameGenerator.getVoidFutureJoinFunctionName());
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(voidFutureJoinFunction);

    SNode futureResultFunction = TaskDefinitionBuilder.buildFutureResultFunction(futureStruct);
    ListSequence.fromList(SLinkOperations.getTargets(genericDeclarationsModule, "contents", true)).addElement(futureResultFunction);
  }

  public static SNode insertMacro_Query_3074299910025853496(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    SNode exprToBind = SLinkOperations.getTarget(_context.getNode(), "expr", true);
    final SNode structExpression = SLinkOperations.getTarget(_context.getNode(), "structExpr", true);
    final SNode structDeclaration = SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(structExpression), "com.mbeddr.core.udt.structure.StructType"), "struct", false);
    for (final SNode localVarRef : ListSequence.fromList(SNodeOperations.getDescendants(exprToBind, "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{}))) {
      SNodeOperations.replaceWithAnother(localVarRef, new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_7518664430153624973 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = structExpression;
              return res;
            }
          }.invoke();
          final SNode node_7518664430153624971 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.ParensExpression", null);
              SLinkOperations.setTarget(res, "expression", node_7518664430153624973, true);
              return res;
            }
          }.invoke();
          final SNode node_7518664430153624976 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.GenericMemberRef", null);
              SLinkOperations.setTarget(res, "member", ListSequence.fromList(SUDeclaration_Behavior.call_members_9101132143318613823(structDeclaration)).findFirst(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SPropertyOperations.hasValue(SNodeOperations.cast(it, "com.mbeddr.core.udt.structure.Member"), "name", SPropertyOperations.getString(SLinkOperations.getTarget(localVarRef, "var", false), "name"));
                }
              }), false);
              return res;
            }
          }.invoke();
          SNode node_7518664430153624969 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.GenericDotExpression", null);
              SLinkOperations.setTarget(res, "expression", node_7518664430153624971, true);
              SLinkOperations.setTarget(res, "target", node_7518664430153624976, true);
              return res;
            }
          }.invoke();
          return node_7518664430153624969;
        }
      }.invoke());
    }

    return exprToBind;
  }

  public static SNode insertMacro_Query_4390787788473864341(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SLinkOperations.getTarget(_context.getNode(), "task", true);
  }

  public static SNode insertMacro_Query_5514347295282597991(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true));
  }

  public static SNode insertMacro_Query_5514347295282624061(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true), "com.mbeddr.core.pointers.structure.PointerType"), "baseType", true));
  }

  public static SNode insertMacro_Query_5514347295283030968(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true));
  }

  public static SNode insertMacro_Query_3074299910027075177(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SLinkOperations.getTarget(_context.getNode(), "expression", true);
  }

  public static SNode insertMacro_Query_482600553440749830(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    return SLinkOperations.getTarget(_context.getNode(), "expression", true);
  }
}

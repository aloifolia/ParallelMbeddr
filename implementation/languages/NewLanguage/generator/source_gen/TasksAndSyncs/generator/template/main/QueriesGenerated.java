package TasksAndSyncs.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.generator.template.PropertyMacroContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.generator.template.WeavingMappingRuleContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.generator.template.MappingScriptContext;
import java.util.List;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.generator.template.TemplateQueryContextWithMacro;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.typesystem.inference.TypeChecker;
import com.mbeddr.core.udt.behavior.SUDeclaration_Behavior;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_2744793885340541565(final IOperationContext operationContext, final PropertyMacroContext _context) {
    System.out.println("woven!");
    return _context.createUniqueName(_context.getTemplateValue(), null);
  }

  public static SNode weaving_MappingRule_ContextNodeQuery_2744793885335880553(final IOperationContext operationContext, final WeavingMappingRuleContext _context) {
    return SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.modules.structure.ImplementationModule", false, false);
  }

  public static void mappingScript_CodeBlock_8801852084532547317(final IOperationContext operationContext, final MappingScriptContext _context) {
    List<SNode> tasks = SModelOperations.getNodes(_context.getModel(), "TasksAndSyncs.structure.Future");
    for (SNode task : ListSequence.fromList(tasks)) {
      // TODO: remove node 
      final SNode threadVarName = new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          SNode node_3604883996550333593 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("jetbrains.mps.baseLanguage.structure.StringLiteral", null);
              SPropertyOperations.set(res, "value", (_context.createUniqueName("task_", null)));
              return res;
            }
          }.invoke();
          return node_3604883996550333593;
        }
      }.invoke();
      SNode embeddingStatement = SNodeOperations.getAncestor(task, "com.mbeddr.core.statements.structure.Statement", false, false);
      SNode threadDeclaration = new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_3604883996550333613 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AbritraryTextItem", null);
              SPropertyOperations.set(res, "text", ("pthread_t"));
              return res;
            }
          }.invoke();
          final SNode node_3604883996550333612 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ArbitraryTextType", null);
              SPropertyOperations.set(res, "requiredStdHeader", ("<pthread.h>"));
              ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550333613);
              return res;
            }
          }.invoke();
          SNode node_3604883996550333611 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVariableDeclaration", null);
              SPropertyOperations.set(res, "name", (SPropertyOperations.getString(threadVarName, "value")));
              SLinkOperations.setTarget(res, "type", node_3604883996550333612, true);
              return res;
            }
          }.invoke();
          return node_3604883996550333611;
        }
      }.invoke();

      SNodeOperations.insertPrevSiblingChild(embeddingStatement, threadDeclaration);

      SPropertyOperations.set(task, "variableName", SPropertyOperations.getString(threadVarName, "value"));
    }
  }

  public static SNode insertMacro_Query_2744793885329335734(final IOperationContext operationContext, final TemplateQueryContextWithMacro _context) {
    //  some preparation 
    SNode embeddingStatement = SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.statements.structure.Statement", false, false);
    final SNode module = SNodeOperations.getAncestor(_context.getNode(), "com.mbeddr.core.modules.structure.ImplementationModule", false, false);
    final SNode voidPointerType = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333663 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.VoidType", null);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333661 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_3604883996550333663, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333661;
      }
    }.invoke();
    // build a struct declaration for the variable references 
    final SNode argsStructDeclaration = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructDeclaration", null);
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(argsStructDeclaration);
    SPropertyOperations.set(argsStructDeclaration, "name", _context.createUniqueName("Args", module));
    for (SNode localVariableDeclaration : ListSequence.fromList(SNodeOperations.getDescendants(_context.getNode(), "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{})).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return (SLinkOperations.getTarget(it, "var", false) != null);
      }
    }).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, "var", false);
      }
    })) {
      SNode member = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.Member", null);
      SPropertyOperations.set(member, "name", SPropertyOperations.getString(localVariableDeclaration, "name"));
      SLinkOperations.setTarget(member, "type", SNodeOperations.copyNode(SLinkOperations.getTarget(localVariableDeclaration, "type", true)), true);
      ListSequence.fromList(SLinkOperations.getTargets(argsStructDeclaration, "members", true)).addElement(member);
    }
    // build a function declaration for the parallelized expression 
    final SNode functionDeclaration = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.Function", null);
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(functionDeclaration);
    SPropertyOperations.set(functionDeclaration, "name", _context.createUniqueName("par", module));
    SLinkOperations.setTarget(functionDeclaration, "type", new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333758 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.VoidType", null);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333756 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_3604883996550333758, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333756;
      }
    }.invoke(), true);
    ListSequence.fromList(SLinkOperations.getTargets(functionDeclaration, "arguments", true)).addElement(new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333776 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(voidPointerType);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333770 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.Argument", null);
            SPropertyOperations.set(res, "name", (_context.createUniqueName("voidArgs", null)));
            SLinkOperations.setTarget(res, "type", node_3604883996550333776, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333770;
      }
    }.invoke());
    // add statement: T* args = (T*) argsVoid; 
    final SNode structPointerType = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333789 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructType", null);
            SLinkOperations.setTarget(res, "struct", argsStructDeclaration, false);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333787 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_3604883996550333789, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333787;
      }
    }.invoke();
    final SNode argsCastDecl = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333802 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(structPointerType);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333809 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(structPointerType);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333814 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.ArgumentRef", null);
            SLinkOperations.setTarget(res, "arg", ListSequence.fromList(SLinkOperations.getTargets(functionDeclaration, "arguments", true)).first(), false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333807 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.CastExpression", null);
            SLinkOperations.setTarget(res, "targetType", node_3604883996550333809, true);
            SLinkOperations.setTarget(res, "expr", node_3604883996550333814, true);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333797 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVariableDeclaration", null);
            SPropertyOperations.set(res, "name", (_context.createUniqueName("args", null)));
            SLinkOperations.setTarget(res, "type", node_3604883996550333802, true);
            SLinkOperations.setTarget(res, "init", node_3604883996550333807, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333797;
      }
    }.invoke();
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(functionDeclaration, "body", true), "statements", true)).addElement(argsCastDecl);
    // add statement: T* result = malloc(sizeof T);  
    final SNode resultDeclaration = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333846 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333844 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_3604883996550333846, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333858 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AbritraryTextItem", null);
            SPropertyOperations.set(res, "text", ("malloc(sizeof "));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333864 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(SLinkOperations.getTarget(SNodeOperations.cast(TypeChecker.getInstance().getTypeOf(_context.getNode()), "TasksAndSyncs.structure.TaskType"), "returnType", true));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333862 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AnyNodeItem", null);
            SLinkOperations.setTarget(res, "theNode", node_3604883996550333864, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333873 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AbritraryTextItem", null);
            SPropertyOperations.set(res, "text", (")"));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333855 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ArbitraryTextExpression", null);
            SPropertyOperations.set(res, "requiredStdHeader", ("<stdlib.h>"));
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550333858);
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550333862);
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550333873);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333838 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVariableDeclaration", null);
            SPropertyOperations.set(res, "name", (_context.createUniqueName("result", null)));
            SLinkOperations.setTarget(res, "type", node_3604883996550333844, true);
            SLinkOperations.setTarget(res, "init", node_3604883996550333855, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333838;
      }
    }.invoke();
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(functionDeclaration, "body", true), "statements", true)).addElement(resultDeclaration);
    // add statement: *result = e;  
    SNode resultAssignment = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333898 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
            SLinkOperations.setTarget(res, "var", resultDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333896 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.DerefExpr", null);
            SLinkOperations.setTarget(res, "expression", node_3604883996550333898, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333902 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SLinkOperations.getTarget(_context.getNode(), "expression", true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333894 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.AssignmentExpr", null);
            SLinkOperations.setTarget(res, "left", node_3604883996550333896, true);
            SLinkOperations.setTarget(res, "right", node_3604883996550333902, true);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333893 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ExpressionStatement", null);
            SLinkOperations.setTarget(res, "expr", node_3604883996550333894, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333893;
      }
    }.invoke();
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(functionDeclaration, "body", true), "statements", true)).addElement(resultAssignment);
    // add statement: return result; 
    ListSequence.fromList(SLinkOperations.getTargets(SLinkOperations.getTarget(functionDeclaration, "body", true), "statements", true)).addElement(new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333929 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
            SLinkOperations.setTarget(res, "var", resultDeclaration, false);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333927 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.ReturnStatement", null);
            SLinkOperations.setTarget(res, "expression", node_3604883996550333929, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333927;
      }
    }.invoke());
    // build a struct type for the return value: struct Task { void* args; (void* -> void*) fun; } 
    final SNode taskStructDeclaration = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333948 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructType", null);
            SLinkOperations.setTarget(res, "struct", argsStructDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333945 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.Member", null);
            SPropertyOperations.set(res, "name", ("args"));
            SLinkOperations.setTarget(res, "type", node_3604883996550333948, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333958 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(voidPointerType);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333963 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SNodeOperations.copyNode(voidPointerType);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333956 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionRefType", null);
            SLinkOperations.setTarget(res, "returnType", node_3604883996550333958, true);
            ListSequence.fromList(SLinkOperations.getTargets(res, "argTypes", true)).addElement(node_3604883996550333963);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333953 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.Member", null);
            SPropertyOperations.set(res, "name", ("fun"));
            SLinkOperations.setTarget(res, "type", node_3604883996550333956, true);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333939 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructDeclaration", null);
            SPropertyOperations.set(res, "name", (_context.createUniqueName("Task", module)));
            ListSequence.fromList(SLinkOperations.getTargets(res, "members", true)).addElement(node_3604883996550333945);
            ListSequence.fromList(SLinkOperations.getTargets(res, "members", true)).addElement(node_3604883996550333953);
            return res;
          }
        }.invoke();
        return node_3604883996550333939;
      }
    }.invoke();
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(taskStructDeclaration);

    // return an instance of above struct initialized with a pointer to the created function 
    // and a heap-managed struct of the variable references 

    // add statement: Task* task = malloc(sizeof Task); 
    final SNode taskVarDeclaration = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550333996 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructType", null);
            SLinkOperations.setTarget(res, "struct", taskStructDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550333994 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.PointerType", null);
            SLinkOperations.setTarget(res, "baseType", node_3604883996550333996, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334003 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AbritraryTextItem", null);
            SPropertyOperations.set(res, "text", ("malloc(sizeof "));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334009 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructType", null);
            SLinkOperations.setTarget(res, "struct", taskStructDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334007 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AnyNodeItem", null);
            SLinkOperations.setTarget(res, "theNode", node_3604883996550334009, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334013 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.AbritraryTextItem", null);
            SPropertyOperations.set(res, "text", (")"));
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334000 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ArbitraryTextExpression", null);
            SPropertyOperations.set(res, "requiredStdHeader", ("<stdlib.h>"));
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550334003);
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550334007);
            ListSequence.fromList(SLinkOperations.getTargets(res, "items", true)).addElement(node_3604883996550334013);
            return res;
          }
        }.invoke();
        SNode node_3604883996550333989 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVariableDeclaration", null);
            SPropertyOperations.set(res, "name", (_context.createUniqueName("task", null)));
            SLinkOperations.setTarget(res, "type", node_3604883996550333994, true);
            SLinkOperations.setTarget(res, "init", node_3604883996550334000, true);
            return res;
          }
        }.invoke();
        return node_3604883996550333989;
      }
    }.invoke();
    SNodeOperations.insertPrevSiblingChild(embeddingStatement, taskVarDeclaration);
    // add statements for each accessed variable: task.args.varI = varI 
    for (final SNode localVarRef : ListSequence.fromList(SNodeOperations.getDescendants(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(resultAssignment, "expr", true), "com.mbeddr.core.expressions.structure.AssignmentExpr"), "right", true), "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{}))) {
      SNode assignArgument = new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_3604883996550334048 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.GenericMemberRef", null);
              SLinkOperations.setTarget(res, "member", ListSequence.fromList(SUDeclaration_Behavior.call_members_9101132143318613823(argsStructDeclaration)).findFirst(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SPropertyOperations.hasValue(SNodeOperations.cast(it, "com.mbeddr.core.udt.structure.Member"), "name", SPropertyOperations.getString(SLinkOperations.getTarget(localVarRef, "var", false), "name"));
                }
              }), false);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334074 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.GenericMemberRef", null);
              SLinkOperations.setTarget(res, "member", ListSequence.fromList(SUDeclaration_Behavior.call_members_9101132143318613823(taskStructDeclaration)).first(), false);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334082 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
              SLinkOperations.setTarget(res, "var", taskVarDeclaration, false);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334072 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.GenericDotExpression", null);
              SLinkOperations.setTarget(res, "target", node_3604883996550334074, true);
              SLinkOperations.setTarget(res, "expression", node_3604883996550334082, true);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334046 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.GenericDotExpression", null);
              SLinkOperations.setTarget(res, "target", node_3604883996550334048, true);
              SLinkOperations.setTarget(res, "expression", node_3604883996550334072, true);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334086 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SNodeOperations.copyNode(localVarRef);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334045 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.AssignmentExpr", null);
              SLinkOperations.setTarget(res, "left", node_3604883996550334046, true);
              SLinkOperations.setTarget(res, "right", node_3604883996550334086, true);
              return res;
            }
          }.invoke();
          SNode node_3604883996550334043 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ExpressionStatement", null);
              SLinkOperations.setTarget(res, "expr", node_3604883996550334045, true);
              return res;
            }
          }.invoke();
          return node_3604883996550334043;
        }
      }.invoke();
      SNodeOperations.insertPrevSiblingChild(embeddingStatement, assignArgument);
    }
    // add statement: task.fun = &[generated function] 
    SNode assignFunctionPointer = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        final SNode node_3604883996550334109 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.GenericMemberRef", null);
            SLinkOperations.setTarget(res, "member", ListSequence.fromList(SUDeclaration_Behavior.call_members_9101132143318613823(taskStructDeclaration)).last(), false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334117 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
            SLinkOperations.setTarget(res, "var", taskVarDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334107 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.GenericDotExpression", null);
            SLinkOperations.setTarget(res, "target", node_3604883996550334109, true);
            SLinkOperations.setTarget(res, "expression", node_3604883996550334117, true);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334121 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionRefExpr", null);
            SLinkOperations.setTarget(res, "function", functionDeclaration, false);
            return res;
          }
        }.invoke();
        final SNode node_3604883996550334105 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.AssignmentExpr", null);
            SLinkOperations.setTarget(res, "left", node_3604883996550334107, true);
            SLinkOperations.setTarget(res, "right", node_3604883996550334121, true);
            return res;
          }
        }.invoke();
        SNode node_3604883996550334103 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.ExpressionStatement", null);
            SLinkOperations.setTarget(res, "expr", node_3604883996550334105, true);
            return res;
          }
        }.invoke();
        return node_3604883996550334103;
      }
    }.invoke();
    SNodeOperations.insertPrevSiblingChild(embeddingStatement, assignFunctionPointer);

    // replace all variables v in the expression by args.v => re-bind them 
    for (final SNode localVarRef : ListSequence.fromList(SNodeOperations.getDescendants(SLinkOperations.getTarget(SNodeOperations.cast(SLinkOperations.getTarget(resultAssignment, "expr", true), "com.mbeddr.core.expressions.structure.AssignmentExpr"), "right", true), "com.mbeddr.core.statements.structure.LocalVarRef", false, new String[]{}))) {
      SNodeOperations.replaceWithAnother(localVarRef, new _FunctionTypes._return_P0_E0<SNode>() {
        public SNode invoke() {
          final SNode node_3604883996550334153 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
              SLinkOperations.setTarget(res, "var", argsCastDecl, false);
              return res;
            }
          }.invoke();
          final SNode node_3604883996550334157 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.GenericMemberRef", null);
              SLinkOperations.setTarget(res, "member", ListSequence.fromList(SUDeclaration_Behavior.call_members_9101132143318613823(argsStructDeclaration)).findFirst(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SPropertyOperations.hasValue(SNodeOperations.cast(it, "com.mbeddr.core.udt.structure.Member"), "name", SPropertyOperations.getString(SLinkOperations.getTarget(localVarRef, "var", false), "name"));
                }
              }), false);
              return res;
            }
          }.invoke();
          SNode node_3604883996550334151 = new _FunctionTypes._return_P0_E0<SNode>() {
            public SNode invoke() {
              SNode res = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.GenericDotExpression", null);
              SLinkOperations.setTarget(res, "expression", node_3604883996550334153, true);
              SLinkOperations.setTarget(res, "target", node_3604883996550334157, true);
              return res;
            }
          }.invoke();
          return node_3604883996550334151;
        }
      }.invoke());
    }

    // return the heap-managed variable of type struct Task 
    SNode temp = new _FunctionTypes._return_P0_E0<SNode>() {
      public SNode invoke() {
        SNode node_3604883996550334188 = new _FunctionTypes._return_P0_E0<SNode>() {
          public SNode invoke() {
            SNode res = SConceptOperations.createNewNode("com.mbeddr.core.statements.structure.LocalVarRef", null);
            SLinkOperations.setTarget(res, "var", taskVarDeclaration, false);
            return res;
          }
        }.invoke();
        return node_3604883996550334188;
      }
    }.invoke();

    return temp;
  }
}

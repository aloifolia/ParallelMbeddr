<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:76835539-13f7-4494-b3b8-3c28defb066e(TaskAndSyncTests2.Test@tests)">
  <persistence version="8" />
  <language namespace="f61473f9-130f-42f6-b98d-6c438812c2f6(jetbrains.mps.baseLanguage.unitTest)" />
  <language namespace="8585453e-6bfb-4d80-98de-b16074f1d86c(jetbrains.mps.lang.test)" />
  <language namespace="023e30f7-586d-416b-97aa-7d26dae53e75(TasksAndSyncs)" />
  <language namespace="6d11763d-483d-4b2b-8efc-09336c1b0001(com.mbeddr.core.modules)" />
  <language namespace="a9d69647-0840-491e-bf39-2eb0805d2011(com.mbeddr.core.statements)" />
  <language namespace="61c69711-ed61-4850-81d9-7714ff227fb0(com.mbeddr.core.expressions)" />
  <import index="tp5g" modelUID="r:00000000-0000-4000-0000-011c89590388(jetbrains.mps.lang.test.structure)" version="40" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="6i3o" modelUID="r:af54e311-659f-4265-b558-862058cfed70(TasksAndSyncs.structure)" version="29" implicit="yes" />
  <root type="tp5g.NodesTestCase" typeId="tp5g.1216913645126" id="2417420597978531000" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="getExpressionIsSynced" />
    <node role="nodesToCheck" roleId="tp5g.1217501822150" type="tp5g.TestNode" typeId="tp5g.1216989428737" id="2417420597978531109" nodeInfo="ng">
      <node role="nodeToCheck" roleId="tp5g.1216989461394" type=".com.mbeddr.core.modules.structure.Function" id="2417420597978531111" nodeInfo="ng">
        <property name="name" value="f" />
        <node role="type" type=".com.mbeddr.core.expressions.structure.VoidType" id="2417420597978531112" nodeInfo="ng">
          <property name="volatile" value="false" />
          <property name="const" value="false" />
        </node>
        <node role="body" type=".com.mbeddr.core.statements.structure.StatementList" id="2417420597978531113" nodeInfo="ng">
          <node role="statements" type=".com.mbeddr.core.statements.structure.LocalVariableDeclaration" id="2417420597978531218" nodeInfo="ng">
            <property name="name" value="i" />
            <node role="type" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="2417420597978531214" nodeInfo="ng">
              <property name="volatile" value="false" />
              <property name="const" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type=".com.mbeddr.core.expressions.structure.Int32tType" id="2417420597978531265" nodeInfo="ng">
                <property name="volatile" value="false" />
                <property name="const" value="false" />
              </node>
            </node>
          </node>
          <node role="statements" type=".com.mbeddr.core.statements.structure.ExpressionStatement" id="2417420597978531352" nodeInfo="ng">
            <node role="expr" type=".com.mbeddr.core.expressions.structure.GenericDotExpression" id="2417420597978531437" nodeInfo="ng">
              <node role="target" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="2417420597978531491" nodeInfo="ng">
                <node role="smodelAttribute" roleId="tpck.5169995583184591170" type="tp5g.NodeOperationsContainer" typeId="tp5g.1215603922101" id="2417420597978531612" nodeInfo="ng">
                  <node role="nodeOperations" roleId="tp5g.1215604436604" type="tp5g.NodeErrorCheckOperation" typeId="tp5g.1215507671101" id="2417420597978531613" nodeInfo="ng" />
                </node>
              </node>
              <node role="expression" type=".com.mbeddr.core.statements.structure.LocalVarRef" id="2417420597978531351" nodeInfo="ng">
                <link role="var" targetNodeId="2417420597978531218" resolveInfo="i" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type="tp5g.TestInfo" typeId="tp5g.5097124989038916362" id="2417420597978547193" nodeInfo="ng">
    <property name="projectPath" nameId="tp5g.5097124989038916363" value="${ParallelMbeddrHome}" />
  </root>
</model>


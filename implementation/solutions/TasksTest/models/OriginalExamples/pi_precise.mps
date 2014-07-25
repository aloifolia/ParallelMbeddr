<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:46ea03b3-2d9a-4f0e-80d8-1a481612c10a(OriginalExamples.pi_precise)">
  <persistence version="8" />
  <language namespace="023e30f7-586d-416b-97aa-7d26dae53e75(parallelization)" />
  <devkit namespace="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  <import index="c4fa" modelUID="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" version="9" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="yq40" modelUID="r:152b3fc0-83a1-4bab-a8cd-565eb8483785(com.mbeddr.core.pointers.structure)" version="5" implicit="yes" />
  <import index="mj1l" modelUID="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" version="33" implicit="yes" />
  <import index="clbe" modelUID="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" version="13" implicit="yes" />
  <import index="x27k" modelUID="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" version="9" implicit="yes" />
  <import index="51wr" modelUID="r:b31f1c3c-99aa-4f1e-a329-cba27efb1a6b(com.mbeddr.core.buildconfig.structure)" version="1" implicit="yes" />
  <import index="vs0r" modelUID="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" version="25" implicit="yes" />
  <import index="k146" modelUID="r:5209fc71-bade-45c9-9079-f2d474f0d6ca(com.mbeddr.core.util.structure)" version="21" implicit="yes" />
  <root type="x27k.ImplementationModule" typeId="x27k.6437088627575722830" id="8001979070698675409" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="pi" />
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700595406" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BLOCKSIZE" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700598874" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="1000000" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070725337628" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BLOCKCOUNT" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070725337629" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="6" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700482072" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="THRESHOLD" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.MultiExpression" typeId="mj1l.5763383285156373020" id="8001979070725507732" nodeInfo="ng">
        <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070725527213" nodeInfo="ng">
          <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070725337628" resolveInfo="BLOCKCOUNT" />
        </node>
        <node role="left" roleId="mj1l.8860443239512128064" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070725488252" nodeInfo="ng">
          <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700595406" resolveInfo="BLOCKSIZE" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070699524965" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PRECISION" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699536767" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="64" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700256782" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BASE" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700260549" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="10" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700122480" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PI160" />
      <node role="value" roleId="x27k.3376775282622233992" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070700125750" nodeInfo="ng">
        <property name="value" nameId="yq40.6113173064526131578" value="3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700126907" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403011008116_26" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070698721571" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904699014_5" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070698675534" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070698675536" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699551830" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699551829" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698927864" resolveInfo="mpf_set_default_prec" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070699552958" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070699524965" resolveInfo="PRECISION" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700436039" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700133480" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pi160" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700133479" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700218047" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700218046" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700212684" resolveInfo="mpf_init_set_str" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700243206" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700133480" resolveInfo="pi160" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.UnsafeCastExpression" typeId="mj1l.7664133259366168728" id="8001979070700312166" nodeInfo="ng">
              <node role="expr" roleId="mj1l.7664133259366168729" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700302619" nodeInfo="ng">
                <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700122480" resolveInfo="PI160" />
              </node>
              <node role="targetType" roleId="mj1l.7664133259366168730" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700318248" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700315196" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700260992" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700256782" resolveInfo="BASE" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070699630867" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070699619246" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="result" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699619247" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699619242" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699619243" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699068757" resolveInfo="mpf_init_set_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699623224" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699619246" resolveInfo="result" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699619245" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070740936713" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070740936921" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070740960293" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070740937099" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070740936715" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070740938932" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070740938931" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698676917" resolveInfo="calcPiBlock" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740939360" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699619246" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740948172" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070740936921" resolveInfo="i" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070740952078" nodeInfo="ng">
                  <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070740955937" nodeInfo="ng">
                    <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700595406" resolveInfo="BLOCKSIZE" />
                  </node>
                  <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740948224" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070740936921" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070740937304" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070740939804" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482072" resolveInfo="THRESHOLD" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740937225" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070740936921" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.DirectPlusAssignmentExpression" typeId="mj1l.3820836583575227340" id="8001979070740945434" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070740946583" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700595406" resolveInfo="BLOCKSIZE" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740942002" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070740936921" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700393885" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700393886" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700332656" resolveInfo="calcAndPrintError" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700393887" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700133480" resolveInfo="pi160" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700397936" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699619246" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070740935918" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699582988" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070699582989" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070699582990" nodeInfo="ng">
              <property name="value" nameId="yq40.6113173064526131578" value="pi(iterations = %d, precision = %d) = \n" />
            </node>
            <node role="arguments" roleId="c4fa.3108382027639948855" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070740930056" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482072" resolveInfo="THRESHOLD" />
            </node>
            <node role="arguments" roleId="c4fa.3108382027639948855" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070699582992" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070699524965" resolveInfo="PRECISION" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699582993" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699582994" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699009916" resolveInfo="mpf_out_str" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="8001979070699582995" nodeInfo="ng">
              <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;stdio.h&gt;" />
              <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070699582996" nodeInfo="ng">
                <property name="text" nameId="c4fa.3830958861296879114" value="stdout" />
              </node>
              <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070699582997" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699582998" nodeInfo="ng">
                  <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070699011325" resolveInfo="FILE" />
                </node>
              </node>
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699582999" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="10" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699583000" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740932821" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699619246" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699583002" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070699583003" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070699583004" nodeInfo="ng">
              <property name="value" nameId="yq40.6113173064526131578" value="\n\n" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700102509" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070698675544" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070698675545" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="0" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070698675538" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698675539" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argc" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070698675540" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698675541" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argv" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070698675542" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.StringType" typeId="yq40.6113173064528067332" id="8001979070698675543" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700321744" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403011396717_28" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700332656" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcAndPrintError" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700332658" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700367907" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="error" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700367908" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700367909" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700367910" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698925654" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700367911" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700367907" resolveInfo="error" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700367912" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700367913" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699656892" resolveInfo="mpf_sub" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700367914" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700367907" resolveInfo="error" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700368014" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700336305" resolveInfo="correctValue" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700371218" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700348764" resolveInfo="approxedValue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700332659" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700374495" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070700374496" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070700374497" nodeInfo="ng">
              <property name="value" nameId="yq40.6113173064526131578" value="error = \n" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700374498" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700374499" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699009916" resolveInfo="mpf_out_str" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="8001979070700374500" nodeInfo="ng">
              <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;stdio.h&gt;" />
              <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070700374501" nodeInfo="ng">
                <property name="text" nameId="c4fa.3830958861296879114" value="stdout" />
              </node>
              <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700374502" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700374503" nodeInfo="ng">
                  <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070699011325" resolveInfo="FILE" />
                </node>
              </node>
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700374504" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="10" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700374505" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700374506" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700367907" resolveInfo="error" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700374507" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070700374508" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070700374509" nodeInfo="ng">
              <property name="value" nameId="yq40.6113173064526131578" value="\n\n" />
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700328978" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700336305" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="correctValue" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700336304" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700348764" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="approxedValue" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700348763" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070699572495" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403009714228_20" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070699577811" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcWithThreshold" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070699577813" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699582983" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699582984" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698676917" resolveInfo="calcPiBlock" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699584079" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699580426" resolveInfo="result" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699582986" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699589532" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699580367" resolveInfo="threshold" />
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699575166" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699580426" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699580425" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699580367" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="threshold" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070699580366" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070698675781" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904297826_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070698676917" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiBlock" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070698676919" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070699372656" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="piItem" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699372655" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699401626" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699401625" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698925654" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699403914" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699372656" resolveInfo="piItem" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070740731707" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070698691282" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070698691312" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070699079677" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070698691374" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070698677488" resolveInfo="start" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070698691284" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699450014" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699034776" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698679401" resolveInfo="calcPiItem" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699411071" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699372656" resolveInfo="piItem" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699036942" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070698691312" resolveInfo="i" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699032691" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699032690" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698971191" resolveInfo="mpf_add" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699361045" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699327683" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699368068" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699327683" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699456386" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699372656" resolveInfo="piItem" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070698691408" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070698691457" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070698677568" resolveInfo="end" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070698691394" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070698691312" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070698691515" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070698691607" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070698691312" resolveInfo="i" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699327683" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699327682" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698677488" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="start" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070699081938" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698677568" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="end" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070699084241" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699321298" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070698678317" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904405744_3" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070698679401" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiItem" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <property name="inline" nameId="x27k.5679441017213716505" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070698679403" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070699043683" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="dividend" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699043682" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070699056263" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="base" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699056264" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699514926" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699514925" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698925654" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699515982" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699043683" resolveInfo="dividend" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699062607" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699062606" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699097589" resolveInfo="mpf_init_set_d" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699064684" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699056263" resolveInfo="base" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.UnaryMinusExpression" typeId="mj1l.3976803464656531170" id="8001979070699100366" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699104436" nodeInfo="ng">
                <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                <property name="value" nameId="mj1l.2212975673976043696" value="1.0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699053867" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699053866" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698973253" resolveInfo="mpf_pow_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699086398" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699043683" resolveInfo="dividend" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699090738" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699056263" resolveInfo="base" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699095025" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070698679863" resolveInfo="index" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070699106778" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070699109140" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="divisor" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699109139" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699118184" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699118183" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699097589" resolveInfo="mpf_init_set_d" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699120431" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699132113" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="2.0" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699125233" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699150866" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699158174" resolveInfo="mpf_mul_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699153248" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699164800" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699169131" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070698679863" resolveInfo="index" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699175983" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699175984" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699181014" resolveInfo="mpf_add_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699175985" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699175986" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699186649" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="1" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070699189389" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699226797" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699226796" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070698972985" resolveInfo="mpf_div" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699434768" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699415443" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699240216" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699043683" resolveInfo="dividend" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070699245385" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070699109140" resolveInfo="divisor" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070699251096" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070699251095" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070699158174" resolveInfo="mpf_mul_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699436914" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699415443" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070699443442" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070699415443" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070699260928" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="4" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699415443" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="piItem" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699415442" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698679863" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="index" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070699077150" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699323261" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="8001979070699000627" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="8001979070698925190" resolveInfo="gmp" />
    </node>
  </root>
  <root type="x27k.ExternalModule" typeId="x27k.6116558314501417921" id="8001979070698925190" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="gmp" />
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="8001979070699486995" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;stdio.h&gt;" />
    </node>
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="8001979070698925318" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;gmp.h&gt;" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070698925817" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_t" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070698925969" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070698926338" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mp_bitcnt_t" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070698926870" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070699011325" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="FILE" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699011418" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070698927831" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402907626078_8" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698927864" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_set_default_prec" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698945536" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="prec" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698945537" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698926338" resolveInfo="mp_bitcnt_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698928040" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698925654" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698925448" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698926013" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698926012" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698927385" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init2" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698927386" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698927387" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698927388" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698927389" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="prec" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698927390" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698926338" resolveInfo="mp_bitcnt_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070699066953" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402909344232_16" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699067130" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699067253" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699067495" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699067494" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699068235" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699068234" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699068757" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_ui" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699068758" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699068759" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699068760" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699068761" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070699069562" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699097589" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_d" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699097590" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699097591" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699097592" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699097593" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070699097841" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700212684" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_str" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700212685" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700212686" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700212687" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700213557" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="str" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700213583" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700213554" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700214471" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070700214469" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070698971148" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402907759602_10" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698971191" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_add" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698971415" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698971414" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698971653" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698971652" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972115" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972114" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698971387" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699181014" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_add_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699181015" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699181016" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699181017" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699181018" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699181019" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070699181505" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699181021" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699656892" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_sub" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699656893" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699656894" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699656895" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699656896" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699656897" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699656898" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699656899" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698972549" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_mul" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972550" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972551" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972552" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972553" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972554" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972555" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698972556" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699158174" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_mul_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699158175" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699158176" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699158177" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699158178" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699158179" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070699158905" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070699158181" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698972985" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_div" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972986" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972987" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972988" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972989" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698972990" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698972991" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698972992" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070698973253" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_pow_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698973254" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698973255" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698973256" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070698973257" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070698973258" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070698975647" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070698973260" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070699009797" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402908894115_12" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699009916" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_out_str" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070699010579" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699011038" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="stream" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070699011878" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699011877" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070699011325" resolveInfo="FILE" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699012212" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070699012210" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699012463" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="n_digits" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070699012461" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699012748" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699012747" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070699475823" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_get_str" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070699475539" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070699475253" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699476417" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="str" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070699476463" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070699476416" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699476862" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="expptr" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070699476864" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070699476860" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699477695" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070699477693" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699477813" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="n_digits" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070699477811" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070699478537" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070699478536" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070698925817" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
  </root>
  <root type="mj1l.TypeSizeConfiguration" typeId="mj1l.3335993110369795380" id="8001979070698675139" nodeInfo="ng">
    <node role="pointerDiffType" roleId="mj1l.3813668170744198630" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070698675140" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="sizeTType" roleId="mj1l.8863019357864392147" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070698675141" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="vaList" roleId="mj1l.5598157691785092886" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070698675142" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="minFloatValue" roleId="mj1l.6658270785788810330" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070698675144" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="minDoubleValue" roleId="mj1l.6658270785788810349" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070698675145" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxFloatValue" roleId="mj1l.6658270785788810029" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070698675146" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxDoubleValue" roleId="mj1l.6658270785788810339" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070698675147" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675150" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070698675148" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070698675149" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675153" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.ShortType" typeId="mj1l.3335993110369949928" id="8001979070698675151" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int16tType" typeId="mj1l.8463282783691618435" id="8001979070698675152" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675156" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070698675154" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070698675155" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675159" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongType" typeId="mj1l.86532984527104137" id="8001979070698675157" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070698675158" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675162" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongLongType" typeId="mj1l.8463282783691596316" id="8001979070698675160" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int64tType" typeId="mj1l.8463282783691618445" id="8001979070698675161" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675165" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedCharType" typeId="mj1l.8463282783691492716" id="8001979070698675163" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt8tType" typeId="mj1l.8463282783691618461" id="8001979070698675164" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675168" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedShortType" typeId="mj1l.595416243537320771" id="8001979070698675166" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt16tType" typeId="mj1l.8463282783691618466" id="8001979070698675167" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675171" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedIntType" typeId="mj1l.8463282783691492730" id="8001979070698675169" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070698675170" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675174" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070698675172" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070698675173" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070698675177" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongLongType" typeId="mj1l.8463282783691618471" id="8001979070698675175" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt64tType" typeId="mj1l.8463282783691618456" id="8001979070698675176" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070698675180" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="8001979070698675178" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="8001979070698675179" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070698675183" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070698675181" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070698675182" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070698675186" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="8001979070698675184" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="8001979070698675185" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
  </root>
  <root type="51wr.BuildConfiguration" typeId="51wr.7717755763392524104" id="8001979070698621471" nodeInfo="ng">
    <node role="target" roleId="51wr.5323740605968447026" type="51wr.DesktopPlatform" typeId="51wr.5323740605968447022" id="8001979070698675125" nodeInfo="ng">
      <property name="compiler" nameId="51wr.5323740605968447024" value="gcc" />
      <property name="compilerOptions" nameId="51wr.5323740605968447025" value="-std=c99 -lgmp" />
      <property name="debugOptions" nameId="51wr.2736179788492003937" value="-g" />
    </node>
    <node role="configurationItems" roleId="vs0r.4459718605982007338" type="k146.ReportingConfiguration" typeId="k146.4459718605982051949" id="8001979070698675128" nodeInfo="ng">
      <node role="strategy" roleId="k146.4459718605982051999" type="k146.PrintfReportingStrategy" typeId="k146.4459718605982051980" id="8001979070698675129" nodeInfo="ng" />
    </node>
    <node role="binaries" roleId="51wr.5046689135694070731" type="51wr.Executable" typeId="51wr.5046689135693761554" id="8001979070698675132" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="pi" />
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="8001979070698997579" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="8001979070698675409" resolveInfo="pi" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="8001979070699309333" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="8001979070698925190" resolveInfo="gmp" />
      </node>
    </node>
  </root>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:5286f2ef-5410-4acf-aa25-5f7c8c3da7e1(pi.pi_parallel_sync_extended_no_arrays)">
  <persistence version="8" />
  <language namespace="023e30f7-586d-416b-97aa-7d26dae53e75(TasksAndSyncs)" />
  <language namespace="92d2ea16-5a42-4fdf-a676-c7604efe3504(de.slisson.mps.richtext)" />
  <language namespace="2693fc71-9b0e-4b05-ab13-f57227d675f2(com.mbeddr.core.util)" />
  <devkit namespace="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  <import index="6i3o" modelUID="r:af54e311-659f-4265-b558-862058cfed70(TasksAndSyncs.structure)" version="34" implicit="yes" />
  <import index="c4fa" modelUID="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" version="9" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="yq40" modelUID="r:152b3fc0-83a1-4bab-a8cd-565eb8483785(com.mbeddr.core.pointers.structure)" version="5" implicit="yes" />
  <import index="clbe" modelUID="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" version="13" implicit="yes" />
  <import index="x27k" modelUID="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" version="9" implicit="yes" />
  <import index="vs0r" modelUID="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" version="25" implicit="yes" />
  <import index="k146" modelUID="r:5209fc71-bade-45c9-9079-f2d474f0d6ca(com.mbeddr.core.util.structure)" version="21" implicit="yes" />
  <import index="87nw" modelUID="r:ca2ab6bb-f6e7-4c0f-a88c-b78b9b31fff3(de.slisson.mps.richtext.structure)" version="5" implicit="yes" />
  <import index="mj1l" modelUID="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" version="33" implicit="yes" />
  <import index="51wr" modelUID="r:b31f1c3c-99aa-4f1e-a329-cba27efb1a6b(com.mbeddr.core.buildconfig.structure)" version="1" implicit="yes" />
  <root type="x27k.ImplementationModule" typeId="x27k.6437088627575722830" id="4470518958313859876" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="queue" />
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313859877" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="QUEUESIZE" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859878" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="10000" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313859879" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="DELAY" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859880" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="50" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313859881" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403015924661_32" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.StructDeclaration" typeId="clbe.6394819151180597807" id="4470518958313859882" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="Queue" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313859883" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="insertAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313859884" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313859885" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="deleteAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313859886" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313859887" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="data" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="4470518958313859888" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313859889" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313859890" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
          <node role="sizeExpr" roleId="yq40.1452920870317474611" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313859891" nodeInfo="ng">
            <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859877" resolveInfo="QUEUESIZE" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313859892" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403018548828_50" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313859893" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueInit" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313859894" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313859895" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313859896" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313859897" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859898" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313859899" nodeInfo="ng">
          <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313859900" nodeInfo="ng">
            <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313859901" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313859902" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="sync in this scenario not necessary" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313859903" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313859904" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859905" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859894" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859906" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313859907" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313859908" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859909" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313859910" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313859911" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859883" resolveInfo="insertAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313859912" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313859913" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859914" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859894" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313859915" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313859916" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859917" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313859918" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313859919" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859885" resolveInfo="deleteAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313859920" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313859921" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859922" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859894" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313859923" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313859924" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403017194371_43" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313859925" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSafeAdd" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859926" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="4470518958313859927" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859928" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313859929" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313859930" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313859931" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313859932" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="sync not necessary since the usage of 'isFull' already synchronizes the modifying access\nto 'queue' =&gt; lock ellision would be very beneficial, here" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313859933" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313859934" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859935" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859936" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313859937" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313859938" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313859939" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313859940" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="clearly, this busy-waiting approach is only useful if the waiting time is small enough\n=&gt; something like \&quot;wait for condition\&quot; might be helpful in the future\n=&gt; native message passing might also be helpful (especially for directed communication\n   via seperate channels, as opposed to one, since then a non-deterministic choice\n   provides real benefit for the communication)" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313859941" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="newInsertAt" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313859942" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.ModuloExpression" typeId="mj1l.2799490600706093744" id="4470518958313859943" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313859944" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859877" resolveInfo="QUEUESIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="4470518958313859945" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="4470518958313859946" nodeInfo="ng">
                        <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859947" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                        </node>
                        <node role="left" roleId="mj1l.8860443239512128064" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313859948" nodeInfo="ng">
                          <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860079" resolveInfo="queueGetInsertAt" />
                          <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859949" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313859950" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="deleteAt" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313859951" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313859952" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860125" resolveInfo="queueGetDeleteAt" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859953" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313859954" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313859955" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313859956" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="sleepingTime" />
                      <node role="type" roleId="mj1l.318113533128716676" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="4470518958313859957" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                        <property name="requiredStdHeader" nameId="c4fa.3529929552243667341" value="&lt;time.h&gt;" />
                        <node role="dummyType" roleId="c4fa.3529929552243667343" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313859958" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313859959" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313859960" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="struct timespec" />
                        </node>
                      </node>
                      <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="4470518958313859961" nodeInfo="ng">
                        <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;time.h&gt;" />
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313859962" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="(struct timespec){ .tv_nsec =" />
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AnyNodeItem" typeId="c4fa.745648737914844472" id="4470518958313859963" nodeInfo="ng">
                          <node role="theNode" roleId="c4fa.745648737914844473" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313859964" nodeInfo="ng">
                            <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859879" resolveInfo="DELAY" />
                          </node>
                        </node>
                        <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313859965" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313859966" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313859967" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="}" />
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313859968" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="4470518958313859969" nodeInfo="ng">
                        <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="nanosleep" />
                        <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;time.h&gt;" />
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313859970" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313859971" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313859956" resolveInfo="sleepingTime" />
                          </node>
                        </node>
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313859972" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ContinueStatement" typeId="c4fa.8132151755547066635" id="4470518958313859973" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313859974" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313859975" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313859941" resolveInfo="newInsertAt" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313859976" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313859950" resolveInfo="deleteAt" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313859977" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313859978" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313859979" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313859980" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="lock unnecessary, here" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313859981" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313859982" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860198" resolveInfo="queueSetItemAt" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859983" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313859984" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860079" resolveInfo="queueGetInsertAt" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859985" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                      </node>
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859986" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859998" resolveInfo="item" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313859987" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313859988" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860103" resolveInfo="queueSetInsertAt" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313859989" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313859994" resolveInfo="queue" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313859990" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313859941" resolveInfo="newInsertAt" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="4470518958313859991" nodeInfo="ng" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313859992" nodeInfo="ng" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313859993" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313859994" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313859995" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313859996" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313859997" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313859998" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="item" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313859999" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860000" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406735340224_25" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860001" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSafeGet" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860002" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="4470518958313860003" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860004" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860005" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860006" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860007" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860008" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="see above at queueSafeAdd()" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860009" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860010" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860011" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860012" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860013" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860014" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860015" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860016" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="see above at queueSafeAdd()" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313860017" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860018" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860019" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="sleepingTime" />
                      <node role="type" roleId="mj1l.318113533128716676" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="4470518958313860020" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                        <property name="requiredStdHeader" nameId="c4fa.3529929552243667341" value="&lt;time.h&gt;" />
                        <node role="dummyType" roleId="c4fa.3529929552243667343" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860021" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860022" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860023" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="struct timespec" />
                        </node>
                      </node>
                      <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="4470518958313860024" nodeInfo="ng">
                        <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;time.h&gt;" />
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860025" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="(struct timespec){ .tv_nsec =" />
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AnyNodeItem" typeId="c4fa.745648737914844472" id="4470518958313860026" nodeInfo="ng">
                          <node role="theNode" roleId="c4fa.745648737914844473" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860027" nodeInfo="ng">
                            <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859879" resolveInfo="DELAY" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860028" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="}" />
                        </node>
                        <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860029" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860030" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860031" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="4470518958313860032" nodeInfo="ng">
                        <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="nanosleep" />
                        <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;time.h&gt;" />
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860033" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860034" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860019" resolveInfo="sleepingTime" />
                          </node>
                        </node>
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860035" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ContinueStatement" typeId="c4fa.8132151755547066635" id="4470518958313860036" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313860037" nodeInfo="ng">
                    <node role="left" roleId="mj1l.8860443239512128064" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860038" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860125" resolveInfo="queueGetDeleteAt" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860039" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                      </node>
                    </node>
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860040" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860079" resolveInfo="queueGetInsertAt" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860041" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860042" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860043" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860044" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860045" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="lock unnecessary, here" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860046" nodeInfo="ng" />
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860047" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860048" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860049" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860167" resolveInfo="queueGetItemAt" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860050" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                      </node>
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860051" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860125" resolveInfo="queueGetDeleteAt" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860052" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958313860053" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860054" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860074" resolveInfo="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860055" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="newDeleteAt" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860056" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.ModuloExpression" typeId="mj1l.2799490600706093744" id="4470518958313860057" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860058" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859877" resolveInfo="QUEUESIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="4470518958313860059" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="4470518958313860060" nodeInfo="ng">
                        <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860061" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                        </node>
                        <node role="left" roleId="mj1l.8860443239512128064" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860062" nodeInfo="ng">
                          <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860125" resolveInfo="queueGetDeleteAt" />
                          <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860063" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860064" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860065" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860145" resolveInfo="queueSetDeleteAt" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860066" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860070" resolveInfo="queue" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860067" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860055" resolveInfo="newDeleteAt" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860068" nodeInfo="ng" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860069" nodeInfo="ng" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860070" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860071" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860072" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860073" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860074" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860075" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860076" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860077" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860078" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406643542257_2" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860079" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueGetInsertAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860080" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860081" nodeInfo="ng">
          <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860082" nodeInfo="ng">
            <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860083" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860084" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="like in the following statements the syncs are never needed since they are always called in a \ncontext where the queue is already synchronized =&gt; lock ellision!" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860085" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860086" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860087" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860098" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860088" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860089" nodeInfo="ng">
              <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860090" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860091" nodeInfo="ng">
                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859883" resolveInfo="insertAt" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860092" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860093" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860094" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860098" resolveInfo="queue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860095" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860096" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="-1" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860097" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860098" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860099" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860100" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860101" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860102" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1407342023398_2" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860103" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSetInsertAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860104" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860105" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860106" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860107" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860118" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860108" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860109" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860110" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860111" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860122" resolveInfo="newInsertAt" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860112" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860113" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859883" resolveInfo="insertAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860114" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860115" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860116" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860118" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860117" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860118" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860119" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860120" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860121" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860122" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="newInsertAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860123" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860124" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406645538976_6" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860125" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueGetDeleteAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860126" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860127" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860128" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860129" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860140" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860130" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860131" nodeInfo="ng">
              <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860132" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860133" nodeInfo="ng">
                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859885" resolveInfo="deleteAt" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860134" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860135" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860136" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860140" resolveInfo="queue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860137" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860138" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="-1" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860139" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860140" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860141" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860142" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860143" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860144" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1407342019800_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860145" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSetDeleteAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860146" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860147" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860148" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860149" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860160" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860150" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860151" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860152" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860153" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860164" resolveInfo="newDeleteAt" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860154" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860155" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859885" resolveInfo="deleteAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860156" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860157" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860158" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860160" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860159" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860160" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860161" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860162" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860163" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860164" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="newDeleteAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860165" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860166" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406645543071_7" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860167" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueGetItemAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860168" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860169" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860170" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860171" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860191" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860172" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860173" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860174" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="wrappedItem" />
                <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860175" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="4470518958313860176" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860177" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860178" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859887" resolveInfo="data" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860179" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860180" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860181" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860191" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                    <node role="index" roleId="yq40.6282313788306893059" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860182" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860195" resolveInfo="index" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860183" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860184" nodeInfo="ng">
                  <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860185" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860186" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860187" nodeInfo="ng">
                      <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860174" resolveInfo="wrappedItem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860188" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860189" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="-1" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860190" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860191" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860192" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860193" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860194" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860195" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="index" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860196" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860197" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1407342026902_3" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860198" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSetItemAt" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860199" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860200" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860201" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860202" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860221" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860203" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860204" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860205" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="wrappedItem" />
                <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860206" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="4470518958313860207" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860208" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860209" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313859887" resolveInfo="data" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860210" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860211" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860212" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860221" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                    <node role="index" roleId="yq40.6282313788306893059" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860213" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860225" resolveInfo="index" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860214" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860215" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860216" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860217" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860218" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860227" resolveInfo="newItem" />
                      </node>
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860219" nodeInfo="ng">
                      <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860205" resolveInfo="wrappedItem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860220" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860221" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860222" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860223" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860224" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860225" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="index" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860226" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860227" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="newItem" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860228" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860229" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403017670392_45" />
    </node>
  </root>
  <root type="x27k.ImplementationModule" typeId="x27k.6437088627575722830" id="4470518958313860230" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="pi" />
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860231" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BLOCKSIZE" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860232" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="3000000" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860233" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BLOCKCOUNT" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860234" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="4" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860235" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="THRESHOLD" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.MultiExpression" typeId="mj1l.5763383285156373020" id="4470518958313860236" nodeInfo="ng">
        <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860237" nodeInfo="ng">
          <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860233" resolveInfo="BLOCKCOUNT" />
        </node>
        <node role="left" roleId="mj1l.8860443239512128064" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860238" nodeInfo="ng">
          <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860231" resolveInfo="BLOCKSIZE" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860239" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PI" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860240" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="3.1415926535897932384626" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860241" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="MAPPERCOUNT" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860242" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="2" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="4470518958313860243" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="DELAY" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860244" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="50" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860245" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406528195951_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.StructDeclaration" typeId="clbe.6394819151180597807" id="4470518958313860246" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="FlaggedQueue" />
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313860247" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="itemCount" />
        <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860248" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860249" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313860250" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860251" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958314074938" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
          </node>
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313860253" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="isFull" />
        <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860254" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958313860255" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="4470518958313860256" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="isFinished" />
        <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860257" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958313860258" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860259" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406702848449_10" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860260" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860261" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860262" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="counter" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860263" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860264" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860265" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="counterPointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860266" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860267" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860268" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860269" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860270" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860262" resolveInfo="counter" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860271" nodeInfo="ng">
          <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860272" nodeInfo="ng">
            <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860273" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860274" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="obviously a useless synchronization" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860275" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860276" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860277" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860262" resolveInfo="counter" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860278" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860279" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860280" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860281" nodeInfo="ng">
                  <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860282" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                  </node>
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860283" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860262" resolveInfo="counter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860284" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958314249883" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultQueue1" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958314249886" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958314249887" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958314520480" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultQueue1Pointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958314560668" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958314520481" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958314520482" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958314688568" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958314728453" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314249883" resolveInfo="resultQueue1" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958314440395" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultQueue2" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958314440396" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958314440397" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958314768263" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultQueue2Pointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958314768264" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958314768265" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958314768266" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958314768267" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958314905931" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314440395" resolveInfo="resultQueue2" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860300" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mappers" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="4470518958313860301" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.FutureType" typeId="6i3o.1304213873205054831" id="4470518958313860302" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="returnType" roleId="6i3o.1304213873206873722" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860303" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="sizeExpr" roleId="yq40.1452920870317474611" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860304" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860241" resolveInfo="MAPPERCOUNT" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958315065491" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mapper1" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.FutureType" typeId="6i3o.1304213873205054831" id="4470518958315179113" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="returnType" roleId="6i3o.1304213873206873722" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958315216937" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958317460749" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.Future" typeId="6i3o.1304213873204973711" id="4470518958317502447" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958317294054" nodeInfo="ng">
              <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958315570735" resolveInfo="initMapper" />
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958317335522" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314520480" resolveInfo="resultQueue1Pointer" />
              </node>
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958317418978" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860265" resolveInfo="counterPointer" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958315284913" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mapper2" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.FutureType" typeId="6i3o.1304213873205054831" id="4470518958315284914" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="returnType" roleId="6i3o.1304213873206873722" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958315284915" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958317576574" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.Future" typeId="6i3o.1304213873204973711" id="4470518958317576575" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958317576576" nodeInfo="ng">
              <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958315570735" resolveInfo="initMapper" />
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958318035492" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314768263" resolveInfo="resultQueue2Pointer" />
              </node>
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958317576578" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860265" resolveInfo="counterPointer" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="k146.ForRangeStatement" typeId="k146.8729447926330198396" id="4470518958313860305" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="i" />
          <node role="range" roleId="k146.8729447926330241132" type="k146.RangeExpression" typeId="k146.6307143892175911066" id="4470518958313860306" nodeInfo="ng">
            <property name="rightExclude" nameId="k146.8729447926330623085" value="true" />
            <node role="left" roleId="k146.6307143892175911067" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860307" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="right" roleId="k146.6307143892175911068" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860308" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860241" resolveInfo="MAPPERCOUNT" />
            </node>
          </node>
          <node role="body" roleId="k146.8729447926330241139" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860309" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860310" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860311" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860312" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860313" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="the following two syncs are unnecessary since \n- 'resultQueues' is never changed, at all =&gt; lock ellision\n- each 'resultQueue' is fully processed before it is given to a corresponding task =&gt; lock ellision\n  by taking into account the array indices" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860391" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860392" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="result" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860393" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860394" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860395" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultPointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860396" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860397" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860398" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860399" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860400" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860392" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860401" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860402" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.FutureJoin" typeId="6i3o.1304213873204985423" id="4470518958313860403" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860404" nodeInfo="ng">
              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.Future" typeId="6i3o.1304213873204973711" id="4470518958313860405" nodeInfo="ng" />
              <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.Task" typeId="6i3o.1304213873204721600" id="4470518958313860406" nodeInfo="ng">
                <node role="expression" roleId="6i3o.2744793885328637740" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860407" nodeInfo="ng">
                  <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860514" resolveInfo="reduce" />
                  <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860408" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860395" resolveInfo="resultPointer" />
                  </node>
                  <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958318610839" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314520480" resolveInfo="resultQueue1Pointer" />
                  </node>
                  <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958318573598" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958314768263" resolveInfo="resultQueue2Pointer" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860410" nodeInfo="ng">
          <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860411" nodeInfo="ng">
            <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860412" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860413" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="synchronization useless: after the termination of the reducer no other task will ever access result" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860414" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860415" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860416" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860392" resolveInfo="result" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860417" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860418" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860419" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313861027" resolveInfo="printf" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="4470518958313860420" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="pi: %.50Lf\n" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860421" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860422" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860423" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860392" resolveInfo="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860424" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860425" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860426" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="0" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860427" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860428" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argc" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860429" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860430" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argv" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="4470518958313860431" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.StringType" typeId="yq40.6113173064528067332" id="4470518958313860432" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958315476975" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1408196675170_2" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958315570735" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="initMapper" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958315611165" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958315611450" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958315611161" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958315611222" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958316883660" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="counterPointer" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958316924290" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958316883656" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958316924063" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958315570737" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958315614450" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958315614456" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958315614460" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958315614452" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958315614484" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958315615799" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="itemCount" />
                <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958315615801" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315615802" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958315615803" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860247" resolveInfo="itemCount" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315615804" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958315615805" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958315615806" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958315614486" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958315771503" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315771642" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958315810275" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958315839286" nodeInfo="ng">
                        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                        <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                      </node>
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958315771502" nodeInfo="ng">
                      <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958315615799" resolveInfo="itemCount" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958315879646" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958315879647" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="isFull" />
                <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958315879648" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315879649" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958315881832" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315879651" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958315879652" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958315879653" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958315879654" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958315879655" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315879656" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958315879657" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958316087270" nodeInfo="ng" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958315879659" nodeInfo="ng">
                      <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958315879647" resolveInfo="isFull" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958315880703" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958315880704" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="isFinished" />
                <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958315880705" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315880706" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958316127577" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860256" resolveInfo="isFinished" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315880708" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958315880709" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958315880710" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958315880711" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958315880712" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958315880713" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958315880714" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958316348223" nodeInfo="ng" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958315880716" nodeInfo="ng">
                      <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958315880704" resolveInfo="isFinished" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958316429432" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958316429431" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313859893" resolveInfo="queueInit" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958316469584" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958316535277" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958316575571" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860250" resolveInfo="queue" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958316500239" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958316530107" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958316469610" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958316731316" nodeInfo="ng">
              <node role="expression" roleId="x27k.8967919205527146150" type="6i3o.Task" typeId="6i3o.1304213873204721600" id="4470518958316772180" nodeInfo="ng">
                <node role="expression" roleId="6i3o.2744793885328637740" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958316812880" nodeInfo="ng">
                  <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860434" resolveInfo="map" />
                  <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958316852963" nodeInfo="ng">
                    <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860235" resolveInfo="THRESHOLD" />
                  </node>
                  <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958316924780" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958316883660" resolveInfo="counterPointer" />
                  </node>
                  <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958316925183" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958315611165" resolveInfo="resultQueue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="6i3o.TaskType" typeId="6i3o.1304213873205049565" id="4470518958316617516" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="returnType" roleId="6i3o.1304213873205049856" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958316648155" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860433" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1405501259831_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860434" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="map" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860435" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="4470518958313860436" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860437" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860438" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="start" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860439" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860440" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="end" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860441" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860442" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860443" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860444" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860445" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860505" resolveInfo="counter" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860446" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860447" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860448" nodeInfo="ng">
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860449" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860438" resolveInfo="start" />
                    </node>
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860450" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860451" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860452" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860505" resolveInfo="counter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313860453" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860454" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="4470518958313860455" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313860456" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860457" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860503" resolveInfo="threshold" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860458" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860438" resolveInfo="start" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860459" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="possibleEnd" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860460" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="4470518958313860461" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860462" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860231" resolveInfo="BLOCKSIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860463" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860438" resolveInfo="start" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860464" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860465" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.TernaryExpression" typeId="mj1l.8729447926330528686" id="4470518958313860466" nodeInfo="ng">
                      <node role="thenExpr" roleId="mj1l.8729447926330528688" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860467" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860459" resolveInfo="possibleEnd" />
                      </node>
                      <node role="elseExpr" roleId="mj1l.8729447926330528689" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860468" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860503" resolveInfo="threshold" />
                      </node>
                      <node role="condition" roleId="mj1l.8729447926330528687" type="mj1l.LessEqualsExpression" typeId="mj1l.8860443239512147451" id="4470518958313860469" nodeInfo="ng">
                        <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860470" nodeInfo="ng">
                          <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860459" resolveInfo="possibleEnd" />
                        </node>
                        <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860471" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860503" resolveInfo="threshold" />
                        </node>
                      </node>
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860472" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860440" resolveInfo="end" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860473" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860474" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860475" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860476" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860440" resolveInfo="end" />
                      </node>
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860477" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860505" resolveInfo="counter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860478" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860479" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860480" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860794" resolveInfo="calcPiBlock" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860481" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860438" resolveInfo="start" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860482" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860440" resolveInfo="end" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860483" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860509" resolveInfo="partialResultQueue" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860484" nodeInfo="ng" />
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860485" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860486" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860487" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860488" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860509" resolveInfo="partialResultQueue" />
            </node>
          </node>
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860489" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="isFinished" />
            <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860490" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860491" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860492" nodeInfo="ng">
                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860256" resolveInfo="isFinished" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860493" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860494" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860495" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860509" resolveInfo="partialResultQueue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860496" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860497" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860498" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860499" nodeInfo="ng">
                  <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860500" nodeInfo="ng" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860501" nodeInfo="ng">
                  <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860489" resolveInfo="isFinished" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860502" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860503" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="threshold" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860504" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860505" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="counter" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860506" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860507" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860508" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860509" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="partialResultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860510" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860511" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860512" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860513" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403018357673_48" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860514" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="reduce" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860515" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860516" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860517" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860518" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860519" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue1" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860520" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860523" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860524" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958318779933" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue2" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958318858914" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958318779929" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958318819304" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860526" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860527" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860528" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860529" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860515" resolveInfo="result" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860530" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860531" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860532" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860533" nodeInfo="ng">
                  <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860534" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                  </node>
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860535" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860515" resolveInfo="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860536" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958320151757" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="isFinished1" />
          <node role="type" roleId="mj1l.318113533128716676" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958320151755" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958320198974" nodeInfo="ng" />
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958320201857" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="isFinished2" />
          <node role="type" roleId="mj1l.318113533128716676" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958320201858" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958320201859" nodeInfo="ng" />
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860552" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="isFinishedCount" />
          <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860553" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860554" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="0" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860555" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="4470518958313860556" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860557" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860558" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860559" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860560" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860561" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="try to read from one queue if any one is available " />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860562" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="itemCountToBeProcessed" />
              <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860563" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860564" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860565" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                </node>
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="yq40.NullExpression" typeId="yq40.5308710777891643206" id="4470518958313860566" nodeInfo="ng" />
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860567" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="queueToBeProcessed" />
              <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860568" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860569" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860570" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
                  </node>
                </node>
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="yq40.NullExpression" typeId="yq40.5308710777891643206" id="4470518958313860571" nodeInfo="ng" />
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860572" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="flagToBeProcessed" />
              <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860573" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860574" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958313860575" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                </node>
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="yq40.NullExpression" typeId="yq40.5308710777891643206" id="4470518958313860576" nodeInfo="ng" />
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958319997855" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958320079889" nodeInfo="ng">
              <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320079890" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958320301402" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320301403" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="5721544581289169809" nodeInfo="ng">
                      <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="5721544581289169810" nodeInfo="ng">
                        <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581289172004" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                        </node>
                      </node>
                      <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="5721544581289169812" nodeInfo="ng">
                        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581289169813" nodeInfo="ng">
                          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581289397850" nodeInfo="ng">
                            <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581289627646" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289545783" nodeInfo="ng">
                                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581289585981" nodeInfo="ng">
                                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860247" resolveInfo="itemCount" />
                                </node>
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289477566" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581289509211" nodeInfo="ng" />
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581289437673" nodeInfo="ng">
                                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581289280458" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860562" resolveInfo="itemCountToBeProcessed" />
                            </node>
                          </node>
                        </node>
                        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581289714589" nodeInfo="ng">
                          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581289754995" nodeInfo="ng">
                            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581289714588" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                            </node>
                            <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581289796151" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289796152" nodeInfo="ng">
                                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581289837143" nodeInfo="ng">
                                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860250" resolveInfo="queue" />
                                </node>
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289796154" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581289796155" nodeInfo="ng" />
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581289796156" nodeInfo="ng">
                                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581289878177" nodeInfo="ng">
                          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581289878178" nodeInfo="ng">
                            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581289919516" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860572" resolveInfo="flagToBeProcessed" />
                            </node>
                            <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581289878180" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289878181" nodeInfo="ng">
                                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581289961426" nodeInfo="ng">
                                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                                </node>
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581289878183" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581289878184" nodeInfo="ng" />
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581289878185" nodeInfo="ng">
                                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentedStatement" typeId="c4fa.7024921229556134722" id="5721544581290498262" nodeInfo="ng">
                      <node role="commentedCode" roleId="vs0r.7024921229556133804" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958321132120" nodeInfo="ng">
                        <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321132119" nodeInfo="ng">
                          <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958320634765" resolveInfo="setNextQueue" />
                          <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321139834" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                          </node>
                          <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321150523" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321146648" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860562" resolveInfo="itemCountToBeProcessed" />
                            </node>
                          </node>
                          <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321198758" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321202208" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                            </node>
                          </node>
                          <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321209968" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321255540" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860572" resolveInfo="flagToBeProcessed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="4470518958320307527" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958320302959" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958319116584" resolveInfo="queueIsFull" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320304526" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                    </node>
                  </node>
                  <node role="elseIfs" roleId="c4fa.3134547887598498723" type="c4fa.ElseIfPart" typeId="c4fa.3134547887598498470" id="4470518958320310338" nodeInfo="ng">
                    <node role="body" roleId="c4fa.3134547887598498471" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320310339" nodeInfo="ng">
                      <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958321666427" nodeInfo="ng">
                        <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958321666428" nodeInfo="ng">
                          <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958321804933" nodeInfo="ng" />
                        </node>
                        <node role="condition" roleId="c4fa.6275792049641600984" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321711522" nodeInfo="ng">
                          <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958321517098" resolveInfo="setFinished" />
                          <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321713957" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321716220" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958320151757" resolveInfo="isFinished1" />
                            </node>
                          </node>
                          <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321721038" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321762265" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860552" resolveInfo="isFinishedCount" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="condition" roleId="c4fa.3134547887598498479" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958320350263" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958319586700" resolveInfo="queueIsFinished" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320350264" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860519" resolveInfo="resultQueue1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.NotExpression" typeId="mj1l.3830958861296781575" id="4470518958320120381" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958320291748" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958320151757" resolveInfo="isFinished1" />
                </node>
              </node>
              <node role="elseIfs" roleId="c4fa.3134547887598498723" type="c4fa.ElseIfPart" typeId="c4fa.3134547887598498470" id="4470518958320294678" nodeInfo="ng">
                <node role="body" roleId="c4fa.3134547887598498471" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320294679" nodeInfo="ng">
                  <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958321856296" nodeInfo="ng">
                    <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958321856297" nodeInfo="ng">
                      <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="5721544581290139435" nodeInfo="ng">
                        <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="5721544581290139436" nodeInfo="ng">
                          <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581290199315" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                          </node>
                        </node>
                        <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="5721544581290139438" nodeInfo="ng">
                          <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581290139439" nodeInfo="ng">
                            <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581290139440" nodeInfo="ng">
                              <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581290139441" nodeInfo="ng">
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139442" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581290139443" nodeInfo="ng">
                                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860247" resolveInfo="itemCount" />
                                  </node>
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139444" nodeInfo="ng">
                                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581290139445" nodeInfo="ng" />
                                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581290241090" nodeInfo="ng">
                                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581290139447" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860562" resolveInfo="itemCountToBeProcessed" />
                              </node>
                            </node>
                          </node>
                          <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581290139448" nodeInfo="ng">
                            <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581290139449" nodeInfo="ng">
                              <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581290139450" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                              </node>
                              <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581290139451" nodeInfo="ng">
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139452" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581290139453" nodeInfo="ng">
                                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860250" resolveInfo="queue" />
                                  </node>
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139454" nodeInfo="ng">
                                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581290139455" nodeInfo="ng" />
                                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581290287616" nodeInfo="ng">
                                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="5721544581290139457" nodeInfo="ng">
                            <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="5721544581290139458" nodeInfo="ng">
                              <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="5721544581290139459" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860572" resolveInfo="flagToBeProcessed" />
                              </node>
                              <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="5721544581290139460" nodeInfo="ng">
                                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139461" nodeInfo="ng">
                                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="5721544581290139462" nodeInfo="ng">
                                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                                  </node>
                                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="5721544581290139463" nodeInfo="ng">
                                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="5721544581290139464" nodeInfo="ng" />
                                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="5721544581290321022" nodeInfo="ng">
                                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentedStatement" typeId="c4fa.7024921229556134722" id="5721544581290456703" nodeInfo="ng">
                        <node role="commentedCode" roleId="vs0r.7024921229556133804" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958321856298" nodeInfo="ng">
                          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321856299" nodeInfo="ng">
                            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958320634765" resolveInfo="setNextQueue" />
                            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321909309" nodeInfo="ng">
                              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                            </node>
                            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321856301" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321856302" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860562" resolveInfo="itemCountToBeProcessed" />
                              </node>
                            </node>
                            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321856303" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321856304" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                              </node>
                            </node>
                            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321856305" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321856306" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860572" resolveInfo="flagToBeProcessed" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="4470518958321856307" nodeInfo="ng" />
                    </node>
                    <node role="condition" roleId="c4fa.6275792049641600984" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321856308" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958319116584" resolveInfo="queueIsFull" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321861964" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                      </node>
                    </node>
                    <node role="elseIfs" roleId="c4fa.3134547887598498723" type="c4fa.ElseIfPart" typeId="c4fa.3134547887598498470" id="4470518958321856310" nodeInfo="ng">
                      <node role="body" roleId="c4fa.3134547887598498471" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958321856311" nodeInfo="ng">
                        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958321856312" nodeInfo="ng">
                          <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958321856313" nodeInfo="ng">
                            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958321856314" nodeInfo="ng" />
                          </node>
                          <node role="condition" roleId="c4fa.6275792049641600984" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321856315" nodeInfo="ng">
                            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958321517098" resolveInfo="setFinished" />
                            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321856316" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958322004986" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958320201857" resolveInfo="isFinished2" />
                              </node>
                            </node>
                            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958321856318" nodeInfo="ng">
                              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958321856319" nodeInfo="ng">
                                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860552" resolveInfo="isFinishedCount" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="condition" roleId="c4fa.3134547887598498479" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958321856320" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958319586700" resolveInfo="queueIsFinished" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321956455" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958318779933" resolveInfo="resultQueue2" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="condition" roleId="c4fa.3134547887598498479" type="mj1l.NotExpression" typeId="mj1l.3830958861296781575" id="4470518958320296449" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958320298186" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958320201857" resolveInfo="isFinished2" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860684" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860685" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860686" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860687" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860688" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="in case no result was available it might be wise to delay the execution" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313860689" nodeInfo="ng">
              <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860690" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860691" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="sleepingTime" />
                  <node role="type" roleId="mj1l.318113533128716676" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="4470518958313860692" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    <property name="requiredStdHeader" nameId="c4fa.3529929552243667341" value="&lt;time.h&gt;" />
                    <node role="dummyType" roleId="c4fa.3529929552243667343" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860693" nodeInfo="ng">
                      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860694" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      </node>
                    </node>
                    <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860695" nodeInfo="ng">
                      <property name="text" nameId="c4fa.3830958861296879114" value="struct timespec" />
                    </node>
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="4470518958313860696" nodeInfo="ng">
                    <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;time.h&gt;" />
                    <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860697" nodeInfo="ng">
                      <property name="text" nameId="c4fa.3830958861296879114" value="(struct timespec){ .tv_nsec =" />
                    </node>
                    <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AnyNodeItem" typeId="c4fa.745648737914844472" id="4470518958313860698" nodeInfo="ng">
                      <node role="theNode" roleId="c4fa.745648737914844473" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860699" nodeInfo="ng">
                        <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860243" resolveInfo="DELAY" />
                      </node>
                    </node>
                    <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860700" nodeInfo="ng">
                      <property name="text" nameId="c4fa.3830958861296879114" value="}" />
                    </node>
                    <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860701" nodeInfo="ng">
                      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860702" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860703" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="4470518958313860704" nodeInfo="ng">
                    <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="nanosleep" />
                    <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;time.h&gt;" />
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860705" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860706" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860691" resolveInfo="sleepingTime" />
                      </node>
                    </node>
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860707" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313860708" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="yq40.NullExpression" typeId="yq40.5308710777891643206" id="4470518958313860709" nodeInfo="ng" />
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860710" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                </node>
              </node>
              <node role="elsePart" roleId="c4fa.3134547887598486571" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860711" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860712" nodeInfo="ng" />
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860713" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860714" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860722" resolveInfo="addPartialResults" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860715" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860515" resolveInfo="result" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860716" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860562" resolveInfo="itemCountToBeProcessed" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860717" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860567" resolveInfo="queueToBeProcessed" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860718" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860572" resolveInfo="flagToBeProcessed" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860719" nodeInfo="ng" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860720" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958319035103" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1408197524542_4" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958319116584" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueIsFull" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958319116586" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958319169036" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958319169150" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958319169262" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958319163960" resolveInfo="resultQueue" />
            </node>
          </node>
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958319256077" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="isFull" />
            <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958319256079" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319256080" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958319256081" nodeInfo="ng">
                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319256082" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958319256083" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958319256084" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958319163960" resolveInfo="resultQueue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958319169038" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958319360897" nodeInfo="ng">
              <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319366476" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958319401200" nodeInfo="ng" />
                <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958319365006" nodeInfo="ng">
                  <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958319256077" resolveInfo="isFull" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958319478606" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958319507332" nodeInfo="ng" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958319253231" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958319163960" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958319164541" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958319163956" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958319164218" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958319628351" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1408197993718_7" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958319586700" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueIsFinished" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958319586701" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958319586702" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958319586703" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958319586704" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958319586720" resolveInfo="resultQueue" />
            </node>
          </node>
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958319586705" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="isFinished" />
            <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958319586706" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319586707" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958319955781" nodeInfo="ng">
                  <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860256" resolveInfo="isFinished" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319586709" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958319586710" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958319586711" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958319586720" resolveInfo="resultQueue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958319586712" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958319586713" nodeInfo="ng">
              <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958319586714" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958319586715" nodeInfo="ng" />
                <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958319586716" nodeInfo="ng">
                  <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958319586705" resolveInfo="isFinished" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958319586717" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958319586718" nodeInfo="ng" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958319586719" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958319586720" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958319586721" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958319586722" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958319586723" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958320547806" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1408198275039_8" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958320634765" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="setNextQueue" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320634767" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958320685611" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958320685617" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320685621" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320677497" resolveInfo="nextQueueContainer" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958320685613" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958320686928" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958320687281" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958320691770" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320689838" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958320690667" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860247" resolveInfo="itemCount" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320688550" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958320689054" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320687794" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320677497" resolveInfo="nextQueueContainer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958320686924" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320686945" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320681820" resolveInfo="nextItemCount" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958320779029" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958320837439" nodeInfo="ng">
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958320822210" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320779028" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320679964" resolveInfo="nextQueue" />
                  </node>
                </node>
                <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958320866645" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320866646" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958320867890" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860250" resolveInfo="queue" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320866648" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958320866649" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320866650" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320677497" resolveInfo="nextQueueContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958320911814" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958320911815" nodeInfo="ng">
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958320911816" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320956066" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320683319" resolveInfo="nextFlag" />
                  </node>
                </node>
                <node role="right" roleId="mj1l.8860443239512128065" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958320911818" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320911819" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958321000581" nodeInfo="ng">
                      <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958320911821" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958320911822" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958320911823" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958320677497" resolveInfo="nextQueueContainer" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958320590867" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958320677497" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="nextQueueContainer" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320677873" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958320677495" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958320677550" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958320681820" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="nextItemCount" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320682115" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320682109" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958320681816" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958320681882" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958320679964" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="nextQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320680361" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320680059" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958320679960" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958320680021" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958320683319" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="nextFlag" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320683582" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958320683576" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958320683315" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958320684034" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958321381324" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1408198545813_10" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958321517098" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="setFinished" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958321517100" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958321562959" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958321563014" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958321563023" nodeInfo="ng" />
            <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958321562955" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321562976" nodeInfo="ng">
                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958321562039" resolveInfo="isFinished" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958321563125" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958321563121" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PostIncrementExpression" typeId="mj1l.4375898003726285486" id="4470518958321563375" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321563147" nodeInfo="ng">
                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958321562222" resolveInfo="isFinishedCount" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958321565308" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958321565900" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958321566217" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860241" resolveInfo="MAPPERCOUNT" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="4470518958321572972" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958321565612" nodeInfo="ng">
                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958321562222" resolveInfo="isFinishedCount" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958321564978" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958321562039" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="isFinished" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958321562067" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958321562038" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958321562222" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="isFinishedCount" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958321562443" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958321562220" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860721" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1406707860699_17" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860722" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="addPartialResults" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860723" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860724" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860725" nodeInfo="ng">
          <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860726" nodeInfo="ng">
            <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860727" nodeInfo="ng">
              <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860728" nodeInfo="ng">
                <property name="escapedValue" nameId="87nw.2557074442922438158" value="the synchronization here is actually not necessary since the corresponding mapper task will not\nproceed before the modification of 'isFullFlag' below\n=&gt; lock ellision would be helpful\n! itemCount's sync is falsely removed since it its setting inside a function breaks the current simplified pointer analysis" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860729" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860730" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860731" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860785" resolveInfo="queue" />
            </node>
          </node>
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860732" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860733" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860781" resolveInfo="itemCount" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860734" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="k146.ForRangeStatement" typeId="k146.8729447926330198396" id="4470518958313860735" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="i" />
              <node role="range" roleId="k146.8729447926330241132" type="k146.RangeExpression" typeId="k146.6307143892175911066" id="4470518958313860736" nodeInfo="ng">
                <property name="rightExclude" nameId="k146.8729447926330623085" value="true" />
                <node role="left" roleId="k146.6307143892175911067" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860737" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
                <node role="right" roleId="k146.6307143892175911068" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860738" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860739" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860740" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860781" resolveInfo="itemCount" />
                  </node>
                </node>
              </node>
              <node role="body" roleId="k146.8729447926330241139" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860741" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860742" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860743" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860744" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860745" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="since 'result' is only used by the reducer thread the synchronization of it is basically useless\n=&gt; apply lock ellision or at least lock coarsening" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860746" nodeInfo="ng">
                  <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860747" nodeInfo="ng">
                    <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860748" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860777" resolveInfo="result" />
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860749" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860750" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="tempResult" />
                      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860751" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860752" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860753" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860001" resolveInfo="queueSafeGet" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860754" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860785" resolveInfo="queue" />
                        </node>
                        <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860755" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860756" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860750" resolveInfo="tempResult" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860757" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860758" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860759" nodeInfo="ng">
                          <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="4470518958313860760" nodeInfo="ng">
                            <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860761" nodeInfo="ng">
                              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860750" resolveInfo="tempResult" />
                            </node>
                            <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860762" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860763" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860764" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860777" resolveInfo="result" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860765" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860777" resolveInfo="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860766" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860767" nodeInfo="ng">
          <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860768" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860769" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860789" resolveInfo="isFullFlag" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860770" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860771" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860772" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860773" nodeInfo="ng">
                  <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.FalseLiteral" typeId="mj1l.8860443239512128099" id="4470518958313860774" nodeInfo="ng" />
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860775" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860789" resolveInfo="isFullFlag" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860776" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860777" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860778" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860779" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860780" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860781" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="itemCount" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860782" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860783" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860784" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860785" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860786" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860787" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860788" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313859882" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860789" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="isFullFlag" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860790" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860791" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.BooleanType" typeId="mj1l.8860443239512128058" id="4470518958313860792" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860793" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904297826_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860794" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiBlock" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860795" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860796" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mapCounter" />
          <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860797" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860798" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="0" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="4470518958313860799" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="4470518958313860800" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860801" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860802" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860931" resolveInfo="start" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860803" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860804" nodeInfo="ng">
              <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860805" nodeInfo="ng">
                <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860806" nodeInfo="ng">
                  <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860807" nodeInfo="ng">
                    <property name="escapedValue" nameId="87nw.2557074442922438158" value="'resultQueue' need not be synchronized since it is never changed =&gt; apply lock ellision" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860808" nodeInfo="ng">
              <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860809" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860810" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860811" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860812" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860813" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313859925" resolveInfo="queueSafeAdd" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860814" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860815" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860816" nodeInfo="ng">
                          <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860250" resolveInfo="queue" />
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860817" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860818" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860819" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="4470518958313860820" nodeInfo="ng">
                      <link role="function" roleId="x27k.5950410542643524493" targetNodeId="4470518958313860941" resolveInfo="calcPiItem" />
                      <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860821" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860800" resolveInfo="i" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860822" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860823" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="4470518958313860824" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860825" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860796" resolveInfo="mapCounter" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="4470518958313860826" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313860827" nodeInfo="ng">
              <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860828" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860829" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860830" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860831" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860832" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="the two following syncs could be merged into one =&gt; coarsen!\n'itemCount' will not be accessed by the reducer before a change of 'isFull' =&gt; lock ellision\nactually both 'itemCount' and 'isFull' need not be locked since their container is always locked \nfirst =&gt; lock ellision (either the two members or resultQueue itself)" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860833" nodeInfo="ng">
                  <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860834" nodeInfo="ng">
                    <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860835" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                    </node>
                  </node>
                  <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860836" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="itemCount" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860837" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860838" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860839" nodeInfo="ng">
                          <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860247" resolveInfo="itemCount" />
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860840" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860841" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860842" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860843" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860844" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860845" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860846" nodeInfo="ng">
                          <node role="value" roleId="6i3o.3570654511858679851" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860847" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860796" resolveInfo="mapCounter" />
                          </node>
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860848" nodeInfo="ng">
                          <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860836" resolveInfo="itemCount" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860849" nodeInfo="ng">
                  <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860850" nodeInfo="ng">
                    <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860851" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                    </node>
                  </node>
                  <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860852" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="isFull" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860853" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860854" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860855" nodeInfo="ng">
                          <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860856" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860857" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860858" nodeInfo="ng">
                            <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860859" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860860" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860861" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="4470518958313860862" nodeInfo="ng">
                          <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860863" nodeInfo="ng" />
                        </node>
                        <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860864" nodeInfo="ng">
                          <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860852" resolveInfo="isFull" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860865" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="4470518958313860866" nodeInfo="ng">
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860867" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860796" resolveInfo="mapCounter" />
                    </node>
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860868" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860869" nodeInfo="ng">
                  <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860870" nodeInfo="ng">
                    <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860871" nodeInfo="ng">
                      <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860872" nodeInfo="ng">
                        <property name="escapedValue" nameId="87nw.2557074442922438158" value="busy wait until the queue is emptied by the reducer" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="4470518958313860873" nodeInfo="ng">
                  <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860874" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.CommentStatement" typeId="c4fa.1679452829930336984" id="4470518958313860875" nodeInfo="ng">
                      <node role="textblock" roleId="c4fa.8624890525768479139" type="vs0r.TextBlock" typeId="vs0r.8375407818529178006" id="4470518958313860876" nodeInfo="ng">
                        <node role="text" roleId="vs0r.8375407818529178007" type="87nw.Text" typeId="87nw.2557074442922380897" id="4470518958313860877" nodeInfo="ng">
                          <node role="words" roleId="87nw.2557074442922392302" type="87nw.Word" typeId="87nw.2557074442922438156" id="4470518958313860878" nodeInfo="ng">
                            <property name="escapedValue" nameId="87nw.2557074442922438158" value="again, one unnecessary synchronization" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="4470518958313860879" nodeInfo="ng">
                      <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResource" typeId="6i3o.6553204290893807643" id="4470518958313860880" nodeInfo="ng">
                        <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860881" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                        </node>
                      </node>
                      <node role="resources" roleId="6i3o.6553204290894227497" type="6i3o.SyncResourceNamed" typeId="6i3o.6288388922742659454" id="4470518958313860882" nodeInfo="ng">
                        <property name="name" nameId="tpck.1169194664001" value="isFull" />
                        <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860883" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860884" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="4470518958313860885" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="4470518958313860253" resolveInfo="isFull" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860886" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860887" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860888" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860935" resolveInfo="resultQueue" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860889" nodeInfo="ng">
                        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="4470518958313860890" nodeInfo="ng">
                          <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860891" nodeInfo="ng">
                            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="4470518958313860892" nodeInfo="ng" />
                          </node>
                          <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.NotExpression" typeId="mj1l.3830958861296781575" id="4470518958313860893" nodeInfo="ng">
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="4470518958313860894" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="4470518958313860895" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncResourceRef" typeId="6i3o.6288388922743435028" id="4470518958313860896" nodeInfo="ng">
                                <link role="syncResource" roleId="6i3o.6288388922743435132" targetNodeId="4470518958313860882" resolveInfo="isFull" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="4470518958313860897" nodeInfo="ng">
                      <property name="name" nameId="tpck.1169194664001" value="sleepingTime" />
                      <node role="type" roleId="mj1l.318113533128716676" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="4470518958313860898" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                        <property name="requiredStdHeader" nameId="c4fa.3529929552243667341" value="&lt;time.h&gt;" />
                        <node role="dummyType" roleId="c4fa.3529929552243667343" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860899" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860900" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860901" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="struct timespec" />
                        </node>
                      </node>
                      <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="4470518958313860902" nodeInfo="ng">
                        <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;time.h&gt;" />
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860903" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="(struct timespec){ .tv_nsec =" />
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AnyNodeItem" typeId="c4fa.745648737914844472" id="4470518958313860904" nodeInfo="ng">
                          <node role="theNode" roleId="c4fa.745648737914844473" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860905" nodeInfo="ng">
                            <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313860243" resolveInfo="DELAY" />
                          </node>
                        </node>
                        <node role="dummyType" roleId="c4fa.6275956088646286745" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860906" nodeInfo="ng">
                          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860907" nodeInfo="ng">
                            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                          </node>
                        </node>
                        <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="4470518958313860908" nodeInfo="ng">
                          <property name="text" nameId="c4fa.3830958861296879114" value="}" />
                        </node>
                      </node>
                    </node>
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="4470518958313860909" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="4470518958313860910" nodeInfo="ng">
                        <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="nanosleep" />
                        <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;time.h&gt;" />
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="4470518958313860911" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860912" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860897" resolveInfo="sleepingTime" />
                          </node>
                        </node>
                        <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860913" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="4470518958313860914" nodeInfo="ng" />
                </node>
              </node>
              <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.OrExpression" typeId="mj1l.8399455261460717642" id="4470518958313860915" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313860916" nodeInfo="ng">
                  <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.MinusExpression" typeId="mj1l.5763383285156373018" id="4470518958313860917" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860918" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860919" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860933" resolveInfo="end" />
                    </node>
                  </node>
                  <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860920" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860800" resolveInfo="i" />
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="4470518958313860921" nodeInfo="ng">
                  <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860922" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860796" resolveInfo="mapCounter" />
                  </node>
                  <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.MinusExpression" typeId="mj1l.5763383285156373018" id="4470518958313860923" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860924" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="4470518958313860925" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="4470518958313859877" resolveInfo="QUEUESIZE" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="4470518958313860926" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860927" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860933" resolveInfo="end" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860928" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860800" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="4470518958313860929" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="4470518958313860930" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="4470518958313860800" resolveInfo="i" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860931" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="start" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860932" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860933" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="end" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860934" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860935" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="4470518958313860936" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="4470518958313860937" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="4470518958313860938" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="4470518958313860246" resolveInfo="FlaggedQueue" />
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313860939" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="4470518958313860940" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904405744_3" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="4470518958313860941" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiItem" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <property name="inline" nameId="x27k.5679441017213716505" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="4470518958313860942" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="4470518958313860943" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.MultiExpression" typeId="mj1l.5763383285156373020" id="4470518958313860944" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="4470518958313860945" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.DivExpression" typeId="mj1l.5763383285156373022" id="4470518958313860946" nodeInfo="ng">
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="4470518958313860947" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="pow" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;math.h&gt;" />
                  <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860948" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="-1.0" />
                  </node>
                  <node role="arguments" roleId="c4fa.3108382027639948855" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860949" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860958" resolveInfo="index" />
                  </node>
                  <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="4470518958313860950" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                </node>
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="4470518958313860951" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="4470518958313860952" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860953" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="1.0" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.MultiExpression" typeId="mj1l.5763383285156373020" id="4470518958313860954" nodeInfo="ng">
                      <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="4470518958313860955" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="4470518958313860958" resolveInfo="index" />
                      </node>
                      <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860956" nodeInfo="ng">
                        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                        <property name="value" nameId="mj1l.2212975673976043696" value="2.0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="4470518958313860957" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="4.0" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313860958" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="index" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860959" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313860960" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="4470518958313860961" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="4470518958313859876" resolveInfo="queue" />
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="4470518958313860962" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="4470518958313861026" resolveInfo="stdio" />
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="4470518958313860963" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="4470518958313861020" resolveInfo="myFloat" />
    </node>
  </root>
  <root type="mj1l.TypeSizeConfiguration" typeId="mj1l.3335993110369795380" id="4470518958313860964" nodeInfo="ng">
    <node role="pointerDiffType" roleId="mj1l.3813668170744198630" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860965" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="sizeTType" roleId="mj1l.8863019357864392147" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860966" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="vaList" roleId="mj1l.5598157691785092886" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860967" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="minFloatValue" roleId="mj1l.6658270785788810330" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="4470518958313860968" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="minDoubleValue" roleId="mj1l.6658270785788810349" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="4470518958313860969" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxFloatValue" roleId="mj1l.6658270785788810029" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="4470518958313860970" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxDoubleValue" roleId="mj1l.6658270785788810339" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="4470518958313860971" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860972" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="4470518958313860973" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="4470518958313860974" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860975" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.ShortType" typeId="mj1l.3335993110369949928" id="4470518958313860976" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int16tType" typeId="mj1l.8463282783691618435" id="4470518958313860977" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860978" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="4470518958313860979" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860980" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860981" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongType" typeId="mj1l.86532984527104137" id="4470518958313860982" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="4470518958313860983" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860984" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongLongType" typeId="mj1l.8463282783691596316" id="4470518958313860985" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int64tType" typeId="mj1l.8463282783691618445" id="4470518958313860986" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860987" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedCharType" typeId="mj1l.8463282783691492716" id="4470518958313860988" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt8tType" typeId="mj1l.8463282783691618461" id="4470518958313860989" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860990" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedShortType" typeId="mj1l.595416243537320771" id="4470518958313860991" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt16tType" typeId="mj1l.8463282783691618466" id="4470518958313860992" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860993" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedIntType" typeId="mj1l.8463282783691492730" id="4470518958313860994" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860995" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860996" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="4470518958313860997" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="4470518958313860998" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="4470518958313860999" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongLongType" typeId="mj1l.8463282783691618471" id="4470518958313861000" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt64tType" typeId="mj1l.8463282783691618456" id="4470518958313861001" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="4470518958313861002" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="4470518958313861003" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="4470518958313861004" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="4470518958313861005" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="4470518958313861006" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="4470518958313861007" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="4470518958313861008" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313861009" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313861010" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
  </root>
  <root type="51wr.BuildConfiguration" typeId="51wr.7717755763392524104" id="4470518958313861011" nodeInfo="ng">
    <node role="binaries" roleId="51wr.5046689135694070731" type="51wr.Executable" typeId="51wr.5046689135693761554" id="4470518958313861012" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="pi" />
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="4470518958313879437" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="4470518958313859876" resolveInfo="queue" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="4470518958313879452" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="4470518958313860230" resolveInfo="pi" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="4470518958313879457" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="4470518958313861020" resolveInfo="myFloat" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="4470518958313879462" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="4470518958313861026" resolveInfo="stdio" />
      </node>
    </node>
    <node role="target" roleId="51wr.5323740605968447026" type="51wr.DesktopPlatform" typeId="51wr.5323740605968447022" id="4470518958313861017" nodeInfo="ng">
      <property name="compiler" nameId="51wr.5323740605968447024" value="gcc" />
      <property name="compilerOptions" nameId="51wr.5323740605968447025" value="-std=c99" />
      <property name="debugOptions" nameId="51wr.2736179788492003937" value="-g" />
    </node>
    <node role="configurationItems" roleId="vs0r.4459718605982007338" type="k146.ReportingConfiguration" typeId="k146.4459718605982051949" id="4470518958313861018" nodeInfo="ng">
      <node role="strategy" roleId="k146.4459718605982051999" type="k146.PrintfReportingStrategy" typeId="k146.4459718605982051980" id="4470518958313861019" nodeInfo="ng" />
    </node>
  </root>
  <root type="x27k.ExternalModule" typeId="x27k.6116558314501417921" id="4470518958313861020" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="myFloat" />
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="4470518958313861021" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;float.h&gt;" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalVariableDeclaration" typeId="x27k.6610873504380335822" id="4470518958313861022" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="LDBL_MAX" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313861023" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalVariableDeclaration" typeId="x27k.6610873504380335822" id="4470518958313861024" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="LDBL_MIN" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="4470518958313861025" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
  </root>
  <root type="x27k.ExternalModule" typeId="x27k.6116558314501417921" id="4470518958313861026" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="stdio" />
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="4470518958313861027" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="printf" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <property name="hasEllipsis" nameId="x27k.9066372830132870213" value="true" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="4470518958313861028" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="4470518958313861029" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="string" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.StringType" typeId="yq40.6113173064528067332" id="4470518958313861030" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="4470518958313861031" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;stdio.h&gt;" />
    </node>
  </root>
</model>


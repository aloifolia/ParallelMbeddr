<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:079b4467-a2ed-4c80-bc27-a827df48bb1f(OriginalExamples.pi_precise_parallel2)">
  <persistence version="8" />
  <language namespace="023e30f7-586d-416b-97aa-7d26dae53e75(parallelization)" />
  <devkit namespace="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  <import index="6i3o" modelUID="r:af54e311-659f-4265-b558-862058cfed70(parallelization.structure)" version="30" implicit="yes" />
  <import index="c4fa" modelUID="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" version="9" implicit="yes" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" implicit="yes" />
  <import index="yq40" modelUID="r:152b3fc0-83a1-4bab-a8cd-565eb8483785(com.mbeddr.core.pointers.structure)" version="5" implicit="yes" />
  <import index="clbe" modelUID="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" version="13" implicit="yes" />
  <import index="mj1l" modelUID="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" version="33" implicit="yes" />
  <import index="x27k" modelUID="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" version="9" implicit="yes" />
  <import index="51wr" modelUID="r:b31f1c3c-99aa-4f1e-a329-cba27efb1a6b(com.mbeddr.core.buildconfig.structure)" version="1" implicit="yes" />
  <import index="vs0r" modelUID="r:f7764ca4-8c75-4049-922b-08516400a727(com.mbeddr.core.base.structure)" version="25" implicit="yes" />
  <import index="k146" modelUID="r:5209fc71-bade-45c9-9079-f2d474f0d6ca(com.mbeddr.core.util.structure)" version="21" implicit="yes" />
  <root type="x27k.ExternalModule" typeId="x27k.6116558314501417921" id="8001979070700482289" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="gmp" />
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="8001979070700482290" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;stdio.h&gt;" />
    </node>
    <node role="descriptors" roleId="x27k.6116558314501417978" type="x27k.HeaderDescriptor" typeId="x27k.6116558314501417952" id="8001979070700482291" nodeInfo="ng">
      <property name="path" nameId="x27k.6116558314501417936" value="&lt;gmp.h&gt;" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070700482292" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_t" />
      <node role="original" roleId="clbe.6116558314501347862" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="8001979070706606587" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <property name="requiredStdHeader" nameId="c4fa.3529929552243667341" value="&lt;gmp.h&gt;" />
        <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070706612529" nodeInfo="ng">
          <property name="text" nameId="c4fa.3830958861296879114" value="mpf_t" />
        </node>
        <node role="dummyType" roleId="c4fa.3529929552243667343" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070710522879" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="8001979070710521377" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070710521629" nodeInfo="ng">
              <property name="text" nameId="c4fa.3830958861296879114" value="__mpf_struct" />
            </node>
          </node>
          <node role="sizeExpr" roleId="yq40.1452920870317474611" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070710524135" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070700482294" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mp_bitcnt_t" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700482295" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070725845640" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mp_exp_t" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070725845641" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.TypeDef" typeId="clbe.6116558314501347857" id="8001979070700482296" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="FILE" />
      <node role="original" roleId="clbe.6116558314501347862" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482297" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482298" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402907626078_8" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482299" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_set_default_prec" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482300" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="prec" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482301" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482294" resolveInfo="mp_bitcnt_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482302" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700858907" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403016818250_37" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482303" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482304" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482305" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482306" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700897983" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_clear" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700897444" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700898988" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="x" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700898987" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482313" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402909344232_16" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700864072" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_set" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700863656" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700864946" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700864945" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700865717" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070706306392" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070706305148" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_set_ui" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070706305149" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070706305150" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070706305151" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070706305152" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070706305153" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700860269" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403016826203_40" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482314" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482315" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482316" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482317" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482318" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482319" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482320" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_ui" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482321" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482322" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482323" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482324" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070700482325" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482326" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_d" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482327" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482328" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482329" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482330" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070700482331" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482332" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_init_set_str" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482333" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482334" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482335" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482336" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="str" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482337" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700482338" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482339" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070700482340" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482341" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402907759602_10" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482342" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_add" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482343" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482344" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482345" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482346" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482347" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482348" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482349" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482350" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_add_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482351" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482352" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482353" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482354" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482355" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070700482356" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482357" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482358" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_sub" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482359" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482360" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482361" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482362" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482363" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482364" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482365" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482366" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_mul" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482367" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482368" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482369" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482370" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482371" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482372" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482373" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482374" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_mul_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482375" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482376" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482377" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482378" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482379" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070700482380" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482381" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482382" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_div" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482383" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482384" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482385" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482386" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482387" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482388" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482389" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482390" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_pow_ui" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482391" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="rop" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482392" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482393" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op1" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482394" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482395" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op2" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070700482396" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482397" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482398" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402908894115_12" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482399" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_out_str" />
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070700482400" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482401" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="stream" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482402" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482403" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482296" resolveInfo="FILE" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482404" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070700482405" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482406" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="n_digits" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070700482407" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482408" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482409" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.FunctionPrototype" typeId="x27k.6437088627575724000" id="8001979070700482410" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="mpf_get_str" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482411" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700482412" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482413" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="str" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482414" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700482415" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482416" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="expptr" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482417" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070725861912" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070725845640" resolveInfo="mp_exp_t" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482419" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="base" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070700482420" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482421" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="n_digits" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.SizeT" typeId="mj1l.8863019357864392148" id="8001979070700482422" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482423" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="op" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700482424" nodeInfo="ng">
          <property name="const" nameId="mj1l.2941277002445651368" value="true" />
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
  </root>
  <root type="x27k.ImplementationModule" typeId="x27k.6437088627575722830" id="8001979070700482069" nodeInfo="ng">
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
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700482074" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PRECISION" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482075" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="64" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700482076" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="BASE" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482077" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="10" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700482078" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="PI160" />
      <node role="value" roleId="x27k.3376775282622233992" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070700482079" nodeInfo="ng">
        <property name="value" nameId="yq40.6113173064526131578" value="3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679821480865132823066470938446095505822317253594081284811174502" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070701610940" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="MAPPERCOUNT" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701621050" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="2" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482081" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904699014_5" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700482082" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="main" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700482083" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482084" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482085" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482299" resolveInfo="mpf_set_default_prec" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700482086" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482074" resolveInfo="PRECISION" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700482087" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482088" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pi160" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070702406317" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482090" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482091" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482332" resolveInfo="mpf_init_set_str" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482092" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482088" resolveInfo="pi160" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.UnsafeCastExpression" typeId="mj1l.7664133259366168728" id="8001979070700482093" nodeInfo="ng">
              <node role="expr" roleId="mj1l.7664133259366168729" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700482094" nodeInfo="ng">
                <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482078" resolveInfo="PI160" />
              </node>
              <node role="targetType" roleId="mj1l.7664133259366168730" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700482095" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070700482096" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700482097" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482076" resolveInfo="BASE" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700482128" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701324214" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="queue" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070701335067" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070702817349" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701325899" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701325898" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070701248801" resolveInfo="queueInit" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070701327278" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701326076" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701324214" resolveInfo="queue" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701913059" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="queuePointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070701932344" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070701913060" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070702642041" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070701951611" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701961256" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701324214" resolveInfo="queue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070701350522" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701367410" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="counter" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070701367406" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070701682542" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070717050202" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="counterPointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070717070142" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070717050198" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070717060322" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070717430844" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070717449443" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701367410" resolveInfo="counter" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070701439091" nodeInfo="ng">
          <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070701446868" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701454577" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701367410" resolveInfo="counter" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701439093" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701454592" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701454616" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="8001979070701458585" nodeInfo="ng">
                  <node role="value" roleId="6i3o.3570654511858679851" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701466537" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                  </node>
                </node>
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701454591" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701367410" resolveInfo="counter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070757199094" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070757105556" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mapperTasks" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070757105557" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="sizeExpr" roleId="yq40.1452920870317474611" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070757105560" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070701610940" resolveInfo="MAPPERCOUNT" />
            </node>
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.TaskType" typeId="6i3o.1304213873205049565" id="8001979070757495488" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="returnType" roleId="6i3o.1304213873205049856" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070757520071" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701491764" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="mappers" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070701538209" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.FutureType" typeId="6i3o.1304213873205054831" id="8001979070701491760" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="returnType" roleId="6i3o.1304213873206873722" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070701499517" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="sizeExpr" roleId="yq40.1452920870317474611" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070701622212" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070701610940" resolveInfo="MAPPERCOUNT" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070701570515" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070701578276" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070701578274" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701586015" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701570517" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070757546208" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070757596613" nodeInfo="ng">
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070757546498" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757546207" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070757105556" resolveInfo="mapperTasks" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757571537" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
                  </node>
                </node>
                <node role="right" roleId="mj1l.8860443239512128065" type="6i3o.Task" typeId="6i3o.1304213873204721600" id="8001979070757621670" nodeInfo="ng">
                  <node role="expression" roleId="6i3o.2744793885328637740" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070757621671" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700543954" resolveInfo="map" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070757621672" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482072" resolveInfo="THRESHOLD" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757621673" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070717050202" resolveInfo="counterPointer" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757621674" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701913059" resolveInfo="queuePointer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701639631" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070701656634" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701710284" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.Future" typeId="6i3o.1304213873204973711" id="8001979070701723111" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070757697430" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757672166" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070757105556" resolveInfo="mapperTasks" />
                    </node>
                    <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757721873" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
                    </node>
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070701639909" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701639630" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701491764" resolveInfo="mappers" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701648286" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070757748555" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070757913769" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.TaskClear" typeId="6i3o.8001979070750286289" id="8001979070757938772" nodeInfo="ng" />
                <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070757748853" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757748554" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070757105556" resolveInfo="mapperTasks" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070757773437" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070701593858" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070701621840" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070701610940" resolveInfo="MAPPERCOUNT" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701586141" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070701630510" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701638658" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701578276" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070701827180" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701845601" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="result" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070716238594" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070716255298" nodeInfo="ng">
              <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070727118718" nodeInfo="ng">
          <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070727139603" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070727159929" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701845601" resolveInfo="result" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070727118720" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070727273878" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070726983785" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482320" resolveInfo="mpf_init_set_ui" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070727004807" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070727023076" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726994538" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701845601" resolveInfo="result" />
                  </node>
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070727076089" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070715862898" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="resultPointer" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070715864797" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070715862894" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070715863197" nodeInfo="ng">
                <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070715883753" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070715883983" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701845601" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070701873605" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070760906593" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="reducerTask" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.TaskType" typeId="6i3o.1304213873205049565" id="8001979070760906589" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="returnType" roleId="6i3o.1304213873205049856" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070760969211" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070760956906" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070760932283" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="6i3o.Task" typeId="6i3o.1304213873204721600" id="8001979070701809127" nodeInfo="ng">
            <node role="expression" roleId="6i3o.2744793885328637740" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701818060" nodeInfo="ng">
              <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070701195999" resolveInfo="reduce" />
              <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070725725553" nodeInfo="ng">
                <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070725337628" resolveInfo="BLOCKCOUNT" />
              </node>
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070715885800" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070715862898" resolveInfo="resultPointer" />
              </node>
              <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070702595142" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701913059" resolveInfo="queuePointer" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070701745821" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="reducer" />
          <node role="type" roleId="mj1l.318113533128716676" type="6i3o.FutureType" typeId="6i3o.1304213873205054831" id="8001979070701745817" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="returnType" roleId="6i3o.1304213873206873722" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732711866" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732711862" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070732687403" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070702048915" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.Future" typeId="6i3o.1304213873204973711" id="8001979070732736348" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070761119659" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070760906593" resolveInfo="reducerTask" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070761219752" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070761232544" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.TaskClear" typeId="6i3o.8001979070750286289" id="8001979070761268377" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070761219751" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070760906593" resolveInfo="reducerTask" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070702073387" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070702083168" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070702083169" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070702083170" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070702083171" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070702083172" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070702136912" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070702156580" nodeInfo="ng">
                <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.FutureJoin" typeId="6i3o.1304213873204985423" id="8001979070702166415" nodeInfo="ng" />
                <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070702136968" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070702136911" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701491764" resolveInfo="mappers" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070702146661" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070702083169" resolveInfo="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070702083186" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070702083187" nodeInfo="ng">
              <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070701610940" resolveInfo="MAPPERCOUNT" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070702083188" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070702083169" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070702083189" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070702083190" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070702083169" resolveInfo="i" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070732835139" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="pointerToErrorString" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732881485" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732858736" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070732835137" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070733066698" nodeInfo="ng">
            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.FutureResult" typeId="6i3o.2744793885339890637" id="8001979070733100715" nodeInfo="ng" />
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070733043267" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701745821" resolveInfo="reducer" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070733502374" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070733502372" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070733746874" nodeInfo="ng">
              <property name="value" nameId="yq40.6113173064526131578" value="total error: %s\n" />
            </node>
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="8001979070733823449" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070733796914" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070732835139" resolveInfo="pointerToErrorString" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070726841627" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070733330042" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070733330040" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="free" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdlib.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.DerefExpr" typeId="yq40.279446265608463015" id="8001979070733402413" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070733426685" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070732835139" resolveInfo="pointerToErrorString" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070733427829" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070733427830" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="free" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdlib.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070733427832" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070732835139" resolveInfo="pointerToErrorString" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070726830791" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070726830792" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070726717529" resolveInfo="queueClear" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070726830793" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726830794" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701324214" resolveInfo="queue" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070700482129" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482130" nodeInfo="ng">
            <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
            <property name="value" nameId="mj1l.2212975673976043696" value="0" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700482131" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482132" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argc" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700482133" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482134" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="argv" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070700482135" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="yq40.StringType" typeId="yq40.6113173064528067332" id="8001979070700482136" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482137" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403011396717_28" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700482138" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcError" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700482139" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482140" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="error" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700739030" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482142" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482143" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482144" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482140" resolveInfo="error" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482145" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482146" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482358" resolveInfo="mpf_sub" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482147" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482140" resolveInfo="error" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482148" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482167" resolveInfo="correctValue" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482149" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482169" resolveInfo="approxedValue" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070728157067" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070735849133" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070735875103" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070735418445" resolveInfo="numberToString" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735927937" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482140" resolveInfo="error" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482167" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="correctValue" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700731798" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482169" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="approxedValue" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700735414" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070729923421" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070729901006" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070735310461" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403286179876_58" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070735418445" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="numberToString" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070735418447" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070735581829" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="exponent" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070735581830" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070725845640" resolveInfo="mp_exp_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070735581831" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="rawResult" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070735581832" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070735581833" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070735581834" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482410" resolveInfo="mpf_get_str" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.NullExpression" typeId="yq40.5308710777891643206" id="8001979070735581835" nodeInfo="ng" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070735581836" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581837" nodeInfo="ng">
                <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
              </node>
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581838" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="10" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581839" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070735795918" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070735448467" resolveInfo="number" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070735581841" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="result" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070735581842" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070735581843" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
          <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070735581844" nodeInfo="ng">
            <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="malloc" />
            <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdlib.h&gt;" />
            <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.MultiExpression" typeId="mj1l.5763383285156373020" id="8001979070735581845" nodeInfo="ng">
              <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070735581846" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070740135916" nodeInfo="ng">
                  <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070735581851" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581852" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="3" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070735581853" nodeInfo="ng">
                      <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strlen" />
                      <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;string.h&gt;" />
                      <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581854" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                      </node>
                      <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070735581855" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      </node>
                    </node>
                  </node>
                  <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070740160335" nodeInfo="ng">
                    <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="abs" />
                    <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;math.h&gt;" />
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.CastExpression" typeId="mj1l.6610873504380029780" id="8001979070740160336" nodeInfo="ng">
                      <node role="expr" roleId="mj1l.6610873504380029782" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070740160337" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                      </node>
                      <node role="targetType" roleId="mj1l.6610873504380029790" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070740160338" nodeInfo="ng">
                        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                      </node>
                    </node>
                    <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070740160339" nodeInfo="ng">
                      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.CastExpression" typeId="mj1l.6610873504380029780" id="8001979070735581856" nodeInfo="ng">
                <node role="targetType" roleId="mj1l.6610873504380029790" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070735581857" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
                <node role="expr" roleId="mj1l.6610873504380029782" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="8001979070735581858" nodeInfo="ng">
                  <property name="requiredStdHeader" nameId="c4fa.6275956088645591175" value="&lt;stddef.h&gt;" />
                  <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070735581859" nodeInfo="ng">
                    <property name="text" nameId="c4fa.3830958861296879114" value="sizeof(char)" />
                  </node>
                  <node role="dummyType" roleId="c4fa.6275956088646286745" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070735581860" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                </node>
              </node>
            </node>
            <node role="dummyType" roleId="c4fa.3108382027639948852" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070735581861" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070735581862" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="8001979070736327427" nodeInfo="ng">
          <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070736327428" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070735581863" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070735581864" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.CharLiteral" typeId="mj1l.1664480272136214700" id="8001979070735581865" nodeInfo="ng">
                  <property name="value" nameId="mj1l.1664480272136214701" value="0" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070735581866" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581867" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581868" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070735581869" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070735581870" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.CharLiteral" typeId="mj1l.1664480272136214700" id="8001979070735581871" nodeInfo="ng">
                  <property name="value" nameId="mj1l.1664480272136214701" value="." />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070735581872" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581873" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581874" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070735581875" nodeInfo="ng">
              <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070735581876" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="i" />
                <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070735581877" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
                <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581878" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
              <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070735581879" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070735581880" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070735581881" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.CharLiteral" typeId="mj1l.1664480272136214700" id="8001979070735581882" nodeInfo="ng">
                      <property name="value" nameId="mj1l.1664480272136214701" value="0" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070735581883" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581884" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                      </node>
                      <node role="index" roleId="yq40.6282313788306893059" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070735581885" nodeInfo="ng">
                        <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581886" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="2" />
                        </node>
                        <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581887" nodeInfo="ng">
                          <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581876" resolveInfo="i" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070735581888" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.UnaryMinusExpression" typeId="mj1l.3976803464656531170" id="8001979070735581889" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581890" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581891" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581876" resolveInfo="i" />
                </node>
              </node>
              <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070735581892" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581893" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581876" resolveInfo="i" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070739579061" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="rawResultLen" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070739579059" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070739603981" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strlen" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739614393" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                </node>
                <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070739625905" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070739692776" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="resultLen" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070739692777" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070739763347" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070739858836" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="abs" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;math.h&gt;" />
                  <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.CastExpression" typeId="mj1l.6610873504380029780" id="8001979070739763348" nodeInfo="ng">
                    <node role="expr" roleId="mj1l.6610873504380029782" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739763349" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                    </node>
                    <node role="targetType" roleId="mj1l.6610873504380029790" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070739763350" nodeInfo="ng">
                      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    </node>
                  </node>
                  <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070740008785" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070739763351" nodeInfo="ng">
                  <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070739763352" nodeInfo="ng">
                    <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                    <property name="value" nameId="mj1l.2212975673976043696" value="3" />
                  </node>
                  <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070739763353" nodeInfo="ng">
                    <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strlen" />
                    <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;string.h&gt;" />
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739763354" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                    </node>
                    <node role="dummyType" roleId="c4fa.3108382027639948852" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070739763355" nodeInfo="ng">
                      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070738847972" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070738847970" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070738894528" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="resultLen:%d, rawResultLen:%d, starting at:%d\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739765317" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070739692776" resolveInfo="resultLen" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739646455" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070739579061" resolveInfo="rawResultLen" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070739766484" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.MinusExpression" typeId="mj1l.5763383285156373018" id="8001979070739766563" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070739766616" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070739766511" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="2" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070735581894" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070735581895" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strcpy" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070735581896" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070735581897" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581898" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                    </node>
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="mj1l.MinusExpression" typeId="mj1l.5763383285156373018" id="8001979070735581899" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581900" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070735581901" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="2" />
                    </node>
                  </node>
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735581902" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070736376098" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070736376101" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="0" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736351877" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
            </node>
          </node>
          <node role="elsePart" roleId="c4fa.3134547887598486571" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070736427458" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070736451719" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070736451720" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strncpy" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736526130" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736451727" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736527245" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070736528350" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070736577229" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.CharLiteral" typeId="mj1l.1664480272136214700" id="8001979070736601532" nodeInfo="ng">
                  <property name="value" nameId="mj1l.1664480272136214701" value="." />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070736528379" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736528349" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736552943" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070736650834" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070736650835" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="strcpy" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070736727054" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070736727055" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736727056" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
                    </node>
                  </node>
                  <node role="index" roleId="yq40.6282313788306893059" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070736727660" nodeInfo="ng">
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070736727663" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                    </node>
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736727662" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                    </node>
                  </node>
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070736778165" nodeInfo="ng">
                  <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070736802951" nodeInfo="ng">
                    <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736650837" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581831" resolveInfo="rawResult" />
                    </node>
                    <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070736827139" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581829" resolveInfo="exponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070735585645" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070735585787" nodeInfo="ng">
            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070735581841" resolveInfo="result" />
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070735448467" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="number" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070735448466" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070735580405" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070735580389" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700537023" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403015142149_30" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700543954" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="map" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700543956" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700825948" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="result" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700825947" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700630404" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700630824" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700630836" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700825948" resolveInfo="result" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070706520739" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="8001979070700594340" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700594341" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070737685246" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737685244" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070737685324" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="init calc: %d\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737685523" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="pthread_self" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;pthread.h&gt;" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700594378" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="start" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700594376" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700594424" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="end" />
              <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700594422" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700894186" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070700594944" nodeInfo="ng">
              <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070700594954" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700594958" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547784" resolveInfo="counter" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700594946" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700595394" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070700599390" nodeInfo="ng">
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700595393" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594378" resolveInfo="start" />
                    </node>
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700599781" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700600097" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700599517" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547784" resolveInfo="counter" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="8001979070716934800" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070716934801" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="8001979070716972763" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="8001979070716934864" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070716953814" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547319" resolveInfo="threshold" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070716934838" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594378" resolveInfo="start" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700602100" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="possibleEnd" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700602098" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070700602464" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700602747" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700595406" resolveInfo="BLOCKSIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700602444" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594378" resolveInfo="start" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700601069" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070700601309" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.TernaryExpression" typeId="mj1l.8729447926330528686" id="8001979070700607334" nodeInfo="ng">
                      <node role="thenExpr" roleId="mj1l.8729447926330528688" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700608016" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700602100" resolveInfo="possibleEnd" />
                      </node>
                      <node role="elseExpr" roleId="mj1l.8729447926330528689" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700608704" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547319" resolveInfo="threshold" />
                      </node>
                      <node role="condition" roleId="mj1l.8729447926330528687" type="mj1l.LessEqualsExpression" typeId="mj1l.8860443239512147451" id="8001979070726505599" nodeInfo="ng">
                        <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726505601" nodeInfo="ng">
                          <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700602100" resolveInfo="possibleEnd" />
                        </node>
                        <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070726505602" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547319" resolveInfo="threshold" />
                        </node>
                      </node>
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700601068" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594424" resolveInfo="end" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700615301" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700615708" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedSet" typeId="6i3o.3570654511858570918" id="8001979070700616533" nodeInfo="ng">
                      <node role="value" roleId="6i3o.3570654511858679851" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700617310" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594424" resolveInfo="end" />
                      </node>
                    </node>
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700615300" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700547784" resolveInfo="counter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070737820404" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070737820130" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737820131" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070737820132" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="start calc: %p\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737820133" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="pthread_self" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;pthread.h&gt;" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700871537" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700871536" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070706305148" resolveInfo="mpf_set_ui" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700877185" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700825948" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700888899" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700634766" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700634765" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482202" resolveInfo="calcPiBlock" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700635346" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700825948" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700635375" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594378" resolveInfo="start" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700635430" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700594424" resolveInfo="end" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070738100919" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070738100920" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070738100921" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="add calc result: %p\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070738100922" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="pthread_self" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;pthread.h&gt;" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701136698" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701136697" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700909076" resolveInfo="queueSafeAdd" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070702734226" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700548535" resolveInfo="resultQueue" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701138281" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700825948" resolveInfo="result" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070737687828" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737687829" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070737687830" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="stop calc: %p\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070737687831" nodeInfo="ng">
                  <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="pthread_self" />
                  <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;pthread.h&gt;" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="8001979070700594353" nodeInfo="ng" />
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070706524628" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070706532344" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070706532343" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700897983" resolveInfo="mpf_clear" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070706536583" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700825948" resolveInfo="result" />
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700540548" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700547319" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="threshold" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700547318" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700547784" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="counter" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700547876" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070700547780" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700547960" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700548535" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700786172" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070700548567" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070702862768" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070701183784" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403018357673_48" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070701195999" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="reduce" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070701201963" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="numberOfItems" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070701201964" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070701203845" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070715976118" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070715916882" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070715946319" nodeInfo="ng">
              <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070701201969" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="resultQueue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070701201970" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070701201971" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070702564387" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701196001" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070706359576" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="item" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070706359575" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070706393217" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070706393216" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070706394099" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070706359576" resolveInfo="item" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070732013896" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="error" />
          <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732013961" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070732013894" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070728070907" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070716015623" nodeInfo="ng">
          <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070716035087" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070716035091" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701203845" resolveInfo="result" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070716015625" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070701202165" nodeInfo="ng">
              <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070701202178" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="i" />
                <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070701202212" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
                <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701202228" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
              <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701202167" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070706404359" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701230675" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700969812" resolveInfo="queueSafeGet" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070702549325" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701201969" resolveInfo="resultQueue" />
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070706409304" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070706359576" resolveInfo="item" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701214969" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701214968" nodeInfo="ng">
                    <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482342" resolveInfo="mpf_add" />
                    <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070716093517" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070716113190" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701214983" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701203845" resolveInfo="result" />
                      </node>
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070716133724" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070716152704" nodeInfo="ng" />
                      <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701215012" nodeInfo="ng">
                        <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701203845" resolveInfo="result" />
                      </node>
                    </node>
                    <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070706434469" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070706359576" resolveInfo="item" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070701202396" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701202571" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701201963" resolveInfo="numberOfItems" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701202384" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701202178" resolveInfo="i" />
                </node>
              </node>
              <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070701202755" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701202959" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701202178" resolveInfo="i" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070735980674" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070725902172" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="resultString" />
              <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070725921400" nodeInfo="ng">
                <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070725902170" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
              </node>
              <node role="init" roleId="c4fa.4185783222026502647" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070736065417" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070735418445" resolveInfo="numberToString" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070736199413" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070736211518" nodeInfo="ng" />
                  <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070736089468" nodeInfo="ng">
                    <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701203845" resolveInfo="result" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070725992049" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070725992047" nodeInfo="ng">
                <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="printf" />
                <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;stdio.h&gt;" />
                <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.StringLiteral" typeId="yq40.6113173064526131575" id="8001979070726013658" nodeInfo="ng">
                  <property name="value" nameId="yq40.6113173064526131578" value="result: %s\n\n" />
                </node>
                <node role="arguments" roleId="c4fa.3108382027639948855" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726013893" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070725902172" resolveInfo="resultString" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070727815631" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700133480" nodeInfo="ng">
              <property name="name" nameId="tpck.1169194664001" value="pi160" />
              <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700133479" nodeInfo="ng">
                <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700218047" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700218046" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482332" resolveInfo="mpf_init_set_str" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700243206" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700133480" resolveInfo="pi160" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.UnsafeCastExpression" typeId="mj1l.7664133259366168728" id="8001979070700312166" nodeInfo="ng">
                  <node role="expr" roleId="mj1l.7664133259366168729" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700302619" nodeInfo="ng">
                    <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482078" resolveInfo="PI160" />
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
                  <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700482076" resolveInfo="BASE" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070731971841" nodeInfo="ng" />
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070732127571" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070732150285" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070732200457" nodeInfo="ng">
                  <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482138" resolveInfo="calcError" />
                  <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070732225878" nodeInfo="ng">
                    <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700133480" resolveInfo="pi160" />
                  </node>
                  <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070732270564" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070732292591" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070732259282" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701203845" resolveInfo="result" />
                    </node>
                  </node>
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070732386675" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070732013896" resolveInfo="error" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070727514215" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070706447937" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070706447936" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700897983" resolveInfo="mpf_clear" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070706450623" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070706359576" resolveInfo="item" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070732410826" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070732456234" nodeInfo="ng">
          <node role="expression" roleId="x27k.8967919205527146150" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070732478933" nodeInfo="ng">
            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070732013896" resolveInfo="error" />
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070732547763" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        <node role="baseType" roleId="c4fa.7763322639126652758" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070732536330" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482201" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904297826_1" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700482202" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiBlock" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700482203" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482209" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="piItem" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700760811" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482211" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482212" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482213" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482209" resolveInfo="piItem" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070700482204" nodeInfo="ng">
          <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070700482205" nodeInfo="ng">
            <property name="name" nameId="tpck.1169194664001" value="i" />
            <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700482206" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            </node>
            <node role="init" roleId="c4fa.4185783222026502647" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482207" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482230" resolveInfo="start" />
            </node>
          </node>
          <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700482208" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482214" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482215" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482236" resolveInfo="calcPiItem" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482216" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482209" resolveInfo="piItem" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482217" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482205" resolveInfo="i" />
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482218" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482219" nodeInfo="ng">
                <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482342" resolveInfo="mpf_add" />
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482220" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482228" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482221" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482228" resolveInfo="result" />
                </node>
                <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482222" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482209" resolveInfo="piItem" />
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070700482223" nodeInfo="ng">
            <node role="right" roleId="mj1l.8860443239512128065" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482224" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482232" resolveInfo="end" />
            </node>
            <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482225" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482205" resolveInfo="i" />
            </node>
          </node>
          <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070700482226" nodeInfo="ng">
            <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482227" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482205" resolveInfo="i" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482228" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700757213" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482230" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="start" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700482231" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482232" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="end" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700482233" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482234" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700482235" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1402904405744_3" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700482236" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="calcPiItem" />
      <property name="exported" nameId="x27k.1317894735999272944" value="false" />
      <property name="inline" nameId="x27k.5679441017213716505" value="false" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700482237" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482238" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="dividend" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700768073" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482240" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="base" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700771704" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482242" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482243" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482244" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482238" resolveInfo="dividend" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482245" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482246" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482326" resolveInfo="mpf_init_set_d" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482247" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482240" resolveInfo="base" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.UnaryMinusExpression" typeId="mj1l.3976803464656531170" id="8001979070700482248" nodeInfo="ng">
              <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482249" nodeInfo="ng">
                <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                <property name="value" nameId="mj1l.2212975673976043696" value="1.0" />
              </node>
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482250" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482251" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482390" resolveInfo="mpf_pow_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482252" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482238" resolveInfo="dividend" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482253" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482240" resolveInfo="base" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482254" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482285" resolveInfo="index" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070762857503" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700482256" nodeInfo="ng">
          <property name="name" nameId="tpck.1169194664001" value="divisor" />
          <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700775335" nodeInfo="ng">
            <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482258" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482259" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482326" resolveInfo="mpf_init_set_d" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482260" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482261" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="2.0" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482262" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482263" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482374" resolveInfo="mpf_mul_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482264" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482265" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482266" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482285" resolveInfo="index" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482267" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482268" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482350" resolveInfo="mpf_add_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482269" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482270" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482271" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="1" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700482272" nodeInfo="ng" />
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482273" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482274" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482382" resolveInfo="mpf_div" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482275" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482283" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482276" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482238" resolveInfo="dividend" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700482277" nodeInfo="ng">
              <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700482256" resolveInfo="divisor" />
            </node>
          </node>
        </node>
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700482278" nodeInfo="ng">
          <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070700482279" nodeInfo="ng">
            <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482374" resolveInfo="mpf_mul_ui" />
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482280" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482283" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700482281" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700482283" resolveInfo="piItem" />
            </node>
            <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700482282" nodeInfo="ng">
              <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
              <property name="value" nameId="mj1l.2212975673976043696" value="4" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482283" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="piItem" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700764442" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700482285" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="index" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070700482286" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700482287" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="8001979070700482288" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="8001979070700482289" resolveInfo="gmp" />
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="8001979070700658034" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="8001979070700644525" resolveInfo="queue" />
    </node>
  </root>
  <root type="x27k.ImplementationModule" typeId="x27k.6437088627575722830" id="8001979070700644525" nodeInfo="ng">
    <property name="name" nameId="tpck.1169194664001" value="queue" />
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.GlobalConstantDeclaration" typeId="x27k.3788988821851860886" id="8001979070700646123" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="QUEUESIZE" />
      <node role="value" roleId="x27k.3376775282622233992" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700646210" nodeInfo="ng">
        <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
        <property name="value" nameId="mj1l.2212975673976043696" value="10" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700646102" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403015924661_32" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="clbe.StructDeclaration" typeId="clbe.6394819151180597807" id="8001979070700644980" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="Queue" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="8001979070700645438" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="insertAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700645437" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="8001979070700645498" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="deleteAt" />
        <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700645496" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
        </node>
      </node>
      <node role="members" roleId="clbe.7099329415459888018" type="clbe.Member" typeId="clbe.5882395403881875736" id="8001979070700646032" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="data" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.ArrayType" typeId="yq40.5679441017214012545" id="8001979070710568462" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070710562929" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070710568124" nodeInfo="ng">
              <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
            </node>
          </node>
          <node role="sizeExpr" roleId="yq40.1452920870317474611" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070710573686" nodeInfo="ng">
            <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700646123" resolveInfo="QUEUESIZE" />
          </node>
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070701240997" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403018548828_50" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070701248801" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueInit" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070701251369" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070701251370" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070701251371" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070701251372" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701248803" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070701259935" nodeInfo="ng">
          <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070701259949" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701259953" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701251369" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701259937" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701252840" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070701255041" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701256342" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701253610" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070701254487" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645438" resolveInfo="insertAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701252884" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070701253162" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701252839" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701251369" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701263153" nodeInfo="ng">
              <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070701263154" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701263155" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701263156" nodeInfo="ng">
                  <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070701263818" nodeInfo="ng">
                    <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                  </node>
                  <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701263158" nodeInfo="ng">
                    <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070701263159" nodeInfo="ng" />
                    <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701263160" nodeInfo="ng">
                      <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701251369" resolveInfo="queue" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070701280416" nodeInfo="ng">
              <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070701280451" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="i" />
                <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070701280449" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
                <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070701280499" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
              <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070701280418" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070710606286" nodeInfo="ng">
                  <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessourceNamed" typeId="6i3o.6288388922742659454" id="8001979070710611289" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="slotI" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070710626212" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070710621297" nodeInfo="ng">
                        <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070710611291" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710611292" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070710611293" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700646032" resolveInfo="data" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710611294" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710611295" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070710611296" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070701251369" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                          <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070710611297" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701280451" resolveInfo="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070710606288" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070701290686" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070701290685" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700482303" resolveInfo="mpf_init" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710656039" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710661493" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncRessourceRef" typeId="6i3o.6288388922743435028" id="8001979070710651383" nodeInfo="ng">
                            <link role="syncRessource" roleId="6i3o.6288388922743435132" targetNodeId="8001979070710611289" resolveInfo="slotI" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070701280637" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070701280782" nodeInfo="ng">
                  <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700646123" resolveInfo="QUEUESIZE" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701280625" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701280451" resolveInfo="i" />
                </node>
              </node>
              <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070701281154" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070701284436" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070701280451" resolveInfo="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070701246173" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070726738515" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403269050741_55" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070726717529" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueClear" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070726717530" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070726717531" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070726717532" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070726717533" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070726717534" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070726717535" nodeInfo="ng">
          <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070726717536" nodeInfo="ng">
            <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070726717537" nodeInfo="ng">
              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070726717530" resolveInfo="queue" />
            </node>
          </node>
          <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070726717538" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ForStatement" typeId="c4fa.7254843406768596598" id="8001979070726717555" nodeInfo="ng">
              <node role="iterator" roleId="c4fa.7254843406768606784" type="c4fa.ForVarDecl" typeId="c4fa.7254843406768606755" id="8001979070726717556" nodeInfo="ng">
                <property name="name" nameId="tpck.1169194664001" value="i" />
                <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070726717557" nodeInfo="ng">
                  <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                  <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                </node>
                <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070726717558" nodeInfo="ng">
                  <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                  <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                </node>
              </node>
              <node role="body" roleId="c4fa.7254843406768606771" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070726717559" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070726717560" nodeInfo="ng">
                  <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessourceNamed" typeId="6i3o.6288388922742659454" id="8001979070726717561" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="slotI" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070726717562" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070726717563" nodeInfo="ng">
                        <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070726717564" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070726717565" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070726717566" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700646032" resolveInfo="data" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070726717567" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070726717568" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070726717569" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070726717530" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                          <node role="index" roleId="yq40.6282313788306893059" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726717570" nodeInfo="ng">
                            <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070726717556" resolveInfo="i" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070726717571" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070726717572" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070726717573" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700897983" resolveInfo="mpf_clear" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070726717574" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070726717575" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncRessourceRef" typeId="6i3o.6288388922743435028" id="8001979070726717576" nodeInfo="ng">
                            <link role="syncRessource" roleId="6i3o.6288388922743435132" targetNodeId="8001979070726717561" resolveInfo="slotI" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="condition" roleId="c4fa.7254843406768606787" type="mj1l.LessExpression" typeId="mj1l.8860443239512147449" id="8001979070726717577" nodeInfo="ng">
                <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070726717578" nodeInfo="ng">
                  <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700646123" resolveInfo="QUEUESIZE" />
                </node>
                <node role="left" roleId="mj1l.8860443239512128064" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726717579" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070726717556" resolveInfo="i" />
                </node>
              </node>
              <node role="incr" roleId="c4fa.7254843406768606790" type="mj1l.PreIncrementExpression" typeId="mj1l.4375898003726285487" id="8001979070726717580" nodeInfo="ng">
                <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070726717581" nodeInfo="ng">
                  <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070726717556" resolveInfo="i" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070726717582" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700908594" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403017194371_43" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700909076" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSafeAdd" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700909078" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="8001979070700928251" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700928252" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070700912634" nodeInfo="ng">
              <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070700912640" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700912644" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700912636" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700936676" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="newInsertAt" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700936674" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.ModuloExpression" typeId="mj1l.2799490600706093744" id="8001979070700936830" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700936831" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700646123" resolveInfo="QUEUESIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070700936832" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070700936833" nodeInfo="ng">
                        <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700936834" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                        </node>
                        <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700936835" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070700936836" nodeInfo="ng">
                            <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645438" resolveInfo="insertAt" />
                          </node>
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700936837" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700936838" nodeInfo="ng" />
                            <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700936839" nodeInfo="ng">
                              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="8001979070700913733" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700913734" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ContinueStatement" typeId="c4fa.8132151755547066635" id="8001979070700931458" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="8001979070700918765" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700942402" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700936676" resolveInfo="newInsertAt" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700914642" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070700933866" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700913988" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700914284" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700913746" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070700932015" nodeInfo="ng" />
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070710681017" nodeInfo="ng">
                  <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessourceNamed" typeId="6i3o.6288388922742659454" id="8001979070710706413" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="slotI" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070710706415" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070710706416" nodeInfo="ng">
                        <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070710706417" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710706418" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070710706419" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700646032" resolveInfo="data" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710706420" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710706421" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070710706422" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                          <node role="index" roleId="yq40.6282313788306893059" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070726591702" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070726607153" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645438" resolveInfo="insertAt" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070726562658" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070726577060" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070726547783" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070710681020" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070706463630" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070706463629" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700864072" resolveInfo="mpf_set" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710744055" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710749734" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncRessourceRef" typeId="6i3o.6288388922743435028" id="8001979070710739174" nodeInfo="ng">
                            <link role="syncRessource" roleId="6i3o.6288388922743435132" targetNodeId="8001979070710611289" resolveInfo="slotI" />
                          </node>
                        </node>
                        <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070706482793" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909276" resolveInfo="item" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700959501" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070700965789" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700967086" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700936676" resolveInfo="newInsertAt" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700962344" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070700964241" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645438" resolveInfo="insertAt" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700959578" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700960876" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700959500" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700909972" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.BreakStatement" typeId="c4fa.8441331188640862326" id="8001979070700969191" nodeInfo="ng" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="8001979070700929115" nodeInfo="ng" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070700908880" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700909972" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700910005" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070700911226" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070700911908" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700909276" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="item" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070700909275" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.EmptyModuleContent" typeId="x27k.8934095934011938595" id="8001979070700973547" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="empty_1403017670392_45" />
    </node>
    <node role="contents" roleId="x27k.6437088627575722833" type="x27k.Function" typeId="x27k.6437088627575724001" id="8001979070700969812" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="queueSafeGet" />
      <property name="exported" nameId="x27k.1317894735999272944" value="true" />
      <node role="body" roleId="x27k.4185783222026475860" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700969813" nodeInfo="ng">
        <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.WhileStatement" typeId="c4fa.8441331188640771826" id="8001979070700969814" nodeInfo="ng">
          <node role="body" roleId="c4fa.8441331188640771828" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700969815" nodeInfo="ng">
            <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070700969816" nodeInfo="ng">
              <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessource" typeId="6i3o.6553204290893807643" id="8001979070700969817" nodeInfo="ng">
                <node role="expression" roleId="6i3o.6553204290896504666" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700969818" nodeInfo="ng">
                  <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                </node>
              </node>
              <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700969819" nodeInfo="ng">
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070761839830" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="sleepingTime" />
                  <node role="type" roleId="mj1l.318113533128716676" type="c4fa.ArbitraryTextType" typeId="c4fa.3529929552243667340" id="8001979070761839828" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                    <node role="items" roleId="c4fa.3529929552243667342" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070761878416" nodeInfo="ng">
                      <property name="text" nameId="c4fa.3830958861296879114" value="struct timespec" />
                    </node>
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="c4fa.ArbitraryTextExpression" typeId="c4fa.3830958861296871078" id="8001979070761943571" nodeInfo="ng">
                    <node role="items" roleId="c4fa.3830958861296879115" type="c4fa.AbritraryTextItem" typeId="c4fa.3830958861296879113" id="8001979070761977452" nodeInfo="ng">
                      <property name="text" nameId="c4fa.3830958861296879114" value="(struct timespec) { .tv_nsec = 150 }" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070761762938" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="c4fa.ArbitraryFunctionCall" typeId="c4fa.3108382027639947181" id="8001979070761762936" nodeInfo="ng">
                    <property name="calledFunctionName" nameId="c4fa.3108382027639948867" value="nanosleep" />
                    <property name="requiredStdHeader" nameId="c4fa.3108382027639948845" value="&lt;time.h&gt;" />
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070762018208" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070762050925" nodeInfo="ng">
                        <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070761839830" resolveInfo="sleepingTime" />
                      </node>
                    </node>
                    <node role="arguments" roleId="c4fa.3108382027639948855" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070762116086" nodeInfo="ng">
                      <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                      <property name="value" nameId="mj1l.2212975673976043696" value="0" />
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.IfStatement" typeId="c4fa.6275792049641600983" id="8001979070700969832" nodeInfo="ng">
                  <node role="thenPart" roleId="c4fa.6275792049641600985" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070700969833" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ContinueStatement" typeId="c4fa.8132151755547066635" id="8001979070700969834" nodeInfo="ng" />
                  </node>
                  <node role="condition" roleId="c4fa.6275792049641600984" type="mj1l.EqualsExpression" typeId="mj1l.8860443239512129322" id="8001979070700969835" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701046450" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070701049295" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645438" resolveInfo="insertAt" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070701041606" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070701043936" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070701039228" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969837" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070700969838" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969839" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700969840" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700969841" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.Statement" typeId="c4fa.4185783222026464515" id="8001979070710769429" nodeInfo="ng" />
                <node role="statements" roleId="c4fa.4185783222026475862" type="6i3o.SyncStatement" typeId="6i3o.6553204290894227496" id="8001979070710762673" nodeInfo="ng">
                  <node role="ressources" roleId="6i3o.6553204290894227497" type="6i3o.SyncRessourceNamed" typeId="6i3o.6288388922742659454" id="8001979070710762674" nodeInfo="ng">
                    <property name="name" nameId="tpck.1169194664001" value="slotI" />
                    <node role="expression" roleId="6i3o.6553204290896504666" type="yq40.ReferenceExpr" typeId="yq40.1595838349830846141" id="8001979070710762675" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070710762676" nodeInfo="ng">
                        <node role="expression" roleId="mj1l.7254843406768839760" type="yq40.ArrayAccessExpr" typeId="yq40.6282313788306893057" id="8001979070710762677" nodeInfo="ng">
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710762678" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070710762679" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700646032" resolveInfo="data" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710762680" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710762681" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070710762682" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                          <node role="index" roleId="yq40.6282313788306893059" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710792698" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070710792699" nodeInfo="ng">
                              <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                            </node>
                            <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710792700" nodeInfo="ng">
                              <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710792701" nodeInfo="ng" />
                              <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070710792702" nodeInfo="ng">
                                <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="body" roleId="6i3o.6553204290894227498" type="c4fa.StatementList" typeId="c4fa.4185783222026475861" id="8001979070710762684" nodeInfo="ng">
                    <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070710762685" nodeInfo="ng">
                      <node role="expr" roleId="c4fa.7254843406768833939" type="x27k.FunctionCall" typeId="x27k.5950410542643524492" id="8001979070710762686" nodeInfo="ng">
                        <link role="function" roleId="x27k.5950410542643524493" targetNodeId="8001979070700864072" resolveInfo="mpf_set" />
                        <node role="actuals" roleId="x27k.5950410542643524495" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070710804850" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070706286715" resolveInfo="result" />
                        </node>
                        <node role="actuals" roleId="x27k.5950410542643524495" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070710762687" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070710762688" nodeInfo="ng" />
                          <node role="expression" roleId="mj1l.7254843406768839760" type="6i3o.SyncRessourceRef" typeId="6i3o.6288388922743435028" id="8001979070710762689" nodeInfo="ng">
                            <link role="syncRessource" roleId="6i3o.6288388922743435132" targetNodeId="8001979070710611289" resolveInfo="slotI" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.LocalVariableDeclaration" typeId="c4fa.4185783222026475238" id="8001979070700969820" nodeInfo="ng">
                  <property name="name" nameId="tpck.1169194664001" value="newDeleteAt" />
                  <node role="type" roleId="mj1l.318113533128716676" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070700969821" nodeInfo="ng">
                    <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
                    <property name="const" nameId="mj1l.2941277002445651368" value="false" />
                  </node>
                  <node role="init" roleId="c4fa.4185783222026502647" type="mj1l.ModuloExpression" typeId="mj1l.2799490600706093744" id="8001979070700969822" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="x27k.GlobalConstantRef" typeId="x27k.3788988821852026523" id="8001979070700969823" nodeInfo="ng">
                      <link role="constant" roleId="x27k.3376775282622611130" targetNodeId="8001979070700646123" resolveInfo="QUEUESIZE" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.ParensExpression" typeId="mj1l.5763383285156533447" id="8001979070700969824" nodeInfo="ng">
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.PlusExpression" typeId="mj1l.5763383285156373013" id="8001979070700969825" nodeInfo="ng">
                        <node role="right" roleId="mj1l.8860443239512128065" type="mj1l.NumberLiteral" typeId="mj1l.8860443239512128103" id="8001979070700969826" nodeInfo="ng">
                          <property name="unsigned" nameId="mj1l.5192961572790190887" value="false" />
                          <property name="value" nameId="mj1l.2212975673976043696" value="1" />
                        </node>
                        <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969827" nodeInfo="ng">
                          <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070701036242" nodeInfo="ng">
                            <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                          </node>
                          <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969829" nodeInfo="ng">
                            <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700969830" nodeInfo="ng" />
                            <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700969831" nodeInfo="ng">
                              <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="c4fa.ExpressionStatement" typeId="c4fa.7254843406768833938" id="8001979070700969853" nodeInfo="ng">
                  <node role="expr" roleId="c4fa.7254843406768833939" type="mj1l.AssignmentExpr" typeId="mj1l.22102029902365709" id="8001979070700969854" nodeInfo="ng">
                    <node role="right" roleId="mj1l.8860443239512128065" type="c4fa.LocalVarRef" typeId="c4fa.2093108837558113914" id="8001979070700969855" nodeInfo="ng">
                      <link role="var" roleId="c4fa.2093108837558124071" targetNodeId="8001979070700969820" resolveInfo="newDeleteAt" />
                    </node>
                    <node role="left" roleId="mj1l.8860443239512128064" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969856" nodeInfo="ng">
                      <node role="target" roleId="mj1l.7034214596252529803" type="clbe.GenericMemberRef" typeId="clbe.7034214596253391076" id="8001979070701109088" nodeInfo="ng">
                        <link role="member" roleId="clbe.7034214596253391078" targetNodeId="8001979070700645498" resolveInfo="deleteAt" />
                      </node>
                      <node role="expression" roleId="mj1l.7254843406768839760" type="mj1l.GenericDotExpression" typeId="mj1l.4620120465980402700" id="8001979070700969858" nodeInfo="ng">
                        <node role="target" roleId="mj1l.7034214596252529803" type="6i3o.SharedGet" typeId="6i3o.1924594752095502558" id="8001979070700969859" nodeInfo="ng" />
                        <node role="expression" roleId="mj1l.7254843406768839760" type="x27k.ArgumentRef" typeId="x27k.2093108837558505658" id="8001979070700969860" nodeInfo="ng">
                          <link role="arg" roleId="x27k.2093108837558505659" targetNodeId="8001979070700969864" resolveInfo="queue" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statements" roleId="c4fa.4185783222026475862" type="x27k.ReturnStatement" typeId="x27k.8967919205527146149" id="8001979070701117173" nodeInfo="ng" />
              </node>
            </node>
          </node>
          <node role="condition" roleId="c4fa.8441331188640771827" type="mj1l.TrueLiteral" typeId="mj1l.8860443239512128094" id="8001979070700969862" nodeInfo="ng" />
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070700969864" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="queue" />
        <node role="type" roleId="mj1l.318113533128716676" type="yq40.PointerType" typeId="yq40.279446265608459824" id="8001979070700969865" nodeInfo="ng">
          <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
          <property name="const" nameId="mj1l.2941277002445651368" value="false" />
          <node role="baseType" roleId="c4fa.7763322639126652758" type="6i3o.SharedType" typeId="6i3o.1924594752095321661" id="8001979070700969866" nodeInfo="ng">
            <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
            <property name="const" nameId="mj1l.2941277002445651368" value="false" />
            <node role="baseType" roleId="6i3o.1924594752095363444" type="clbe.StructType" typeId="clbe.6394819151180597816" id="8001979070700969867" nodeInfo="ng">
              <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
              <property name="const" nameId="mj1l.2941277002445651368" value="false" />
              <link role="struct" roleId="clbe.6394819151180597817" targetNodeId="8001979070700644980" resolveInfo="Queue" />
            </node>
          </node>
        </node>
      </node>
      <node role="arguments" roleId="x27k.5708867820623310661" type="x27k.Argument" typeId="x27k.7892328519581704407" id="8001979070706286715" nodeInfo="ng">
        <property name="name" nameId="tpck.1169194664001" value="result" />
        <node role="type" roleId="mj1l.318113533128716676" type="clbe.TypeDefType" typeId="clbe.6116558314501347863" id="8001979070706286714" nodeInfo="ng">
          <link role="typeDef" roleId="clbe.6116558314501347864" targetNodeId="8001979070700482292" resolveInfo="mpf_t" />
        </node>
      </node>
      <node role="type" roleId="mj1l.318113533128716676" type="mj1l.VoidType" typeId="mj1l.7892328519581699353" id="8001979070706331221" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="imports" roleId="x27k.1317894735999304826" type="vs0r.DefaultGenericChunkDependency" typeId="vs0r.747084250476811597" id="8001979070700646029" nodeInfo="ng">
      <link role="chunk" roleId="vs0r.747084250476878887" targetNodeId="8001979070700482289" resolveInfo="gmp" />
    </node>
  </root>
  <root type="mj1l.TypeSizeConfiguration" typeId="mj1l.3335993110369795380" id="8001979070702382532" nodeInfo="ng">
    <node role="pointerDiffType" roleId="mj1l.3813668170744198630" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070702382580" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="sizeTType" roleId="mj1l.8863019357864392147" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070702382581" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="vaList" roleId="mj1l.5598157691785092886" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070702382582" nodeInfo="ng">
      <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
      <property name="const" nameId="mj1l.2941277002445651368" value="false" />
    </node>
    <node role="minFloatValue" roleId="mj1l.6658270785788810330" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070702382584" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="minDoubleValue" roleId="mj1l.6658270785788810349" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070702382585" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="-1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxFloatValue" roleId="mj1l.6658270785788810029" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070702382586" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="maxDoubleValue" roleId="mj1l.6658270785788810339" type="mj1l.ScientificNumber" typeId="mj1l.1670233242589902798" id="8001979070702382587" nodeInfo="ng">
      <property name="prefix" nameId="mj1l.1670233242589904217" value="1" />
      <property name="postfix" nameId="mj1l.1670233242589904219" value="37" />
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382590" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.CharType" typeId="mj1l.1664480272136207708" id="8001979070702382588" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int8tType" typeId="mj1l.8463282783691618426" id="8001979070702382589" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382593" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.ShortType" typeId="mj1l.3335993110369949928" id="8001979070702382591" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int16tType" typeId="mj1l.8463282783691618435" id="8001979070702382592" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382596" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.IntType" typeId="mj1l.8860443239512128108" id="8001979070702382594" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070702382595" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382599" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongType" typeId="mj1l.86532984527104137" id="8001979070702382597" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int32tType" typeId="mj1l.8463282783691618440" id="8001979070702382598" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382602" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.LongLongType" typeId="mj1l.8463282783691596316" id="8001979070702382600" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.Int64tType" typeId="mj1l.8463282783691618445" id="8001979070702382601" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382605" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedCharType" typeId="mj1l.8463282783691492716" id="8001979070702382603" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt8tType" typeId="mj1l.8463282783691618461" id="8001979070702382604" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382608" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedShortType" typeId="mj1l.595416243537320771" id="8001979070702382606" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt16tType" typeId="mj1l.8463282783691618466" id="8001979070702382607" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382611" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedIntType" typeId="mj1l.8463282783691492730" id="8001979070702382609" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070702382610" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382614" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongType" typeId="mj1l.8463282783691596310" id="8001979070702382612" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt32tType" typeId="mj1l.8463282783691618450" id="8001979070702382613" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="specifications" roleId="mj1l.3335993110369805710" type="mj1l.TypeSizeSpecification" typeId="mj1l.3335993110369795381" id="8001979070702382617" nodeInfo="ng">
      <property name="exists" nameId="mj1l.3335993110370236888" value="true" />
      <node role="basicType" roleId="mj1l.7496733358578231498" type="mj1l.UnsignedLongLongType" typeId="mj1l.8463282783691618471" id="8001979070702382615" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="c99Type" roleId="mj1l.7496733358578231499" type="mj1l.UnsignedInt64tType" typeId="mj1l.8463282783691618456" id="8001979070702382616" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070702382620" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="8001979070702382618" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.FloatType" typeId="mj1l.4739982148980385695" id="8001979070702382619" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070702382623" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070702382621" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.DoubleType" typeId="mj1l.8864856114140038681" id="8001979070702382622" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" roleId="mj1l.9149785691755067704" type="mj1l.IEEE754TypeSizeSpecification" typeId="mj1l.9149785691755093694" id="8001979070702382626" nodeInfo="ng">
      <property name="exists" nameId="mj1l.9149785691755093695" value="true" />
      <node role="basicType" roleId="mj1l.9149785691755093697" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="8001979070702382624" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
      <node role="ieee754Type" roleId="mj1l.9149785691755093698" type="mj1l.LongDoubleType" typeId="mj1l.9149785691754701072" id="8001979070702382625" nodeInfo="ng">
        <property name="volatile" nameId="mj1l.2941277002448691247" value="false" />
        <property name="const" nameId="mj1l.2941277002445651368" value="false" />
      </node>
    </node>
  </root>
  <root type="51wr.BuildConfiguration" typeId="51wr.7717755763392524104" id="8001979070702383785" nodeInfo="ng">
    <node role="binaries" roleId="51wr.5046689135694070731" type="51wr.Executable" typeId="51wr.5046689135693761554" id="8001979070702383793" nodeInfo="ng">
      <property name="name" nameId="tpck.1169194664001" value="pi" />
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="8001979070702383796" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="8001979070700482289" resolveInfo="gmp" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="8001979070702383801" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="8001979070700482069" resolveInfo="pi" />
      </node>
      <node role="referencedModules" roleId="51wr.5046689135693761559" type="51wr.ModuleRef" typeId="51wr.7717755763392524107" id="8001979070702383808" nodeInfo="ng">
        <link role="module" roleId="51wr.7717755763392524108" targetNodeId="8001979070700644525" resolveInfo="queue" />
      </node>
    </node>
    <node role="target" roleId="51wr.5323740605968447026" type="51wr.DesktopPlatform" typeId="51wr.5323740605968447022" id="8001979070702383788" nodeInfo="ng">
      <property name="compiler" nameId="51wr.5323740605968447024" value="gcc" />
      <property name="compilerOptions" nameId="51wr.5323740605968447025" value="-std=c99" />
      <property name="debugOptions" nameId="51wr.2736179788492003937" value="-g" />
    </node>
    <node role="configurationItems" roleId="vs0r.4459718605982007338" type="k146.ReportingConfiguration" typeId="k146.4459718605982051949" id="8001979070702921969" nodeInfo="ng">
      <node role="strategy" roleId="k146.4459718605982051999" type="k146.PrintfReportingStrategy" typeId="k146.4459718605982051980" id="8001979070702921970" nodeInfo="ng" />
    </node>
  </root>
</model>


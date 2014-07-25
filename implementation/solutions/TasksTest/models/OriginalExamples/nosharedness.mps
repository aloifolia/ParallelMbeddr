<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:16012a7d-feb4-451f-acb3-ce59d159c0b8(OriginalExamples.nosharedness)">
  <persistence version="8" />
  <devkit namespace="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  <root type=".com.mbeddr.core.buildconfig.structure.BuildConfiguration" id="5402960089350644843" nodeInfo="ng">
    <node role="target" type=".com.mbeddr.core.buildconfig.structure.DesktopPlatform" id="5402960089350645792" nodeInfo="ng">
      <property name="compiler" value="gcc" />
      <property name="compilerOptions" value="-std=c99" />
      <property name="debugOptions" value="-g" />
    </node>
    <node role="configurationItems" type=".com.mbeddr.core.util.structure.ReportingConfiguration" id="5402960089350645794" nodeInfo="ng">
      <node role="strategy" type=".com.mbeddr.core.util.structure.PrintfReportingStrategy" id="5402960089350645795" nodeInfo="ng" />
    </node>
    <node role="binaries" type=".com.mbeddr.core.buildconfig.structure.Executable" id="5402960089350645798" nodeInfo="ng">
      <property name="name" value="sdf" />
      <node role="referencedModules" type=".com.mbeddr.core.buildconfig.structure.ModuleRef" id="5402960089350650005" nodeInfo="ng">
        <link role="module" targetNodeId="5402960089350645229" resolveInfo="first" />
      </node>
      <node role="referencedModules" type=".com.mbeddr.core.buildconfig.structure.ModuleRef" id="5402960089350650753" nodeInfo="ng">
        <link role="module" targetNodeId="5402960089350649681" resolveInfo="second" />
      </node>
    </node>
  </root>
  <root type=".com.mbeddr.core.expressions.structure.TypeSizeConfiguration" id="5402960089350644959" nodeInfo="ng">
    <node role="pointerDiffType" type=".com.mbeddr.core.expressions.structure.UnsignedInt32tType" id="5402960089350644960" nodeInfo="ng">
      <property name="volatile" value="false" />
      <property name="const" value="false" />
    </node>
    <node role="sizeTType" type=".com.mbeddr.core.expressions.structure.UnsignedInt32tType" id="5402960089350644961" nodeInfo="ng">
      <property name="volatile" value="false" />
      <property name="const" value="false" />
    </node>
    <node role="vaList" type=".com.mbeddr.core.expressions.structure.UnsignedInt32tType" id="5402960089350644962" nodeInfo="ng">
      <property name="volatile" value="false" />
      <property name="const" value="false" />
    </node>
    <node role="minFloatValue" type=".com.mbeddr.core.expressions.structure.ScientificNumber" id="5402960089350644964" nodeInfo="ng">
      <property name="prefix" value="-1" />
      <property name="postfix" value="37" />
    </node>
    <node role="minDoubleValue" type=".com.mbeddr.core.expressions.structure.ScientificNumber" id="5402960089350644965" nodeInfo="ng">
      <property name="prefix" value="-1" />
      <property name="postfix" value="37" />
    </node>
    <node role="maxFloatValue" type=".com.mbeddr.core.expressions.structure.ScientificNumber" id="5402960089350644966" nodeInfo="ng">
      <property name="prefix" value="1" />
      <property name="postfix" value="37" />
    </node>
    <node role="maxDoubleValue" type=".com.mbeddr.core.expressions.structure.ScientificNumber" id="5402960089350644967" nodeInfo="ng">
      <property name="prefix" value="1" />
      <property name="postfix" value="37" />
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644970" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.CharType" id="5402960089350644968" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.Int8tType" id="5402960089350644969" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644973" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.ShortType" id="5402960089350644971" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.Int16tType" id="5402960089350644972" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644976" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.IntType" id="5402960089350644974" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350644975" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644979" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.LongType" id="5402960089350644977" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350644978" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644982" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.LongLongType" id="5402960089350644980" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.Int64tType" id="5402960089350644981" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644985" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.UnsignedCharType" id="5402960089350644983" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.UnsignedInt8tType" id="5402960089350644984" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644988" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.UnsignedShortType" id="5402960089350644986" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.UnsignedInt16tType" id="5402960089350644987" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644991" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.UnsignedIntType" id="5402960089350644989" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.UnsignedInt32tType" id="5402960089350644990" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644994" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.UnsignedLongType" id="5402960089350644992" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.UnsignedInt32tType" id="5402960089350644993" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="specifications" type=".com.mbeddr.core.expressions.structure.TypeSizeSpecification" id="5402960089350644997" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.UnsignedLongLongType" id="5402960089350644995" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="c99Type" type=".com.mbeddr.core.expressions.structure.UnsignedInt64tType" id="5402960089350644996" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" type=".com.mbeddr.core.expressions.structure.IEEE754TypeSizeSpecification" id="5402960089350645000" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.FloatType" id="5402960089350644998" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="ieee754Type" type=".com.mbeddr.core.expressions.structure.FloatType" id="5402960089350644999" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" type=".com.mbeddr.core.expressions.structure.IEEE754TypeSizeSpecification" id="5402960089350645003" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.DoubleType" id="5402960089350645001" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="ieee754Type" type=".com.mbeddr.core.expressions.structure.DoubleType" id="5402960089350645002" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
    <node role="ieee754Specifications" type=".com.mbeddr.core.expressions.structure.IEEE754TypeSizeSpecification" id="5402960089350645006" nodeInfo="ng">
      <property name="exists" value="true" />
      <node role="basicType" type=".com.mbeddr.core.expressions.structure.LongDoubleType" id="5402960089350645004" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="ieee754Type" type=".com.mbeddr.core.expressions.structure.LongDoubleType" id="5402960089350645005" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
    </node>
  </root>
  <root type=".com.mbeddr.core.modules.structure.ImplementationModule" id="5402960089350645229" nodeInfo="ng">
    <property name="name" value="first" />
    <node role="contents" type=".com.mbeddr.core.modules.structure.Function" id="5402960089350645230" nodeInfo="ng">
      <property name="name" value="main" />
      <property name="exported" value="true" />
      <node role="body" type=".com.mbeddr.core.statements.structure.StatementList" id="5402960089350645232" nodeInfo="ng">
        <node role="statements" type=".com.mbeddr.core.statements.structure.Statement" id="5402960089350645233" nodeInfo="ng" />
        <node role="statements" type=".com.mbeddr.core.modules.structure.ReturnStatement" id="5402960089350645240" nodeInfo="ng">
          <node role="expression" type=".com.mbeddr.core.expressions.structure.NumberLiteral" id="5402960089350645241" nodeInfo="ng">
            <property name="unsigned" value="false" />
            <property name="value" value="0" />
          </node>
        </node>
      </node>
      <node role="type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350645234" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="arguments" type=".com.mbeddr.core.modules.structure.Argument" id="5402960089350645235" nodeInfo="ng">
        <property name="name" value="argc" />
        <node role="type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350645236" nodeInfo="ng">
          <property name="volatile" value="false" />
          <property name="const" value="false" />
        </node>
      </node>
      <node role="arguments" type=".com.mbeddr.core.modules.structure.Argument" id="5402960089350645237" nodeInfo="ng">
        <property name="name" value="argv" />
        <node role="type" type=".com.mbeddr.core.pointers.structure.ArrayType" id="5402960089350645238" nodeInfo="ng">
          <property name="volatile" value="false" />
          <property name="const" value="false" />
          <node role="baseType" type=".com.mbeddr.core.pointers.structure.StringType" id="5402960089350645239" nodeInfo="ng">
            <property name="volatile" value="false" />
            <property name="const" value="false" />
          </node>
        </node>
      </node>
    </node>
  </root>
  <root type=".com.mbeddr.core.modules.structure.ImplementationModule" id="5402960089350649681" nodeInfo="ng">
    <property name="name" value="second" />
    <node role="contents" type=".com.mbeddr.core.modules.structure.Function" id="5402960089350649682" nodeInfo="ng">
      <property name="name" value="main" />
      <property name="exported" value="true" />
      <node role="body" type=".com.mbeddr.core.statements.structure.StatementList" id="5402960089350649684" nodeInfo="ng">
        <node role="statements" type=".com.mbeddr.core.statements.structure.Statement" id="5402960089350649685" nodeInfo="ng" />
        <node role="statements" type=".com.mbeddr.core.modules.structure.ReturnStatement" id="5402960089350649692" nodeInfo="ng">
          <node role="expression" type=".com.mbeddr.core.expressions.structure.NumberLiteral" id="5402960089350649693" nodeInfo="ng">
            <property name="unsigned" value="false" />
            <property name="value" value="0" />
          </node>
        </node>
      </node>
      <node role="type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350649686" nodeInfo="ng">
        <property name="volatile" value="false" />
        <property name="const" value="false" />
      </node>
      <node role="arguments" type=".com.mbeddr.core.modules.structure.Argument" id="5402960089350649687" nodeInfo="ng">
        <property name="name" value="argc" />
        <node role="type" type=".com.mbeddr.core.expressions.structure.Int32tType" id="5402960089350649688" nodeInfo="ng">
          <property name="volatile" value="false" />
          <property name="const" value="false" />
        </node>
      </node>
      <node role="arguments" type=".com.mbeddr.core.modules.structure.Argument" id="5402960089350649689" nodeInfo="ng">
        <property name="name" value="argv" />
        <node role="type" type=".com.mbeddr.core.pointers.structure.ArrayType" id="5402960089350649690" nodeInfo="ng">
          <property name="volatile" value="false" />
          <property name="const" value="false" />
          <node role="baseType" type=".com.mbeddr.core.pointers.structure.StringType" id="5402960089350649691" nodeInfo="ng">
            <property name="volatile" value="false" />
            <property name="const" value="false" />
          </node>
        </node>
      </node>
    </node>
  </root>
</model>


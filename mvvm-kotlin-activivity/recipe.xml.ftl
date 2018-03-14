<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.kt" />

    <instantiate from="src/app_package/classes/Component.kt.ftl"
      to="${escapeXmlAttribute(manifestOut)}/java/${slashedPackageName(appPackageName)}/di/component/${activityClass}SubComponent.kt" />

    <instantiate from="src/app_package/classes/Module.kt.ftl"
      to="${escapeXmlAttribute(manifestOut)}/java/${slashedPackageName(appPackageName)}/di/module/${activityClass}Module.kt" />

    <instantiate from="src/app_package/classes/ViewModel.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.kt" />

</recipe>

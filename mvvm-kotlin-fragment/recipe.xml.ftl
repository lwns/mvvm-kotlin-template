<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <#include "activity_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Fragment.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}Fragment.kt" />

    <instantiate from="src/app_package/classes/ViewModel.kt.ftl"
      to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.kt" />

</recipe>

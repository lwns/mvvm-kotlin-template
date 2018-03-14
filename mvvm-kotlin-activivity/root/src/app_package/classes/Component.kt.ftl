package ${appPackageName}.di.component

import ${packageName}.${activityClass}Activity
import dagger.Subcomponent
import dagger.android.AndroidInjector

/** 
 * @author: tangpeng.yang
 * @date:
 * Description: 
 * FIXME 
 */  
@Subcomponent()
interface ${activityClass}SubComponent : AndroidInjector<${activityClass}Activity> {
    @Subcomponent.Builder
    abstract class Builder : AndroidInjector.Builder<${activityClass}Activity>()

}



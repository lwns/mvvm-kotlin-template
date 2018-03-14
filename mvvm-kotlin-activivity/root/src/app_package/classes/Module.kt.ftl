package ${appPackageName}.di.module

import android.app.Activity
import ${appPackageName}.di.component.${activityClass}SubComponent
import ${packageName}.${activityClass}Activity
import dagger.Binds
import dagger.Module
import dagger.android.ActivityKey
import dagger.android.AndroidInjector
import dagger.android.ContributesAndroidInjector
import dagger.multibindings.IntoMap

/** 
 * @author: tangpeng.yang
 * @date:
 * Description: 
 * FIXME 
 */  
@Module(subcomponents = arrayOf(${activityClass}SubComponent::class))
abstract class ${activityClass}Module {
    @Binds
    @IntoMap
    @ActivityKey(${activityClass}Activity::class)
    internal abstract fun bindYourActivityInjectorFactory(
            builder: ${activityClass}SubComponent.Builder): AndroidInjector.Factory<out Activity>

}


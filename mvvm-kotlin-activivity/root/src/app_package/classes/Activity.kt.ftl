package ${packageName}

import android.content.Context
import android.content.Intent
import ${appPackageName}.BR
import ${appPackageName}.R
import com.op.core.res.annotation.BeforeView
import com.op.core.res.annotation.RootView
import com.op.core.res.base.BActivity
import dagger.android.AndroidInjection

/** 
 * @author: tangpeng.yang
 * @date:
 * Description: 
 * FIXME 
 */ 
@RootView(variable = BR.viewModel, layout = R.layout.act_${activityClass?lower_case})
class ${activityClass}Activity : BActivity<${activityClass}ViewModel,Act${activityClass}Binding>() {
    
    companion object {
        fun instance(context: Context) {
            context.startActivity(Intent(context, ${activityClass}Activity::class.java))
        }
    }

    @BeforeView
    fun beforeView() {
        AndroidInjection.inject(this)
    }
    
}


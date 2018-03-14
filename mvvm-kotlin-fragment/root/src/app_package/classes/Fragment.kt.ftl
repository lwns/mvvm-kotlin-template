package ${packageName}

import ${appPackageName}.BR
import ${appPackageName}.R
import ${appPackageName}.databinding.Frg${activityClass}Binding;
import com.op.core.res.Injectable
import com.op.core.res.annotation.RootView
import com.op.core.res.base.BFragment

/** 
 * @author: tangpeng.yang
 * @date:
 * Description: 
 * FIXME 
 */ 
@RootView(variable = BR.viewModel, layout = R.layout.frg_${activityClass?lower_case})
class ${activityClass}Fragment : BFragment<${activityClass}ViewModel, Frg${activityClass}Binding>(), Injectable {

    companion object {
        fun instance(): ${activityClass}Fragment = ${activityClass}Fragment()
    }

}

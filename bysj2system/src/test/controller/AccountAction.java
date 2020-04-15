package test.controller;




import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import test.dao.AccountMapper;
import test.entry.Account;
import java.util.List;





@Controller
public class AccountAction {
	@Autowired
	AccountMapper accountMapper;
	
	@RequestMapping(value="account.do",method=RequestMethod.POST, params ="flag=login" )
public String login(ModelMap modelMap,Model model,Account account,HttpServletRequest request) {
		System.out.println("这里是登录ACCOUNT"+account);
	Account av=accountMapper.login(account);
	System.out.println("这里是数据库返回的ACCOUNT"+av);
	if(av!=null) {
		modelMap.put("message", "登陆成功");
		request.getSession().setAttribute("namea", av.getRealname());
		request.getSession().setAttribute("cons", av.getRoleid());
		List<Account> SelectAll = accountMapper.selectAll();
		modelMap.put("list",SelectAll);
		System.out.println("这里！！！！！"+SelectAll);
		return "jsp/detail";
	}else {
		modelMap.put("message", "登录失败");
		return "index";
	}
}
	//跳转注册页面
	@RequestMapping(value="account.do",method=RequestMethod.POST, params ="flag=registershow" )
	public String registershow() {
		return "jsp/add";
}
	//跳转登录页面
		@RequestMapping(value="account.do",method=RequestMethod.POST, params ="flag=loginshow" )
		public String loginshow() {
			return "index";
	}
	//注册
	@RequestMapping(value="register.do",method=RequestMethod.POST, params ="flag=register" )
public String register(ModelMap modelMap,Account account,HttpServletRequest request) {
		System.out.println("这里是注册！！！！！！！！！！！"+account);
	int a=accountMapper.insert(account);
	if(a==1) {
		modelMap.put("message", "注册成功");
		return "index";
	}else {
		modelMap.put("message", "注册失败");
		return "add";
	}
		
}

	//把返回的角色list集合封装到model对象中
//	@ModelAttribute(value="listAccountSelectAll")
//	public List<Account> selectAll(){
//		List<Account> listAccountSelectAll = accountMapper.selectAll();
//		//模拟下拉框
//		return listAccountSelectAll;
//	}
//	//删除操作
//	@RequestMapping(value="account.do",params ="flag=delectaccount" )
//	public String delete(ModelMap modelMap,Account account,Model model,HttpServletRequest request) {
//		System.out.println("这里是删除的Account"+account);
//		if(accountMapper.delete(account.getAccountid())==1) {
//			modelMap.put("message", "删除成功");
//			return selectaccount(modelMap,request);
//		}else {
//			modelMap.put("message", "删除失败");
//			return selectaccount(modelMap,request);
//		}
//	}
	//查询所有
	@RequestMapping(value="account.do", params ="flag=selectAll" )
	public String selectaccount(ModelMap modelMap,HttpServletRequest request) {
		List<Account> listAccountSelectAll = accountMapper.selectAll();
		modelMap.put("list",listAccountSelectAll);
		System.out.println("这里！！！！！"+listAccountSelectAll);
		return "jsp/detail";
	}
//	//跳转修改页面
//	@RequestMapping(value="account.do",params ="flag=updateshow" )
//	public String updateshow(ModelMap modelMap,Model model,Account account,HttpServletRequest request) {
//			Account listAccountSelectAll = accountMapper.selectByPrimaryKey(account.getAccountid());
//			 SimpleDateFormat format0 = new SimpleDateFormat("yyyy-MM-dd");
//			 modelMap.put("accountbirthday", format0.format(listAccountSelectAll.getAccountbirthday()));
//			System.out.println("这是修改的ACCOUNT"+listAccountSelectAll);
//			modelMap.put("account",listAccountSelectAll);
//			return "jsp/detail";
//		}
//	//修改方法
//	@RequestMapping(value="account.do",params ="flag=update" )
//	public String updateaccount(ModelMap modelMap,Model model,Account account,HttpServletRequest request) {
//		System.out.println("这是修改的ACCOUNT"+account);
//			if(accountMapper.updateByPrimaryKeySelective(account)==1) {
//				modelMap.put("message", "修改成功");
//				return selectaccount(modelMap,request);
//			}else {
//				modelMap.put("message", "修改失败");
//				return "jsp/detail";
//			}
//		}
//	//模糊查询
//	@RequestMapping(value="account.do",params ="flag=selectByKey" )
//	public String selectaccountKey(ModelMap modelMap,String key,int statusvalue,HttpServletRequest request) {
//			List<Account> list = accountMapper.selectKey(key, statusvalue);
//			System.out.println("这里模糊查询！！！！！！ "+list);
//			modelMap.put("list",list);
//				return "jsp/query";
//		}
//	//查用户名是否重复
////	@RequestMapping(value="account.do",params ="flag=chackAccountName" )
////	public @ResponseBody String checkaccountName(ModelMap modelMap,String accountname,HttpServletRequest request) {
////			System.out.println("这是查询用户名的Account"+accountname);
////			Account ac=accountMapper.checkName(accountname);
////		if(ac==null) {
////				return "ok";
////			}else {
////				return "ng";
////			}
////		}
//	//批量操作——删除
//	@RequestMapping(value="account.do" ,params ="flag=delectAll" )
//	public String selectData(ModelMap modelMap,HttpServletRequest request,@RequestParam(value="ck")String[] accountid){
//		int a=accountMapper.delectlist(accountid);
//		if(a==1) {
//			modelMap.put("message", "批量删除失败");
//			return selectaccount(modelMap,request);
//		}else {
//			modelMap.put("message", "批量删除成功");
//			return selectaccount(modelMap,request);
//		}
//	}
}

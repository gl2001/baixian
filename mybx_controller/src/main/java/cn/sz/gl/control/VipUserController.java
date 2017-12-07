package cn.sz.gl.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.sz.gl.pojo.VipUser;
import cn.sz.gl.service.IVipUserService;

@Controller
@RequestMapping("vuc")
public class VipUserController {

	@Resource(name="vipUserServiceImpl")
	private IVipUserService vipuserService;
	
	@RequestMapping(value="prelogin")
	public String preloign(){
		return "front/login";
	}
	
	@RequestMapping(value="islogin",method=RequestMethod.POST)
	public String islogin(VipUser vipuser,HttpSession session){
		
		VipUser vu = vipuserService.islogin(vipuser);
		if(vu==null){
			return "redirect:/vuc/prelogin";
		}
		session.setAttribute("vipuser", vu);
		return "forward:/firstpage";
	}
	
}

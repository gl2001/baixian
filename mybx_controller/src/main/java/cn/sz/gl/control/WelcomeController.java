package cn.sz.gl.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.sz.gl.pojo.Emp;
import cn.sz.gl.pojo.Menu;
import cn.sz.gl.pojo.TurnImage;
import cn.sz.gl.service.IMenuService;
import cn.sz.gl.service.ITurnImageService;

@Controller
@RequestMapping("/")
public class WelcomeController {

	@Autowired
	private IMenuService menubiz;
	@Autowired
	private ITurnImageService turnimagebiz;
	
	@RequestMapping(value="/")
	public String welcome(Model model){
		System.out.println("welcome...");
		//�����ѯ����ҳ������Ҫ�����е�����
		
		List<Menu> menulist = menubiz.findAllMenu();
		model.addAttribute("menulist", menulist);
		
		
		Emp emp = new Emp();
		
		
		return "front/main";
	}
	
	
	@RequestMapping(value="firstpage")
	public String firstpage(Model model){
		List<TurnImage> turnlist = turnimagebiz.findShowImage();
		model.addAttribute("turnlist", turnlist);
		return "front/firstpage";
	}
	
	
	@RequestMapping(value="enterVipCenter")
	public String enterVipCenter(){
		return "front/vipcenter/vipuser_baseinfo";
	}
	
	
	
	
}

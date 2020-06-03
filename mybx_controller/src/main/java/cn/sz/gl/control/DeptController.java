package cn.sz.gl.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("dc")
public class DeptController {

	@RequestMapping("sh")
	public String show() {
		return "welcome";
	}
}

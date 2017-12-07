package cn.sz.gl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sz.gl.dao.IMenuDAO;
import cn.sz.gl.pojo.Menu;
import cn.sz.gl.service.IMenuService;
@Service
public class MenuServiceImpl implements IMenuService {

	@Autowired
	private IMenuDAO menudao;
	
	public List<Menu> findAllMenu() {
		return menudao.findAllMenu();
	}

}

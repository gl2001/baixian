package cn.sz.gl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sz.gl.dao.ITurnImageDAO;
import cn.sz.gl.pojo.TurnImage;
import cn.sz.gl.service.ITurnImageService;
@Service
public class TurnImageServiceImpl implements ITurnImageService {

	@Autowired
	private ITurnImageDAO turnImagedao;
	
	public List<TurnImage> findShowImage() {
		return turnImagedao.findShowImage();
	}

}

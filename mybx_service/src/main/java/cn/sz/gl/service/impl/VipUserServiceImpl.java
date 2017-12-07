package cn.sz.gl.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sz.gl.dao.IVipUserDAO;
import cn.sz.gl.pojo.VipUser;
import cn.sz.gl.service.IVipUserService;
@Service
public class VipUserServiceImpl implements IVipUserService {

	@Resource(type=IVipUserDAO.class)
	private IVipUserDAO vipuserdao;
	
	public VipUser islogin(VipUser vipuser) {
		if(vipuser==null||vipuser.getLoginname()==null||vipuser.getLoginpwd()==null){
			return null;
		}
		return vipuserdao.islogin(vipuser);
	}

}
